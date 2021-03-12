require 'lib/morpheus-apidoc'

# Markdown
set :markdown_engine, :redcarpet
set :markdown,
    fenced_code_blocks: true,
    smartypants: true,
    disable_indented_code_blocks: true,
    prettify: true,
    tables: true,
    with_toc_data: true,
    no_intra_emphasis: true

# Assets
set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :fonts_dir, 'fonts'

# Activate the syntax highlighter
activate :syntax

# Github pages require relative links
activate :relative_assets
set :relative_links, true

# Build Configuration
configure :build do
  activate :minify_css
  activate :minify_javascript
  # activate :relative_assets
  # activate :asset_hash
  # activate :gzip
end



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

# The base url used to document each HTTP Request path and used in shell examples
set :api_url, "https://api.morpheusdata.com"

# The API Token used in shell examples (curl), never a real valid token of course
set :api_token, "********-****-****-****-************"

# The logo in the header
set :logo_path, "logo-white.svg"

# The logo in the header when printing
set :print_logo_path, "logo.svg"

# The logo in the footer
set :footer_logo_path, "logo_footer.svg"

# The favicon
set :favicon_path, "favicon.png"


# Load custom settings from whitelabel_config.rb
whitelabel_fn = "whitelabel_config.rb"
if File.exists?(whitelabel_fn)
  puts "Loading #{whitelabel_fn}..."
  load(whitelabel_fn)
end
