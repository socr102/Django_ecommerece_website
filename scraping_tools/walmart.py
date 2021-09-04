from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium.common.exceptions import TimeoutException
from selenium.common.exceptions import NoSuchElementException
import pandas as pd
import csv
import time
import sys
import os
import json
from datetime import datetime, timezone
# import mysql.connector
# from mysql.connector import MySQLConnection, Error
from selenium.webdriver.support.select import Select

def closeDriver(driver):# function that driver exit
    print("\n\nEnding Scrapper Session")
    driver.close()

options = webdriver.ChromeOptions()
options.add_argument('--ignore-certificate-errors')
options.add_argument('--ignore-ssl-errors')
options.add_argument("--ignore-certificate-errors-spki-list")
driver = webdriver.Chrome(chrome_options=options)# get chromeDriver
# driver.set_window_size(960, 640)
dataFrame = pd.DataFrame()# set dataFrame variable
data_array = []
driver.get("https://www.walmart.com/")# set url
try:# wait for new window
    WebDriverWait(driver, 120).until(EC.visibility_of_element_located((By.ID,"e9951ce6-c8ae-4305-a36b-4585b234ddf2-expander")))
    print('waiting done')
except TimeoutException:
    print('network error')
categories = driver.find_element_by_id('e9951ce6-c8ae-4305-a36b-4585b234ddf2-expander').find_elements_by_class_name('TempoCategoryTile')
home_page_url = driver.current_url
print(len(categories))
for i in range(len(categories)):
    if i == 0:
        continue
    driver.find_element_by_id('e9951ce6-c8ae-4305-a36b-4585b234ddf2-expander').find_elements_by_class_name('TempoCategoryTile')[i].find_element_by_tag_name('a').click()
    print('next page',i)
    try:# wait for new window
        WebDriverWait(driver, 60).until(EC.visibility_of_element_located((By.ID,"cp-center-module-0")))
        print('waiting done')
    except TimeoutException:
        print('network error')
    try:
        sub_categories = driver.find_element_by_id('searchProductResult').find_element_by_tag_name('ul').find_elements_by_tag_name('li')
        sub_Categories_url = driver.current_url
        for index_sub_categories in range(len(sub_categories)):
            driver.find_element_by_id('searchProductResult').find_element_by_tag_name('ul').find_elements_by_tag_name('li')[index_sub_categories].find_element_by_class_name('search-result-gridview-item-wrapper').find_element_by_class_name('search-result-gridview-item').find_elements_by_tag_name('div')[1].find_element_by_tag_name('a').click()
    except NoSuchElementException:
        try:
            if driver.find_element_by_id('cp-center-module-0').find_element_by_class_name('TempoTileCollapsible').find_element_by_class_name('TempoTileCollapsible-header').find_element_by_class_name('ModuleHeader').find_element_by_tag_name('h2').text == 'Shop by Category':
                sub_categories = driver.find_element_by_id('cp-center-module-0').find_element_by_class_name('TempoTileCollapsible').find_element_by_class_name('TempoTileCollapsible-expander').find_elements_by_class_name('TempoCategoryTile')
        except NoSuchElementException:
                sub_categories = driver.find_element_by_id('cp-center-module-1').find_element_by_class_name('TempoTileCollapsible').find_element_by_class_name('TempoTileCollapsible-expander').find_elements_by_class_name('TempoCategoryTile')
    sub_Categories_url = driver.current_url
    for products_index in range(len(sub_categories)):
        sub_categories[products_index].find_element_by_tag_name('a').click()
        try:# wait for new window
            WebDriverWait(driver, 60).until(EC.visibility_of_element_located((By.ID,"cp-center-module-0")))
            print('waiting done')
        except TimeoutException:
            print('network error')
        print(driver.find_elements_by_class_name('slider_list')[1].get_attribute('inner_html'))
        # product_depart_info = driver.find_element_by_id('cp-center-module-0').find_element_by_class_name('TempoTileCarousel').find_element_by_class_name('persistent-controls')
        # product_detail = driver.find_element_by_xpath("//div[@class='container'][3]/div[@data-oc-controller='Product.ProductDetail']").get_attribute('data-context')
        
        driver.get(product_list_url)
        try:# wait for new window
            WebDriverWait(driver, 30).until(EC.visibility_of_element_located((By.CLASS_NAME,"search-results")))
            print('waiting done')
        except TimeoutException:
            print('network error')
    if driver.find_elements_by_class_name('pagination-dropdown')[0].find_elements_by_class_name('form-group')[2].find_element_by_tag_name('ul').find_element_by_tag_name('li').get_attribute('class') != 'next  disabled':
        driver.find_elements_by_class_name('pagination-dropdown')[0].find_elements_by_class_name('form-group')[2].find_element_by_tag_name('ul').find_element_by_tag_name('li').find_element_by_tag_name('a').click()
    else:
        break
    driver.get(home_page_url)


# closeDriver(driver) # driver exit
