#AngularJS CoffeeScript boilerplate
[![Build Status](https://travis-ci.org/danmindru/angular-coffee-boilerplate.svg?branch=master)](https://travis-ci.org/danmindru/angular-coffee-boilerplate) [![devDependency Status](https://david-dm.org/angular-coffee-boilerplate/dev-status.svg)](https://david-dm.org/danmindru/angular-coffee-boilerplate#info=devDependencies&view=table)

This boilerplate is based on [this project](https://github.com/danmindru/angular-boilerplate-study).

**Read the full docs [here](https://github.com/danmindru/angular-boilerplate-study/blob/master/README.md).**


##Getting started

Install `npm` and `bower` dependencies and run `grunt`, that's it. You are good to go.

```
$ sudo npm install
$ bower install
$ grunt
```

After running grunt, the source files will be built into `./build`.

When the app is ready for production, compile the app into `./application` by running:

```
$ grunt compile
```

###Requirements
`Grunt`, `grunt-cli` and `Bower` are required to build the application.
Read more about these packages [on the Grunt](http://gruntjs.com/installing-grunt) or [Bower](http://bower.io/) documentation pages.


##Changes from the JS repo
`Coffeelint` replaces `jshint`, other the tools are the same. See more [here](https://github.com/danmindru/angular-coffee-boilerplate#third-party-components).

###ng-classify
Angular components are written using [ng-classify](https://github.com/CaryLandholt/ng-classify), a neet little pre-compiler that allows us to write code like:

```coffeescript
class Home extends Controller('abs.home')
  constructor: (ProviderModelService, CustomerModelService) ->
    vm = this

    ProviderModelService.providerIndex()
    .then((response) ->
      vm.providers = response.data
    (error) ->
      vm.providers = error
    )

    CustomerModelService.customerIndex()
    .then((response) ->
      vm.customers = response.data
    (error) ->
      vm.customers = error
    )
```

The compiled JavaScript will then be:
```javascript
var Home;

Home = (function() {
  function Home(ProviderModelService, CustomerModelService) {
    var vm;
    vm = this;
    ProviderModelService.providerIndex().then(function(response) {
      return vm.providers = response.data;
    }, function(error) {
      return vm.providers = error;
    });
    CustomerModelService.customerIndex().then(function(response) {
      return vm.customers = response.data;
    }, function(error) {
      return vm.customers = error;
    });
  }

  return Home;

})();

angular.module('abs.home').controller('HomeController', ['ProviderModelService', 'CustomerModelService', Home]);
```


##License

Copyright (c) Dan Mindru <mindrudan@gmail.com>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.