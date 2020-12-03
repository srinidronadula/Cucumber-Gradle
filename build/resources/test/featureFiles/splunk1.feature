Feature: Splunk REST API
  interacting with splunk server

  Background: Init
    * def login =
    """
    function(uid, pwd) {
        var temp = uid + ':' + pwd;
        var Base64 = Java.type('java.util.Base64');
        var encoded = Base64.getEncoder().encodeToString(temp.bytes);
        return 'Basic ' + encoded;
    }
    """
    * def auth = login("admin", "Admin123")
    * print auth
    * configure ssl = true

    Given url "https://192.168.1.90:8089"
    And header Authorization = auth


  Scenario: Job Search 1
    Given path "/services/search/jobs"
    When method get
    Then status 200
    * print responseType

    #---- when response xml is too large, get relevant node and then validate it
    * def title = get response //feed/title
    * print title
    * match title == "jobs"

  Scenario: Alert Search 1
    Given path "/services/alerts/alert_actions"
    When method get
    Then status 200
    * print responseType

    #---- when response xml is too large, get relevant node and then validate it
    * def title = get response //feed/title
    * print title
    * match title == "alert_actions"