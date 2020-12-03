Feature: Karate Test Suite
  Writing Response To file using test suite

  Scenario: Example1
    * def lib = Java.type('misc.Utils')
    Given url "https://reqres.in/api/users/2"
    When method get
    Then status 200
    * def res2 = get response $.support
    * lib.writeToFile("res3.json", res2)
    * def res1 = read("classpath:res3.json")
    * print res1