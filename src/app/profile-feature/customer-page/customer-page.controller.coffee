class CustomerPage extends Controller('abs.profileFeature.customerPage')
  constructor: ($scope, $stateParams, $filter, CustomerModelService) ->
    vm = this

    CustomerModelService.customerProfile($stateParams.customerId).then((response)->
      pageTitle = ''
      pageDesc = ''

      vm.customer = response
      pageTitle =
        if !response.error
          vm.customer.name + ' ' + vm.customer.surname + '\'s Profile Page'
        else
          'Sorry, this customer profile does not exist'

      pageDesc =
        if !response.error
          vm.customer.name + ' ' + vm.customer.surname + '\'s Profile on Angular Boilerplate Study. Member since ' + $filter('date')(vm.customer.joined, 'shortDate')
        else
          'No description available for this customer.'
      $scope.$emit('changedTitle', pageTitle)
      $scope.$emit('changedDesc', pageDesc)
      return
    )