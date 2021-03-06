Feature: Fueling
  To allow fueling of a car

  Scenario Outline: Car magically multiplies fuel when fueling
    Given The customer empties the the car's fuel levels
    When the customer fuels the following number of gallons <gallons> to his or her car
    Then the car is left with the expected <expected> gallons

	 Examples:
 | gallons | expected | 
 | 8 | 40 | 
 | 15 | 75 | 


	
  Scenario Outline: Car calculates correct trip per gallon
    Given The customer empties the the car's fuel levels
    When the customer owns a car of brand '<carBrand>' and make '<carMake>' 
    And the customer fuels the following number of gallons <gallons> to his or her car of fuel type <fuelType> 
    Then the car is has the following '<expectedMiles>' expected miles to travel

	 Examples:

 | carBrand | carMake | gallons | fuelType | expectedMiles | 
 | VW | Passat | 7 | 98 | 114.799995 | 
 | VW | Passat | 0 | 95 | 0.0 | 
 | VW | Golf | 17 | 95 | 358.7 | 



