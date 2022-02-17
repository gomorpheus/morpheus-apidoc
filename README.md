<img src="https://morpheusdata.com/wp-content/uploads/2020/04/morpheus-logo-v2.svg" width="200px">

Morpheus API Documentation
========

The Morpheus API Documentation is built on the [Slate](https://github.com/slatedocs/slate) framework. 

The latest published documentation can be viewed at [https://apidocs.morpheusdata.com](https://apidocs.morpheusdata.com).


Building
------------------------------

### Prerequisites

You're going to need:

 - **Linux or macOS** — Windows may work, but is unsupported.
 - **Ruby, version 2.7 or newer**
 - **Bundler, version 2.2**

It is recommended to use a ruby version manager like [RVM](https://rvm.io/) to keep your ruby versions and gems separate.

### Getting Set Up

```sh
rvm install ruby-2.7
rvm use ruby-2.7@morpheus-apidoc --create
gem install bundler
bundle install
```

### Building

```sh
rake build
```

Now you can view the documentation you just built with `open build/index.html`.

### White Labeling

To rebrand this site, modify `index.html.erb` to change the settings `title`, and `nav_title`. Then modify `variables.rb` to change the settings `application_name`, etc.

You may also want to to remove any unwanted documents from the list of `includes` or perhaps add your own documents.

Certain documents still refer to *Morpheus*:
* [Setup](https://github.com/gomorpheus/morpheus-apidoc/blob/master/source/includes/_setup.md) refers to the [Morpheus Hub](https://morpheushub.com), though setup is unlikely needed for your whitelabel API documentation.

#### Modify Style

See the [Slate wiki](#https://github.com/slatedocs/slate/wiki/Changing-the-font) for details on customizations of style.

#### White Labeling Caveats
The Morpheus API does still refer to *morpheus* in several ways.
* Type codes, Default image codes, and other things of that nature.
  example: "type": "morpheus" is the default for both Blueprint and Cloud (Zone)
* Authentication Client IDs: the string *morph-* is always used as client prefix. 
  example: "client_id": "morph-api" is required for authentication.
Future versions of the Morpheus appliance may address these issues.

