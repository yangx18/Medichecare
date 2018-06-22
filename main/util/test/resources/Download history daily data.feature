
@tag
Feature: Download history data
  	I want to download the hourly data of the passing week
  	As a weather browser
  	so that I can use it for my benefits.
  	
  @tag1
  Scenario: Download history daily data
    Given The Source button that have the whole data inside
    And The Daily button
    And The Hourly button
    When I put the <target city>
    And I click the Daily button
    Then I get the history Daily weather data of  <target city>
    And Downlode
  @tag2
    Scenario: Download history daily data
    Given The Source button that have the whole data inside
    And The Daily button
    And The Hourly button
    When I put the <target city>
    And I click the hourly button
    Then I get the history hourly weather data of  <target city>
    And Downlode

