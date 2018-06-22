
@tag
Feature: Allow search with city, State
	As a business traveler frequenting Omaha and/or Lincoln,
	So that I can plan my trip to Omaha and/or Lincoln,
  I want to know the daily weather of the two cities in the coming week.

  @tag1
  Scenario: search with city, State in hourly
    Given City Button
    And Hourly Weather Forms
    And Daily Weather Forms
    When I put the <target city> 
    And I click the city button
    And I click the Hourly Weather Forms
    Then I get the <date> weather of <target city> 
   

  @tag2
  Scenario Outline: search with city, State in daily
   Given City Button
    And Hourly Weather Forms
    And Daily Weather Forms
    When I put the <target city> 
    And I click the city button
    And I click the Daily Weather Forms
    Then I get the <date> <temperature> of <target city>
    
    Examples: 
      | date  | temperature | target city|
      | Hourly|   75F | Lincoln|
      | Daily |   74F | Omaha|
