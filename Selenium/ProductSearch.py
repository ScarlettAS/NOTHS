from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC

# Loading the browser
browser = webdriver.Chrome()
browser.get("https://www.notonthehighstreet.com")

# Finding and typing in the search box
search_box = browser.find_element_by_id('term');
search_box.send_keys("MOTHER'S DAY GIFTS" + Keys.RETURN);

# Waiting 5 seconds for the page to load, then finding the first link on the mothers day gifts page
category_banner = WebDriverWait(browser, 5).until(EC.presence_of_element_located((By.CLASS_NAME, "category_banner")))
category_banner.click()

# Waiting 5 seconds for the page to load, then finding the filter item for "Free Delivery" and clicking it
free_delivery = WebDriverWait(browser, 5).until(EC.presence_of_element_located((By.XPATH, "//a[@data-tracking-id='free delivery to mainland UK']")))
free_delivery.click()
