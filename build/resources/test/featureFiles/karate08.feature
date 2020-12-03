Feature: karate test suite 08
  Desc: rest api end to end Testing

  Scenario: create, seaerch, update delete data
    Given url "http://dummy.restapiexample.com/api/v1/create"
    And request {"name":"srini","salary":"1231","age":"23"}
    When method POST
    Then status 200

    * print "srini2"
    * def id = response.data.id
    * print "srini2" + id
    * print "http://dummy.restapiexample.com/api/v1/employee/" + id
    Given url "http://dummy.restapiexample.com/api/v1/employee/" + id
    When method GET
    Then status 200

    # update
    Given url "http://dummy.restapiexample.com/public/api/v1/update/" + id
    And request {"name":"srini11","salary":"1231","age":"23"}
    When method PUT
    Then status 200











