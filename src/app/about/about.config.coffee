absConfig.pushAfterBootstrap('abs.about', [])

class About extends Config('abs.about')
  constructor: ($stateProvider) ->
    $stateProvider.state('about'
      url: '/about'
      templateUrl: 'views/about-page.html'
      data:
        pageTitle: 'About page'
        pageDesc: 'This study looks at AngularJS boilerplates to find the best approaches. Although plenty of choices are available, they will do justice for only some types of applications.'
    )