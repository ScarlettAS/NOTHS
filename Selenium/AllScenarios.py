from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.action_chains import ActionChains
import time

# Loading the browser
browser = webdriver.Chrome()
browser.get("https://www.notonthehighstreet.com")

# Finding and typing in the search box
search_box = browser.find_element_by_id('term');
search_box.send_keys("MOTHER'S DAY GIFTS" + Keys.RETURN);

# Waiting 5 seconds for the page to load, then finding the first link on the mothers day gifts page
category_banner = WebDriverWait(browser, 5).until(EC.presence_of_element_located((By.CLASS_NAME, "category_banner")))
category_banner.click()

# Because the screen has a slider, you have to drag and drop it.
# Here you wait 5 seconds for the page to load, and find the slider
move = ActionChains(browser);
slider = WebDriverWait(browser, 5).until(EC.presence_of_element_located((By.CLASS_NAME, "noUi-handle-upper")))

# Then you move it to the left
move.click_and_hold(slider).move_by_offset(-175, 0).release().perform();

# Waiting 5 seconds for the page to load, then finding the filter item for "Free Delivery" and clicking it
free_delivery = WebDriverWait(browser, 5).until(EC.presence_of_element_located((By.XPATH, "//a[@data-tracking-id='free delivery to mainland UK']")))
free_delivery.click()

# Waits 2 seconds because page isnt loaded yet
time.sleep(2)

# After the slider is moved, wait 5 seconds for the page to reload and press on the first product
product = WebDriverWait(browser, 5).until(EC.presence_of_element_located((By.CLASS_NAME, "product_link")))
product.click();

# Wait 5 seconds, find delivery section and click it
delivery_information = WebDriverWait(browser, 5).until(EC.presence_of_element_located((By.ID, "delivery_tab_item")))
delivery_information.click()
