Feature: Karate DB Test Suite1

Background: dbInit

  * def db = Java.type('misc.MyDbUtil')

  Scenario: select stmt testcase
    * def rows = db.selectStatement('select * from tools')
    * print rows

  Scenario: insert stmt testcase
    * def res = db.insertStatement("insert into tools values(333,'sample','abc')")
    * print res
    * match res == "Success"

  Scenario: update stmt testcase
    * def rowsAffected = db.updateStatement("update  tools SET toolname = 'srinivas' where toolid = 333")
    * print rowsAffected
    * match rowsAffected == 1

  Scenario: delete stmt testcase
    * def deleterows = db.deleteStatement("delete  from tools where toolid = 333")
    * print deleterows


