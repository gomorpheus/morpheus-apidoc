# Custom morpheus rake tasks
require 'lib/morpheus-apidoc'
# Unique header generation
require './lib/unique_head.rb'

# Markdown
set :markdown_engine, :redcarpet
set :markdown,
    fenced_code_blocks: true,
    smartypants: true,
    disable_indented_code_blocks: true,
    prettify: true,
    strikethrough: true,
    tables: true,
    with_toc_data: true,
    no_intra_emphasis: true,
    renderer: UniqueHeadCounter

# Assets
set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :fonts_dir, 'fonts'

# Activate the syntax highlighter
activate :syntax
ready do
  require './lib/monokai_sublime_slate.rb'
  require './lib/multilang.rb'
end

activate :sprockets

activate :autoprefixer do |config|
  config.browsers = ['last 2 version', 'Firefox ESR']
  config.cascade  = false
  config.inline   = true
end

# Github pages require relative links
activate :relative_assets
set :relative_links, true

# Build Configuration
configure :build do
  # We do want to hash woff and woff2 as there's a bug where woff2 will use
  # woff asset hash which breaks things. Trying to use a combination of ignore and
  # rewrite_ignore does not work as it conflicts weirdly with relative_assets. Disabling
  # the .woff2 extension only does not work as .woff will still activate it so have to
  # have both. See https://github.com/slatedocs/slate/issues/1171 for more details.
  activate :asset_hash, :exts => app.config[:asset_extensions] - %w[.woff .woff2]
  # If you're having trouble with Middleman hanging, commenting
  # out the following two lines has been known to help
  activate :minify_css
  activate :minify_javascript
  # activate :gzip
end

########################################
# Morpheus API Documentation Settings
# To rebrand this site, create a file called whitelabel_config.rb 
# and override the settings below.

# The title of the site
set :title, "Morpheus API Documentation"

# The title above the left hand navigation
set :nav_title, "MORPHEUS API"

# The name of the application
set :application_name, "Morpheus"

# The company name
set :company_name, "Morpheus Data"

# The company homepage (marketing site)
set :company_website, "https://www.morpheusdata.com"

# A domain to use in example email addresses, etc.
set :company_domain, "morpheusdata.com"

# The base url used to document each HTTP Request path
# set :api_url, "https://api.morpheusdata.com"
set :api_url, "$serverUrl"

# The URL value to use in the shell curl examples, just a variable name
set :curl_url, "$serverUrl"

# The API Token used in shell examples (curl), never a real valid token of course
set :curl_token, "$accessToken"

# The logo in the header
set :logo_path, "logo-white.svg"

# The logo in the header when printing
set :print_logo_path, "logo.svg"

# The logo in the footer
set :footer_logo_path, "logo_footer.svg"

# The favicon
set :favicon_path, "favicon.png"

# The Morpheus Hub URL (not really whitelabel ready this point, do not include setup doc)
set :hub_url, "https://morpheushub.com"

# Load custom settings from whitelabel_config.rb
whitelabel_fn = "whitelabel_config.rb"
if File.exists?(whitelabel_fn)
  puts "Loading #{whitelabel_fn}..."
  # load(whitelabel_fn)
  eval(File.read(whitelabel_fn))
end

# Deploy Configuration
# If you want Middleman to listen on a different port, you can set that below
set :port, 4567

helpers do
  require './lib/toc_data.rb'
end
