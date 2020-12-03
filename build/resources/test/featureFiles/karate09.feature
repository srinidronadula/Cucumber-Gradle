Feature: karate test suite 09
  sing url and path
  Scenario: using url and path in test case

    Given url "https://reqres.in/"
    And path "/api/users?page=2"
    And method GET
    Then status 200
    * print response
    And match response.page == "##"

  Scenario: using url and path and param in test case
    Given url = "https://reqres.in/"
    And path "/api/users"
    And param page = 2
    When method GET
    Then status 200


