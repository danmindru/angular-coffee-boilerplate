class Layout extends Controller('abs.coreLayout')
  constructor: ($filter) ->
    vm = this
    localCurrentDate = new Date()
    vm.currentDate = $filter('date')(localCurrentDate, 'yyyy')