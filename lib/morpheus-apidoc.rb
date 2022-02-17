require "./lib/morpheus-apidoc/version"
require "./lib/morpheus-apidoc/variables"

if defined?(Rake)
  Rake.add_rakelib(File.expand_path('../morpheus-apidoc/tasks', __FILE__))
end
