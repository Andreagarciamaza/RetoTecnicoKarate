Feature: Get the list of users and verify that the deleted user is not in the list

  Background:
    * url url
    * def basePath = 'src/test/resources/schemas/'
    * def filePath = basePath + 'responselistusers.json'
    * def responselistusers = read('file:' + filePath)

  @getUsers @getListUsers @regression 
  Scenario:  Query the list of users
    * path "api/users"
    And param page = 2
    When method get
    Then status 200
    And print response
    * match response == responselistusers

  @getUsersDelete @getListUsers @regression 
  Scenario:Verify that the user with ID 2 is not in the list
    * path "api/users"
    And param page = 2
    When method get
    Then status 200
    And print response
    * match response.data[*].id != 2


