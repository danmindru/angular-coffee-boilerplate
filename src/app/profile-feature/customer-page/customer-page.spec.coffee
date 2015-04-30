describe('Profile feature: Customer page', ->
  customerPageController = ''
  scope = ''
  stateParams = ''
  CustomerModelService = ''
  q = ''

  beforeEach(->
    module('abs.profileFeature.customerPage')

    CustomerModelService =
      customerIndex: ->
        deferred = q.defer()
        return deferred.promise

      customerProfile: ->
        deferred = q.defer()
        return deferred.promise
  )

  beforeEach(inject(($controller, $rootScope, $q) ->
    q = $q
    scope = $rootScope.$new()
    stateParams = {}
    stateParams.customerId = 'jenny-smith'

    customerPageController = $controller('CustomerPageController',
      $scope: scope
      $stateParams: stateParams
      CustomerModelService: CustomerModelService
    )
  ))

  describe('Customer Page Controller', ->
    it('should have been properly instantiated', ->
      expect(customerPageController).toBeTruthy()
    )
  )
)