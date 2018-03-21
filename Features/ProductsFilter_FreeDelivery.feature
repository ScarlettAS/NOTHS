Feature: Filtering by free delivery

  As a Customer I want to be able to filter products by free delivery

Background:
  Given I am viewing a list of "MOTHER'S DAY GIFTS"
  And I am delivering to a UK mainland address

Scenario: Add filter by free delivery to mainland UK
  Given no delivery options have been selected
  When I select the filter "free delivery to mainland UK"
  Then the list will be refreshed
  And only products that qualify for free delivery will be shown

Scenario: Modify filter by free delivery to mainland UK
  Given I have selected the filer "express delivery"
  When I change the filter to "free delivery to mainland UK"
  Then the filter "express delivery" will be unchecked
  And the list will be refreshed
  And only products that qualify for free delivery will be shown

Scenario: No search results
  When I select "free delivery to mainland UK"
  And there are no products in this filter
  Then the page will not display any results
  And I can edit the filters

Scenario: Saving the delivery filter to the URL
  When I select "free delivery to mainland UK"
  And I refresh the page
  Then the delivery option filter is remembered
  And only products that qualify for free delivery will be shown
