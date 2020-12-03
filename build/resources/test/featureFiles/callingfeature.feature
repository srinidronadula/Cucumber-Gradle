Feature: Calling feature


  Scenario: calling Testcase
    * def results =  call read("calledfeature.feature")
    * print "srini"
    * print results
    * match results.responseType == 'json'
    * match results.response.data[0].name == "cerulean"
