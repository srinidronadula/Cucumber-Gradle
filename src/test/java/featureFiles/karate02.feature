Feature: Karate Test Suite 02
  Desc: THis feature file consists of Scenario demo of how to validate Json content

  Scenario: Json TestCase1
    Given def json = { name: "John", age: 31, city: "New York" }
    * print json
    Then json.name == "John"
  Scenario: Json Test case2
   Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}
    * print json
    Then json.id == "101"
    * assert json.tool.name == "Karate"

  Scenario: Json Test case3
    Given def json =
    """
    {
        "id" : "101",
        "tool": { "name":"Karate", "version":"0.9.6"}
     }
     """
    * print json
    Then json.id == "101"
    * assert json.tool.name == "Karate"

  Scenario: Json Test case4
    Given def json =
    """
    {
        "id" : "101",
        "tool": { "name":"Karate", "version":"0.9.6"}
     }
     """
    * print json
    Then json.id == "101"
    * assert json.tool.name == "Karate"
