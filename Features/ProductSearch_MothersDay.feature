Feature: Search for a product

  As a Customer I want to view a list of "MOTHER'S DAY GIFTS"

Scenario: Searching for "MOTHER'S DAY GIFTS"
  Given I am on the Not on the high street website
  And I search for "MOTHER'S DAY GIFTS"
  Then I will see the mothers day gifts homepage 'https://www.notonthehighstreet.com/mothers-day'

Scenario Outline: Viewing a list of "MOTHER'S DAY GIFTS"
  Given I am on the the mothers day gifts homepage
  When I click on a Mother's day <banner>
  Then I will be navigated to notonthehighstreet.com/mothers-day/<URL>
  And I will see a list of mothers day products

  Examples:
    | banner                     | URL                            |
    | BEST MOTHERS DAY GIFTS     | best-mothers-day-gifts         |
    | MOTHER'S DAY CARDS         | cards-wrap/mothers-day-cards   |
    | BESPOKE                    | personalised                   |
    | GIFTS FOR THE HOME         | home-gifts                     |
    | JEWELLERY                  | jewellery                      |
    | MOTHER'S DAY CARDS & WRAP  | cards-wrap                     |
    | PERSONALISED CARDS         | cards-wrap/personalised-cards  |
