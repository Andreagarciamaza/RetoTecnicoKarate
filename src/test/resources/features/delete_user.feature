Feature: Delete an user

  Background:
    * url url

  @deleteUser @delete @regression
  Scenario: Delete a user with ID 2
    * path "/api/users/2"
    When method delete
    Then status 204
    And print response

 @deleteUser @delete @regression
  Scenario:  Verify that the deleted user does not exist
    * path "/api/users/2"
    When method get
    Then status 200
    And print response

  @deleteUserNumberInvalid @delete @regression
  Scenario: Delete a user with invalid ID
    * path "/api/users/10000000000000000000000000"
    When method delete
    Then status 204
    And print response

  @deleteUserwithLetters @delete @regression
  Scenario: Delete a user with invalid ID using letters
    * path "/api/users/JKKKA"
    When method delete
    Then status 204
    And print response