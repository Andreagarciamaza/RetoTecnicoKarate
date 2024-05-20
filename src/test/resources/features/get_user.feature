Feature: Get a user by ID

  Background:
    * url url
    * def basePath = 'src/test/resources/schemas/'
    * def filePath = basePath + 'responsesingleusers.json'
    * def responsesingleuser = read('file:' + filePath)

  @getSingleUser @getUser @regression 
  Scenario: Get user with ID 2
    * path "/api/users/2"
    When method get
    Then status 200
    And print response
    * match response.data.id == responsesingleuser.id
    * match response.data.email  == responsesingleuser.email
    * match response.data.first_name == responsesingleuser.first_name
    * match response.data.last_name == responsesingleuser.last_name

  @getSingleUserInvalid @getUser @regression
  Scenario: Get user with invalid ID 
    * path "/api/users/10000000000000000000000000"
    When method get
    Then status 404
    And print response

  @getSingleUserInvalidLetters @getUser @regression
  Scenario: Get user with invalid ID with letters
    * path "/api/users/JKKKA"
    When method get
    Then status 404
    And print response


