
@tag
Feature: Display temperature in Degree C and/or F
	so that I can feel how hot/cold the weather will be as I am familiar with Celsius degrees or Fahrenheit  degree
 	As a weather browser,
 	I want to see predicted temperature in either Degree C and/or F. 

  @tag1
 Scenario Outline: Display temperature in Degree F
    Given The current temperature in Degree C of target city 
    When I click the C/F button
    Then The temperature should be show in Degree F
    


  @tag2
  Scenario: Display temperature in Degree C
    Given The current temperature in Degree F of target city 
    When I click the C/F button
    Then The temperature should be show in Degree C

 
