Morpheus API Documentation
========

The Morpheus API Documentation are built on the [Slate](https://github.com/slatedocs/slate) framework. 

Github Pages is used for hosting. The latest published documentation can be viewed at [https://bertramdev.github.io/morpheus-apidoc/](https://bertramdev.github.io/morpheus-apidoc/).


Getting Started
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

Publishing
------------------------------

This repo is published and hosted via [Github Pages](https://pages.github.com/). Simply pushing commits to the `gh-pages` branch will update the latest version of the documents.

#### Setup gh-pages directory

Setup a seprate working directory with the gh-pages branch. This step is only needed the first time you publish.

```sh
git clone https://github.com/bertramdev/morpheus-apidoc.git cd morpheus-apidoc-gh-pages
git checkout gh-pages
```

#### Publish changes

Copy all the build files into the directory. This assumes your working directory where you are building is a sibling at `../morpheus-apidoc`.

```sh
cp -R ../morpheus-apidoc/build/* ./
```

View git status and add any new files that may have been added, this is rarely needed.

```sh
git status
git add [file] [file2]
```

Lastly, commit the changes and push them.

```sh
git add .
git commit . -m "apidoc changes..."
git push
```

Now you can browse to [https://bertramdev.github.io/morpheus-apidoc/](https://bertramdev.github.io/morpheus-apidoc/) to see your changes.

**NOTE: It may take a couple minutes to update.**


Slate Features
------------

* **Clean, intuitive design** — with Slate, the description of your API is on the left side of your documentation, and all the code examples are on the right side. Inspired by [Stripe's](https://stripe.com/docs/api) and [Paypal's](https://developer.paypal.com/webapps/developer/docs/api/) API docs. Slate is responsive, so it looks great on tablets, phones, and even print.

* **Everything on a single page** — gone are the days where your users had to search through a million pages to find what they wanted. Slate puts the entire documentation on a single page. We haven't sacrificed linkability, though. As you scroll, your browser's hash will update to the nearest header, so linking to a particular point in the documentation is still natural and easy.

* **Slate is just Markdown** — when you write docs with Slate, you're just writing Markdown, which makes it simple to edit and understand. Everything is written in Markdown — even the code samples are just Markdown code blocks!

* **Write code samples in multiple languages** — if your API has bindings in multiple programming languages, you easily put in tabs to switch between them. In your document, you'll distinguish different languages by specifying the language name at the top of each code block, just like with Github Flavored Markdown!

* **Out-of-the-box syntax highlighting** for [almost 60 languages](http://rouge.jayferd.us/demo), no configuration required.

* **Automatic, smoothly scrolling table of contents** on the far left of the page. As you scroll, it displays your current position in the document. It's fast, too. We're using Slate at TripIt to build documentation for our new API, where our table of contents has over 180 entries. We've made sure that the performance remains excellent, even for larger documents.


TODO
------------------------------

#### Versioned documentation

We need to host a version of the documentation for each release, and provide an easy way to switch betwen versions.
