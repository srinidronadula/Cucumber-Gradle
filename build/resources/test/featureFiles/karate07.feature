Feature: Karate Test suite 07
  Desc: testing rest api

  @rest
  Scenario: rest API Testing
    Given url "http://dummy.restapiexample.com/api/v1/employees"
    When method get
    Then status 200

    * def temp = response
    * print "srini", temp
    And response.status == "sucess"
    And response.data == "#string"
    And print(response.data[0].employee_name)
    And response.data[0].employee_name == "Tiger Nixon"
    * match response.data[0].employee_name contains "Tiger"

