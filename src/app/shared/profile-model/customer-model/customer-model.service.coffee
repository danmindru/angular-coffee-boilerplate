class CustomerModel extends Service('abs.profileModel.customerModel')
  constructor: ($http, $q) ->
    @customerIndex = ->
      return $http.get('./data/customer-index.json')

    @customerProfile = (customerId) ->
      customerProfilesDefer = $q.defer()
      availableCustomers = $http.get('./data/customer-profiles.json')

      availableCustomers.then((response) ->
        currentCustomer = {}
        customerExists = false

        for customer, key in response.data
          if customerId is customer.id
            customerExists = true
            currentCustomer = customer

        if !customerExists
          currentCustomer.error = true
          currentCustomer.message = 'Could not find the customer with id ' + customerId

        customerProfilesDefer.resolve(currentCustomer)

      (error) ->
        customerProfilesDefer.reject(error)
      )

      return customerProfilesDefer.promise