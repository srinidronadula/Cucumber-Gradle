Feature: Karate Test Suite14
  Demo of reading csv data inside scenario

  Scenario Outline: CSV DDT Testing
    * print "<custid>, <custname>, <age>, <yob>"
    * def json1 = {"last_name" : <custname>}
    * print json1

    Examples:
      | read('classpath:data.csv') |

