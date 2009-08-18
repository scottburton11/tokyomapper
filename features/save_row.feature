Feature: Save a row to the database
  In order to persist an instance of my class
  As a user
  I want to call #save on my class name
  
  Background:
    Given I have included TokyoMapper in my class
    
  Scenario: Call #save
    Given I have an instance of my class with some data
    When I call save on it
    Then it should get saved to the database
  
