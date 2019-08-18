Feature: Validate that String exist at least 1 time in the entire posts body response

  Background:
    * url 'https://jsonplaceholder.typicode.com/'
    * def oddSchema = { userId: '#string', id: '#number', title: ''#string',"body": '#string' }
    * def testName = 'exercitationem'
    * def valCounter=  "$.items.text [*]"
    * print 'Post ID: {'id'}, number of Repeated  {'testName'} string:{'valCounter'}'

    And method GET

    Then status 200
    And match response contains == {userId:'#ignore', id: '#number',title: '#(testName)',"body": '#string'}
