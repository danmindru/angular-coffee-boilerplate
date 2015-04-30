h = require('./helpers.protractor.js')

class HomeHelper
  goTo: (route)->
    browser.driver.get(route)

  homeRoute: browser.baseUrl + '/home'

homeModule = new HomeHelper()

describe("Home module: ", ->
  it("should render text in the html <title> tag", ->
    homeModule.goTo(homeModule.homeRoute)
    expect(h.binding('root.htmlTitle').getInnerHtml()).toBeTruthy()
  )

  afterEach(->
    h.detectSevere()
  )
)