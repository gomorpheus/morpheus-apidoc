require "fileutils"
require "tmpdir"

def remote_name
  ENV.fetch("REMOTE_NAME", "origin")
end

# the public task copies the build files and commits them to this branch
def build_branch
  ENV.fetch("BUILD_BRANCH", "latest-build")
end

def uncommitted_changes?
  `git status --porcelain`.chomp.length > 0
end

#JD: maybe get rid of all this eh?
def backup_and_restore(dir, file, &block)
  return yield unless File.exist?(File.join(dir, file))

  Dir.mktmpdir do |tmpdir|
    mv File.join(dir, file), tmpdir
    yield
    mv File.join(tmpdir, file), dir
  end
end

PROJECT_ROOT = ENV.fetch("PROJECT_ROOT", `git rev-parse --show-toplevel`.chomp)
BUILD_DIR    = ENV.fetch("BUILD_DIR", File.join(PROJECT_ROOT, "build"))
BUILD_BRANCH_REF = File.join(BUILD_DIR, ".git/refs/remotes/#{remote_name}/#{build_branch}")

directory BUILD_DIR

file BUILD_BRANCH_REF => BUILD_DIR do
  repo_url = nil

  cd PROJECT_ROOT do
    repo_url = `git config --get remote.#{remote_name}.url`.chomp
  end

  cd BUILD_DIR do
    sh "git init"
    sh "git remote add #{remote_name} #{repo_url}"
    sh "git fetch #{remote_name} #{build_branch}"

    if `git branch -r` =~ /#{build_branch}/
      sh "git checkout #{build_branch}"
    else
      sh "git checkout --orphan #{build_branch}"
      FileUtils.touch("index.html")
      sh "git add ."
      sh "git commit -m \"initial commit via rake publish task\""
      sh "git push #{remote_name} #{build_branch}"
    end
  end
end

# Alias to something meaningful
task :prepare_build_dir => BUILD_BRANCH_REF

# Fetch upstream changes on release branch
task :sync_build_dir => :prepare_build_dir do
  cd BUILD_DIR do
    sh "git fetch #{remote_name} #{build_branch}"
    sh "git reset --hard #{remote_name}/#{build_branch}"
  end
end

# Prevent accidental publishing before committing changes
task :prevent_dirty_builds do
  if uncommitted_changes?
    puts "*** WARNING: You currently have uncommitted changes. ***"
    fail "Build aborted, because project directory is not clean." unless ENV["ALLOW_DIRTY"]
  end
end

desc "Compile all files into the build directory"
task :build do
  backup_and_restore(BUILD_DIR, ".git") do
    cd PROJECT_ROOT do
      sh "bundle exec middleman build --clean --instrument"
    end
  end
end

#desc "Build and publish to production https://apidocs.morpheusdata.com"
desc "Build and publish to release branch '#{build_branch}'"
task :publish => [:prevent_dirty_builds, :sync_build_dir, :build] do
  message = nil
  suffix = ENV["COMMIT_MESSAGE_SUFFIX"]

  cd PROJECT_ROOT do
    head = `git log --pretty="%h" -n1`.chomp
    message = ["Site updated to #{head}", suffix].compact.join("\n\n")
  end

  cd BUILD_DIR do
    sh "git add --all"
    if uncommitted_changes?
      sh "git commit -m \"#{message}\""
    else
      puts "No changes to commit."
    end
    sh "git push #{remote_name} #{build_branch}"
  end
end

