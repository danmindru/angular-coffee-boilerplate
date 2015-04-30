describe('Root Application Module:', ->
  RootController = ''
  scope = ''

  beforeEach(->
    module('abs')
  )

  describe('Root Config:', ->
    it('should expose a pushAfterBootstrap method', ->
      expect(absConfig.pushAfterBootstrap).toBeTruthy()
    )

    it('should expose a appRootModuleName variable', ->
      expect(absConfig.appRootModuleName).toBeTruthy()
    )

    it('should expose a appMainVendorDependencies variable', ->
      expect(absConfig.appMainVendorDependencies).toBeTruthy()
    )
  )

  describe('Root Module:', ->
    beforeEach(inject(($controller, $rootScope) ->
      scope = $rootScope.$new()
      RootController = $controller('RootController', {$scope: scope})
    ))

    it('should have properly instantiate the Root Controller', ->
      expect(RootController).toBeTruthy()
    )
  )
)