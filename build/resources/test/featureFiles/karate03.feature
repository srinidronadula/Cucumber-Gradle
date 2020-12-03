Feature: Karate Test suite 3
  Desc: shows Validation of XML

  Scenario: xml testCase1
    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    * print xml
    * assert xml.info.id == "101"
    Then print xml
    Then match  xml/info/id == "101"
    And match  xml.info.id == "101"
    And match xml contains "<name>Karate</name><version>0.9.6</version>"

  Scenario: xml testCase2
    Given def xml =
    """
  <info>
  <id>101</id>
  <tool>
  <name>Karate</name>
  <version>0.9.6</version>
  </tool>
  <tool>
  <name>IntelliJ</name>
  <version>2020.2</version>
  </tool>
  </info>
  """
    * print xml
    * assert xml.info.id == "101"
    Then print xml
    Then match  xml/info/id == "101"
    And match  xml.info.id == "101"
    And match xml contains "<name>Karate</name><version>0.9.6</version>"
