class CustomerIndex extends Controller('abs.profileFeature.customerIndex')
  constructor: (CustomerModelService) ->
    vm = this

    CustomerModelService.customerIndex().then((response) ->
      vm.customers = response.data
    (error) ->
      vm.customers = error
    )