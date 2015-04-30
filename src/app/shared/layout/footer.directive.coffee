class AppFooter extends Directive('abs.coreLayout')
  constructor: ->
    return {
      restrict: 'A'
      templateUrl: 'shared-views/footer.html'
      controller: 'LayoutController'
      controllerAs: 'vm'
      replace: true
    }