class AppShell extends Directive('abs.coreLayout')
  constructor: ->
    return {
      restrict: 'A'
      templateUrl: 'shared-views/shell.html'
      replace: true
    }