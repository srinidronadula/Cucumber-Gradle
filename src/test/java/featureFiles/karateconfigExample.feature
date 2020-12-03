Feature: karate config file suite
  Reading global variable from karate config file


  Scenario: karate config test case1
    Given url baseURL
    And path listUsers
    When method get
    Then status 200