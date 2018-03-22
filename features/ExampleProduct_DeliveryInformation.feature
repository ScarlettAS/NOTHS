Feature: View product delivery information

  As a Customer I want to see the delivery information of the product page
  So that I know when to order the product to get it as soon as possible

  Background:
    Given the product page URL is "https://www.notonthehighstreet.com/thisisnessie/product/personalised-wellies-family-print"

  Scenario: Viewing the delivery information summary
    When I navigate to the product page
    Then the delivery summary is shown

  Scenario: Viewing the detailed delivery information tab
    When I navigate to the product page
    And I click on the delivery tab
    Then I can see the detailed delivery information
