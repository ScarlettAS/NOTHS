Feature: View product delivery information

  As a Customer I want to see the delivery information of the product page
  So that I know when to order the product to get it as soon as possible

Background:
  Given the product page URL is 'https://www.notonthehighstreet.com/thisisnessie/product/personalised-wellies-family-print'

Scenario: Viewing the delivery information summary
  When I view the product page
  Then the avaliable <deliveryOptions> are shown in the delivery summary

  Examples:
    | deliveryOptions          |
    | STANDARD DELIVERY        |
    | TRACKED EXPRESS DELIVERY |
    | SATURDAY DELIVERY        |
    | INTERNATIONAL DELIVERY	 |

Scenario: Viewing the detailed delivery information
  Given I am on the product page
  When I click on the 'Delivery' tab
  Then the delivery section will expand
  And I can see the detailed delivery information for my product
  And the <deliveryArea> shows the <deliveryInfo>

  Examples:
    | deliveryArea	         | deliveryInfo       |
    | MAINLAND UK	           | GET IT BY date     |
    | NON MAINLAND UK	       | ESTIMATED DELIVERY |
    | INTERNATIONAL DELIVERY | ESTIMATED DELIVERY |

Scenario: Viewing the sellers delivery information   
  Given the delivery tab is expanded 
  When I click on the 'This Is Nessie.' link
  Then I will be taken to the sellers homepage 
  And I can see futher infomation about product delivery 
