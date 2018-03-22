Feature: Filtering by price

  As a Customer I want to be able to filter products between £0 and £50

Background:
  Given I am viewing a list of "MOTHER'S DAY GIFTS"

Scenario: Changing the maximum to £50
  Given the minimum price filter is set to the default of £0
  When I change the price slider maximum to £50
  Then the page will display the current list of products that cost between £0 and £50

Scenario: Changing the minimum to £0
  Given the maximum price filter is to set to £50
  And the minimum price filter is not set to the default of £0
  When I change the price slider minimum to £0
  Then the page will display the current list of products that cost between £0 and £50

Scenario: No search results
  When I change the price slider minimum to £0 and a maximum of £50
  And there are no products in this filter
  Then the page will not display any results
  And I can still change the price filter

Scenario: Saving the price filter to the URL
  When I change the price minimum to <minimum> and maximum to <maximum>
  And I refresh the page
  Then the minimum price filter is <minimum>
  And the maximum price filter is <maximum>

  Examples:
    | minimum | maximum |
    | 0       | 50      |
    | 50      | 100     |
