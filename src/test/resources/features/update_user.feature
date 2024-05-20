Feature:  Update the name and job of a user

  Background:
    * url url
    * def basePath = 'src/test/resources/schemas/'
    * def filePath = basePath + 'responsesingleusers.json'
    * def responsesingleuser = read('file:' + filePath)

  @updateNameUser @updateUser @regression
  Scenario Outline: Update the name of a user
    * path "/api/users/2"
    Given request { "name": "<name>", "job": "<job>"}
    When method put
    Then status 200
    And print response
    And match $.name == "<name>"
    Examples:
      | name    | job           |
      | Nicolas | zion resident |
      | Andrea  | zion resident |
      | Daniel  | zion resident |

  @updateJobUser @updateUser @regression
  Scenario Outline: Update the job of a user
    * path "/api/users/2"
    Given request { "name": "<name>", "job": "<job>"}
    When method put
    Then status 200
    And print response
    And match $.job == "<job>"
    Examples:
      | name    | job     |
      | Nicolas | leader  |
      | Andrea  | doctor  |
      | Daniel  | engineer |

  @updateUserInvalid @updateUser @regression
  Scenario: Update an invalid user
    * path "/api/users/2"
    Given request {}
    When method put
    Then status 200
    And print response

