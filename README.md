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
