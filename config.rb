require './lib/morpheus-apidoc.rb'

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
# For whitelabeling, adjust these to match your service.
#
# Some documents still refer to Morpheus
# * [Programming Languages](#programming-languages) The CLI and SDKs all refer to morpheus of course.
# * [Setup](#setup) refers to the Morpheus Hub, but setup is unlikely needed for your whitelabel API documentation.
# 
# To remove these, modify source/index.md.erb to comment out the following includes:
# - programming_languages
# - setup
#
# Caveats:
# The Morpheus API does still refer to 'morpheus' in several ways.
# * Type codes, Default image codes, and other things of that nature.
#   example: "type": "morpheus" is the default for both Blueprint and Cloud (Zone)
# * Authentication Client IDs: the string `morph-` is always used as client prefix. 
#   example: "client_id": "morph-api" is required for authentication.
# Future versions of the Morpheus appliance may address these issues.
#

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
set :example_domain, "gomorpheus.com"

# The API URL used in the HTTP Request paths to document each api endpoint.
set :api_url, "https://api.gomorpheus.com"

# The API URL used in shell examples (curl)
set :shell_url, "$MORPHEUS_API_URL"

# The API Token used in shell examples (curl)
set :shell_token, "$MORPHEUS_API_TOKEN"

# The name of the API URL environment variable
set :api_url_evar, "MORPHEUS_API_URL"

# The name of the API token environment variable
set :api_token_evar, "MORPHEUS_API_TOKEN"

# The logo in the header
set :logo_path, "logo-white.svg"

# The logo in the header when printing
set :print_logo_path, "logo.svg"

# The logo in the footer
set :footer_logo_path, "morpheus_logo_footer.svg"

# The favicon
set :favicon_path, "images/morpheus_fav_64.png"
