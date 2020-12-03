Feature: Test Fixture
  Demo using background, after scenario, after feature
  Background: Before scenario block
    * print "Before Scenario"
    * configure afterScenario =
    """
    function (){
    karate.log(" from After scenario")
    }
    """
   * configure afterFeature =
    """
    function (){
    karate.log(" from After Feature")
    }
    """
    Scenario: Estcase 1
      * print "from Testcase1"
  Scenario: Estcase 2
    * print "from Testcase2"
    * print "srini"