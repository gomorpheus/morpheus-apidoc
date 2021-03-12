<img src="https://morpheusdata.com/wp-content/uploads/2020/04/morpheus-logo-v2.svg" width="200px">

Morpheus API Documentation
========

The Morpheus API Documentation is built on the [Slate](https://github.com/slatedocs/slate) framework. 

The latest published documentation can be viewed at [https://apidocs.morpheusdata.com](https://apidocs.morpheusdata.com).


Building
------------------------------

### Prerequisites

You're going to need:

 - **Linux or OS X** — Windows may work, but is unsupported.
 - **Ruby, version 2.5.1 or newer**
 - **Bundler, version 1.16.2** — This repo has issues with newer versions of bundler.

It is recommended to use a ruby version manager like [RVM](https://rvm.io/) to keep your ruby versions and gems separate.

### Getting Set Up

```sh
rvm install ruby-2.5.1
rvm use ruby-2.5.1@morpheus-apidoc --create
gem install bundler -v 1.16.2
bundle install
```

### Building

```sh
rake build
```

Now you can view the documentation you just built with `open build/index.html`.

### White Labeling

To rebrand this site, create a file called `whitelabel_config.rb` 
and override the settings seen in the example below.

#### Example whitelabel_config.rb

```ruby
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
set :api_url, "https://api.morpheusdata.com"

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
```

#### Modify Included Documents

You will also want to modify [source/index.md.erb](https://github.com/gomorpheus/morpheus-apidoc/blob/master/source/index.md.erb) and comment out (or remove) any unwanted documents from the list of includes or perhaps add your own documents to the list.

Certain documents still refer to Morpheus:
* [Programming Languages](https://github.com/gomorpheus/morpheus-apidoc/blob/master/source/includes/_programming_languages.md.erb) The CLI and SDKs all refer to `morpheus` of course.
* [Setup](https://github.com/gomorpheus/morpheus-apidoc/blob/master/source/includes/_setup.md.erb) refers to the [Morpheus Hub](https://morpheushub.com), though setup is unlikely needed for your whitelabel API documentation.

To remove these, modify source/index.md.erb to remove the following includes:
- programming_languages
- setup

#### White Labeling Caveats
The Morpheus API does still refer to `morpheus` in several ways.
* Type codes, Default image codes, and other things of that nature.
  example: "type": "morpheus" is the default for both Blueprint and Cloud (Zone)
* Authentication Client IDs: the string `morph-` is always used as client prefix. 
  example: "client_id": "morph-api" is required for authentication.
Future versions of the Morpheus appliance may address these issues.


