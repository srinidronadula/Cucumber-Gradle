Feature: karate test suite 10
  Data Driven Testing
  @dddt
  Scenario Outline: DD Test case
    Given url "https://reqres.in/"
    And path "/api/users?page=<PNO>"
    And method GET
    Then status 200
    * print response
    And match response.page == "##"

    Examples:
      | PNO  |
      | 1    |
      | 3    |
