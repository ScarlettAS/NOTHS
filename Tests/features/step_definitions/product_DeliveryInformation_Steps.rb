require 'selenium-webdriver'
require 'minitest/spec'

browser = Selenium::WebDriver.for :chrome
page_url = ""

Given(/^the product page URL is "(.*?)"$/) do |url|
  page_url = url
end


When(/^I navigate to the product page$/) do
  browser.navigate.to page_url
end

Then(/^the delivery summary is shown$/) do
  delivery_summary = browser.find_element(id: "delivery_summary")
  assert(delivery_summary.displayed?)
end

And(/^I click on the delivery tab$/) do
  delivery_tab_item = browser.find_element(id: "delivery_tab_item")
  delivery_tab_item.click
end

Then (/^I can see the detailed delivery information$/) do
  delivery_tab = browser.find_element(id: "delivery_tab")
  assert(delivery_tab.displayed?)
end