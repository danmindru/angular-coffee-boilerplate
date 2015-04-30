h = require('./helpers.protractor.js')

class ProfileHelper
  goTo: (route) ->
    browser.driver.get(route)

  homeRoute : browser.baseUrl + '/home'
  providerRoute : browser.baseUrl + '/provider'
  customerRoute : browser.baseUrl + '/customer'

profileModule = new ProfileHelper()

describe("Profile module: ", ->
  describe("Provider page", ->
    it("should stay on provider route if providerId supplied", ->
      profileModule.goTo(profileModule.providerRoute + '/any')
      expect(browser.getCurrentUrl()).toMatch(profileModule.providerRoute + '/any')
    )

    it("should redirect to '/home' if no providerId is supplied", ->
      profileModule.goTo(profileModule.providerRoute)
      expect(browser.getCurrentUrl()).toMatch(profileModule.homeRoute)
    )

    afterEach(->
      h.detectSevere()
    )
  )

  describe("Customer page", ->
    it("should stay on customer route if customerId supplied", ->
      profileModule.goTo(profileModule.customerRoute + '/any')
      expect(browser.getCurrentUrl()).toMatch(profileModule.customerRoute + '/any')
    )

    it("should redirect to '/home' if no customerId is supplied", ->
      profileModule.goTo(profileModule.customerRoute)
      expect(browser.getCurrentUrl()).toMatch(profileModule.homeRoute)
    )

    afterEach( ->
      h.detectSevere()
    )
  )
)
