describe('Profile feature: Provider page', ->
  beforeEach(module('abs.profileFeature.providerPage'))

  ProviderPageController = ''
  scope = ''
  stateParams = ''
  ProviderModelService = ''
  q = ''

  beforeEach( ->
    ProviderModelService =
      providerIndex: ->
        deferred = q.defer()
        return deferred.promise

      providerProfile: ->
        deferred = q.defer()
        return deferred.promise

      otherProviders: ->
        deferred = q.defer()
        return deferred.promise
  )

  beforeEach(inject(($controller, $rootScope, $q) ->
    q = $q
    scope = $rootScope.$new()
    stateParams = {}
    stateParams.providerId = 'quick-pot'

    ProviderPageController = $controller('ProviderPageController',
      $scope: scope
      $stateParams: stateParams
      ProviderModelService: ProviderModelService
    )
  ))

  describe('Provider Page Controller', ->
    it('should have been properly instantiated', ->
      expect(ProviderPageController).toBeTruthy()
    )
  )
)