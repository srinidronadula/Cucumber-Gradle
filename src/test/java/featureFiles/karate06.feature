Feature: Karate Test suite 06
  Desc: testing soap api

  @soap
  Scenario: SOAP API Testing using external input file
    Given url "https://www.w3schools.com/xml/tempconvert.asmx"
    And header Content-Type = "text/xml; charset=utf-8"
    And request read('soapAPIInput.xml')

    When soap action "https://www.w3schools.com/xml/CelsiusToFahrenheit"
    Then status 200
    And match response contains "122"
    * def temp = response
    * print "srini", temp
    And match response //CelsiusToFahrenheitResult == "122"
    And match responseHeaders['Server'][0] == 'Microsoft-IIS/7.5'
    And match responseHeaders['Server'] == ['Microsoft-IIS/7.5']
    And match responseType == 'xml'
    And assert responseTime <= '2000'

