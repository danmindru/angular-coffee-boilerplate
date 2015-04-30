class ProviderModel extends Service('abs.profileModel.providerModel')
  constructor: ($http, $q) ->
    @providerIndex = ->
      return $http.get('./data/provider-index.json')

    @providerProfile = (providerId) ->
      providerProfilesDefer = $q.defer()
      availableProviders = $http.get('./data/provider-profiles.json')

      availableProviders.then((response) ->
        currentProvider = {}
        providerExists = false

        for provider, key in response.data
          if providerId is provider.id
            providerExists = true
            currentProvider = provider

        if !providerExists
          currentProvider.error = true
          currentProvider.message = 'Could not find the provider with id ' + providerId

        providerProfilesDefer.resolve(currentProvider)

      (error) ->
        providerProfilesDefer.reject(error)
      )

      return providerProfilesDefer.promise

    @otherProviders = (providerId) ->
      otherProvidersDefer = $q.defer()
      providerIndex = $http.get('./data/provider-index.json')

      providerIndex.then((response) ->
        for provider, key in response.data
          if provider.id is providerId
            response.data.splice(key, 1)
            break

        otherProvidersDefer.resolve(response.data)
      (error) ->
        otherProvidersDefer.reject(error)
      )

      return otherProvidersDefer.promise