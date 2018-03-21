Feature: Filtering by free delivery

  As a Customer I want to be able to filter products by free delivery

Background:
  Given I am viewing a list of "MOTHER'S DAY GIFTS"
  And I am delivering to a UK mainland address

Scenario:
  When I select "free delivery to mainland UK"
  Then the page will display the current list with free delivery to mainland UK

Scenario: No search results
  When I select "free delivery to mainland UK"
  And there are no products in this filter
  Then the page will not display any results
  But I can still change the fi lters
