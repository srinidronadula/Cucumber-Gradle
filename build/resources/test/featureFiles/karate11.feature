Feature: Karate Test Suite11
  Demo of using javascript function  inside scenario

  Scenario: javascript testcase1
    * def fn1 = function() { return 1; }

    * def fn2 =
    """
    function(id)
    {
    karate.log(id)
    }
    """
    * print fn1()
    * print fn2("hello")





