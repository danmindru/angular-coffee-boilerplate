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