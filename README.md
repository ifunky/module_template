[![Build Status](https://travis-ci.org/ifunky/module_template.svg?branch=master)](https://travis-ci.org/ifunky/module_template)
Puppet Module Template
=======================

This is template module which follows some practices that I consider useful.  Remember this is my interpretation and my way of writing modules, hopefully you'll find this useful but if not it can always be tweaked!

What's in this module?
----------------------
 - Common folder structure that makes up a module
 - Example set of tests that every module should start with
 - Code coverage
 - Basic Travis CI build file to get you started
 - Documentation examples based on YARD (Puppet Strings)
 -

Getting Started
---------------

 1. Clone this repo into a new target folder
    `git clone https://github.com/ifunky/module_template.git new_foldername`
 2. cd to module_template
 3. Run

    `bundle install`

 4. You can now run the numerous rake commands:

     `rake -t`

 5. Make sure the tests are passing and that you have everything required for Puppet module development: 

     `rake spec`

 6. You can also run the other checks as well:
 
| Command	   | Description
|------------- |-------------
| `rake lint`  | Run puppet-lint
| `rake syntax`| Syntax check Puppet manifests and templates
| `rake test`  | Run syntax, lint, and spec tests


7.  To clean the module of git files and start with a template README.md run the following rake task:
    `rake clean`

All you need to do now is rename the folder, change the name of "template" in the code and git init!

> NOTE:  I took some inspiration from Gareth's skeleton
> [here](https://github.com/garethr/puppet-module-skeleton) when I
> created this module