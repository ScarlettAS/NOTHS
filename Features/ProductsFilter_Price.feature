Feature: Filtering by price

  As a Customer I want to be able to filter products by price

Background:
  Given I am viewing a list of "MOTHER'S DAY GIFTS"
  And I want to view products between £0 and £50

Scenario: Changing the maximum to £50
  Given the minimum price filter is set to the default of £0
  When I change the price slider maximum to £50
  Then the page will display the current list of gifts between £0 and £50

Scenario: Changing the minimum to £0
  Given the maximum price filter is to set to £50
  And the minimum price filter is not set to the default of £0
  When I change the price slider minimum to £0
  Then the page will display the current list of gifts between £0 and £50

Scenario: No search results
  When I change the price slider minimum to £0 and a maxium of £50
  And there are no products in this filter
  Then the page will not display any results
  But I can still change the price filter

Scenario: Reset the filters
  When I change the price minimum and maxium
  And I click the price filter 'reset' link
  Then the price filter will reset to the default

Scenario: Saving the price filter to the URL
  When I change the price slider minimum to £0 and a maxium of £50
  And I refresh the page
  Then the URL will update to include the new price filter
  And I can refresh the page without losing my price filter
