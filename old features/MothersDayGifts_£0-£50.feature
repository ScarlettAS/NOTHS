Feature: Mother's day gifts between £0 and £50
  As a Customer
  I want to view "MOTHER'S DAY GIFTS" products between the prices £0 and £50
  So that I can purchase one of them

  Scenario: Changing the maximum to £50
  Given I have navigated to a page displaying mothers day gifts
  And the minimum price is set to the default of £0
  When I change the price slider maximum to £50
  Then the page will display the current list of gifts between £0 and £50

  Scenario: Changing the minimum to £0
  Given I have navigated to a page displaying mothers day gifts
  And the maximum price filter is to set to £50
  And the minimum filter is not set to the default of £0
  When I change the price slider minimum to £0
  Then the page will display the current list of gifts between £0 and £50

  Scenario: No search results
  Given I have navigated to a page displaying mothers day gifts
  When I change the price slider minimum to £0 and a maxium of £50
  And there are no products in this filter
  Then the page will not display any results
  But I can still change the filters

  # Scenario: Other filters
  # Scenario: Refreshing the page
  Given I am viewing mothers day gifts between £0 and £50
  And I refresh the webpage
  Then the price filters are still set at £0 and £50

  # URL manipulation
  # Browser testing
  # Loading spinner
  # reset is out of scope
  # searching for mother day gifts is out of scope 
