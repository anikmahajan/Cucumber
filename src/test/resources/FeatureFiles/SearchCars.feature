@Search-Cars
Feature: Acceptance testing to validate Search Cars Page is working.
  In order to validate that 
  the Search Cars page is working
  Doing the Acceptance Testing

  @Search-Cars-Positive
  Scenario: Validate Search Cars Page
    Given I am on the Home Page "https://www.carsguide.com.au" of CarsGuide Website
    When I move to Car For Sale Menu
      | Menu          |
      | Cars For Sale |
    And click on "Search Cars" link
    And select carbrand as "Ford" from AnyMake dropdown
    And select "Mustang" as car model
    And select location as "QLD - All" from SelectLocation dropdown
    And select "$2,000" as price
    And click on Find_My_Next_Car button
    Then I should see list of searched cars
    And the page title should be "Ford Mustang Under 2000 for Sale QLD | carsguide"
