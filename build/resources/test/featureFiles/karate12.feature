Feature: Karate Test Suite12
  Demo of using java class variables inside scenario

  Scenario: calling static && non static vars in Java  using test case
    * def constants = Java.type('misc.AutomationConstants')
    * print constants.devURL
    * print constants.getDevURL()

  Scenario: calling static && non static vars in Java  using test case
    * def env1 =
    """
    function fn1()
    {
      var var1 = Java.type('misc.AutomationConstants');
      var var2 = new var1();
      return var2.qaURL;
    }

    """
    * def qaURL = call env1
    * print qaURL

  Scenario: calling static && non static vars in Java  using test case
    * def env1 =
    """
    function fn1()
    {
      var a =  Java.type('misc.AutomationConstants');
      return new().Java.type('misc.AutomationConstants')().qaURL;


    }

    """
    * def qaURL = call env1
    * print qaURL


