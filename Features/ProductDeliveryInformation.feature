Feature: View product delivery information

  As a Customer I want to see the delivery information of the product page
  So that I know when to order the product to get it as soon as possible

Background:
  Given: The product page URL is 'https://www.notonthehighstreet.com/thisisnessie/product/personalised-wellies-family-print'

Scenario: Viewing the delivery information summary
  When I view the product page
  Then the avaliable <deliveryOption> are shown in the delivery summary

  Examples:
    | deliveryOption           |
    | STANDARD DELIVERY        |
    | TRACKED EXPRESS DELIVERY |
    | SATURDAY DELIVERY        |
    | INTERNATIONAL DELIVERY	 |

Scenario: Viewing the detailed delivery information
  When I am on the product page
  And I click on the 'Delivery' tab
  Then the delivery section will expand
  And I can see the detailed delivery information for the product
  And the <deliveryArea> shows the <deliveryInfo>

  Examples:
    | deliveryArea	         | deliveryInfo       |
    | MAINLAND UK	           | GET IT BY date     |
    | NON MAINLAND UK	       | ESTIMATED DELIVERY |
    | INTERNATIONAL DELIVERY | ESTIMATED DELIVERY |
