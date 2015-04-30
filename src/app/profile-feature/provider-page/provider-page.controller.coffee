class ProviderPage extends Controller('abs.profileFeature.providerPage')
  constructor: ($scope, $stateParams, ProviderModelService) ->
    vm = this

    ProviderModelService.providerProfile($stateParams.providerId).then((response) ->
      pageTitle = ''
      pageDesc = ''

      vm.provider = response
      pageTitle =
        if !response.error
          vm.provider.name + '\'s Profile Page'
        else
          'Sorry, this provider profile does not exist'

      pageDesc =
        if !response.error
          vm.provider.name + '\'s Profile on Angular Boilerplate Study.'
        else
          'No description available for this customer.'

      $scope.$emit('changedTitle', pageTitle)
      $scope.$emit('changedDesc', pageDesc)
    )

    ProviderModelService.otherProviders($stateParams.providerId).then((response)->
      vm.otherProviders = response
    (error) ->
      vm.otherProviders = error
    )