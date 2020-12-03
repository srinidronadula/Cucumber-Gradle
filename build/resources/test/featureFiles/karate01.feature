Feature: Karate Test Suite1
  Demo of using variables inside scenario

  Scenario: Karate Testcase1
    Given def a = 10
    And def b = 'hi'
    When def c = b + 'hi' + a
    Then assert c == 'hihi10'
    And  print "srini", c
    And karate.log("test log")


  Scenario: Karate Testcase2
    Given def a = 10
    And def b = 'hi'
    When def c = b + 'hi' + a
    Then assert c == 'hihi10'
    *  print "srini", c
    And karate.log("test log")

  Scenario: Karate Testcase3
    * def a = 10
    * def b = 'hi'
    * def c = b + 'hi' + a
    * assert c == 'hihi10'
    *  print "srini", c
    And karate.log("test log")



