@Used-Car-Search
Feature: Acceptance testing to validate Search Cars Page is working.
  In order to validate that 
  the Used Search Cars page is working
  Performing the Acceptance Testing

  @Used-Car-SearchPositive
  Scenario: Validate Used  Search Cars Page
    Given I navigate to the  Home Page "https://www.carsguide.com.au" of CarsGuide Website
    When I move to Car-For-Sale Menu
    And click on submenu Used Cars Search link
    And select carMaker from AnyMake dropdown
      | carMaker |
      | Honda     |
    And select  car model
      | carModel |
      | City     |
    And select location  from SelectLocation dropdown
      | location |
      | QLD - All |
    And select price
      | price  |
      | $1,000 |
    And click on Find_My_Car button
    Then I should see list of Used cars
    And the page title should match expected title  "Used Honda City Under 1000 for Sale QLD - Second Hand Honda City Under $1k in QLD | carsguide"
