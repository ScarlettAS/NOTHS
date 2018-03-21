Scenario: Opening the "MOTHER'S DAY GIFTS" homepage
  Given I am on the not on the high street website
  And I enter "MOTHER'S DAY GIFTS" into the search bar
  When I click find
  Then this page will be displayed: https://www.notonthehighstreet.com/mothers-day

Scenario: Viewing "MOTHER'S DAY GIFTS"

  Given I am on the URL https://www.notonthehighstreet.com/mothers-day
  When I click on a Mother's day <banner>
  Then I will be navigated to notonthehighstreet.com/mothers-day/<URL>
  And I will see a list of mothers day products

  Examples:
    | Banner                     | URL                            |
    | BEST MOTHERS DAY GIFTS     | best-mothers-day-gifts         |
    | MOTHER'S DAY CARDS         | cards-wrap/mothers-day-cards   |
    | BESPOKE                    | personalised                   |
    | GIFTS FOR THE HOME         | home-gifts                     |
    | JEWELLERY                  | jewellery                      |
    | MOTHER'S DAY CARDS & WRAP  | cards-wrap                     |
    | PERSONALISED CARDS         | cards-wrap/personalised-cards  |
