class AppNavigation extends Directive('abs.coreLayout')
  constructor: ->
    return {
      restrict: 'A'
      templateUrl: 'shared-views/navigation.html'
      controller: 'LayoutController'
      controllerAs: 'vm'
      replace: true
    }