class ProviderIndex extends Controller('abs.profileFeature.providerIndex')
  constructor: (ProviderModelService) ->
    vm = this

    ProviderModelService.providerIndex().then((response) ->
      vm.providers = response.data
    (error) ->
      vm.providers = error
    )