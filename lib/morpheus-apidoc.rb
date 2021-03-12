require "./lib/morpheus-apidoc/version"

if defined?(Rake)
  Rake.add_rakelib(File.expand_path('../morpheus-apidoc/tasks', __FILE__))
end
