Feature: karate called feature
  sing url and path
  Scenario: using caleed feature - url and path in test case

    Given url "https://reqres.in/"
    And path "/api/users?page=2"
    And method GET
    Then status 200
    * print response
    And match response.page == "##"

