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
import mysql.connector
from mysql.connector import MySQLConnection, Error
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
driver.get("https://www.canadiantire.ca/en")# set url
product_url_list = []
try:# wait for new window
    WebDriverWait(driver, 120).until(EC.visibility_of_element_located((By.CLASS_NAME,"base-page")))
    print('waiting done')
except TimeoutException:
    print('network error')
categories = driver.find_element_by_class_name('base-page').find_element_by_tag_name('main').find_elements_by_class_name('column-control')
home_page_url = driver.current_url
print(len(categories))
for i in range(len(categories)-1):
    sub_categories = driver.find_element_by_class_name('base-page').find_element_by_tag_name('main').find_elements_by_class_name('column-control')[i].find_element_by_class_name('column-control__body').find_element_by_class_name('column-control__body-inner').find_elements_by_class_name('column-control__column')
    home_url = driver.current_url
    print(len(sub_categories))
    for j in range(len(sub_categories)):
        if i==1 or j == 1 or j == 2 or j == 3 :
            continue;
        driver.find_element_by_class_name('base-page').find_element_by_tag_name('main').find_elements_by_class_name('column-control')[i].find_element_by_class_name('column-control__body').find_element_by_class_name('column-control__body-inner').find_elements_by_class_name('column-control__column')[j].find_element_by_class_name('column-control__column-par').find_elements_by_class_name('parbase')[0].find_element_by_tag_name('div').find_element_by_class_name('banner-builder__container').find_element_by_tag_name('a').click()     
        if i == 0:
            try:# wait for new window
                WebDriverWait(driver, 60).until(EC.visibility_of_element_located((By.CLASS_NAME,"search-results-grid__content")))
            except TimeoutException:
                print('network error')
            products = driver.find_element_by_class_name('search-results-grid__content').find_elements_by_class_name('temporary-grid-item')
            product_category_url = driver.current_url
            for index_product in range(len(products)):
                urls = driver.find_element_by_class_name('search-results-grid__content').find_elements_by_class_name('temporary-grid-item')[index_product].find_element_by_class_name('product-tile-srp').find_element_by_tag_name('a').get_attribute('href')
                product_url_list.append(urls)
                print(urls)
            driver.get(home_url)
        elif i == 1 and j == 0:
            try:# wait for new window
                WebDriverWait(driver, 60).until(EC.visibility_of_element_located((By.CLASS_NAME,"search-results-grid__content")))
            except TimeoutException:
                print('network error')
            products = driver.find_element_by_class_name('search-results-grid__content').find_elements_by_class_name('temporary-grid-item')
            product_category_url = driver.current_url
            for index_product in range(len(products)):
                try:
                    urls = driver.find_element_by_class_name('search-results-grid__content').find_elements_by_class_name('temporary-grid-item')[index_product].find_element_by_class_name('product-tile-srp').find_element_by_tag_name('a').get_attribute('href')
                    product_url_list.append(urls)
                    print(urls)
                except NoSuchElementException:
                    continue
            driver.get(home_url)
        elif i==1 and j==1:
            continue;
        elif i==1 and j==2:
            continue
            # try:# wait for new window
            #     WebDriverWait(driver, 60).until(EC.visibility_of_element_located((By.CLASS_NAME,"html-wrapper__content-wrapper")))
            # except TimeoutException:
            #     print('network error')
            # column = driver.find_elements_by_class_name('col15')
            # column_url = driver.current_url
            # for k in range(len(column)):
                # try:
                #     driver.find_elements_by_class_name('col15')[k].find_element_by_tag_name('a').click()
                # except NoSuchElementException:
                #     continue
                # try:# wait for new window
                #     WebDriverWait(driver, 60).until(EC.visibility_of_element_located((By.CLASS_NAME,"search-results-grid__content")))
                # except TimeoutException:
                #     driver.get(column_url)  
                # try:  
                #     products = driver.find_element_by_class_name('search-results-grid__content').find_elements_by_class_name('temporary-grid-item')
                #     product_category_url = driver.current_url
                #     for index_product in range(len(products)):
                #         urls = driver.find_element_by_class_name('search-results-grid__content').find_elements_by_class_name('temporary-grid-item')[index_product].find_element_by_class_name('product-tile-srp').find_element_by_tag_name('a').get_attribute('href')
                #         product_url_list.append(urls)
                #         print(urls)
                # except NoSuchElementException:
                #     continue
                # driver.get(column_url)

product_data_list = []

try:
    conn = mysql.connector.connect(host='localhost',
                                   database='ecommerce',
                                   user='root',
                                   password='')
    if conn.is_connected():
        print('Connected to MySQL database') 
    cursor = conn.cursor()
    for product_index in range(len(product_url_list)):
        driver.get(product_url_list[product_index])
        try:# wait for new window
            WebDriverWait(driver, 60).until(EC.visibility_of_element_located((By.CLASS_NAME,"pdp-product-image-and-buy-box__inner")))
        except TimeoutException:
            continue
        try:
            product_config = driver.find_elements_by_class_name('product-header-badge__badges')[0].get_attribute('data-config')
            product_id = json.loads(product_config)['pCode']
        except NoSuchElementException:
            print('No product_id')
            product_id = ''
        try:
            product_name = driver.find_element_by_class_name('pdp-product-image-and-buy-box__inner').find_element_by_class_name('pdp-header').find_element_by_class_name('product-pdp-header').find_element_by_class_name('pdp-header').find_element_by_class_name('pdp-header__inner').find_element_by_class_name('pdp-header__main').find_element_by_tag_name('h1').text
        except NoSuchElementException:
            product_name = ''
            print('No product_name')
        product_images = []
        try:
            image = driver.find_element_by_id('pdp-product-image-s7viewer').find_element_by_class_name('pdp-product-image__image').find_element_by_tag_name('picture').find_elements_by_tag_name('source')
            for index in range(len(image)):
                product_images.append(driver.find_element_by_id('pdp-product-image-s7viewer').find_element_by_class_name('pdp-product-image__image').find_element_by_tag_name('picture').find_elements_by_tag_name('source')[index].get_attribute('srcset'))
        except NoSuchElementException:
            product_images = ''
            print('No product_images')
        product_category = []
        try:
            category_list = driver.find_element_by_class_name('global-breadcrumb__items-wrapper').find_element_by_tag_name('ul').find_elements_by_tag_name('li')
            for categories_index in range(len(category_list)):
                product_category.append(driver.find_element_by_class_name('global-breadcrumb__items-wrapper').find_element_by_tag_name('ul').find_elements_by_tag_name('li')[categories_index].find_element_by_tag_name('a').text)
        except NoSuchElementException:
            product_category = ''
            print('No product_category')
        
        try:
            produt_last_price = driver.find_element_by_class_name('price__reg-value').text
        except NoSuchElementException:
            produt_last_price = ''
            print('No produt_last_price')
        try:
            product_current_price = driver.find_element_by_class_name('price__reg-value').text
        except NoSuchElementException:
            product_current_price = ''
            print('No product_current_price')
        
        try:
            product_store = str(driver.find_element_by_class_name('stock-status__info--bold').find_element_by_tag_name('span').text) + str(driver.find_element_by_class_name('stock-status__info--bold').text)
        except NoSuchElementException:
            product_store = ''
            print('No product_store')
        product_feature = []
        try:
            feature_list = driver.find_element_by_class_name('pdp-details-features__items').find_element_by_tag_name('ul').find_elements_by_tag_name('li')
            for feature_index in range(len(feature_list)):
                driver.find_element_by_class_name('pdp-details-features__items').find_element_by_tag_name('ul').find_elements_by_tag_name('li')[feature_index].text
        except NoSuchElementException:
            product_feature = ''
            print('No product_feature')
        product_specification = []
        try:
            specification_list = driver.find_element_by_class_name('pdp-details-specifications__items').find_elements_by_class_name('pdp-details-specifications__item')
            for specification_index in range(len(specification_list)):
                label = driver.find_element_by_class_name('pdp-details-specifications__items').find_elements_by_class_name('pdp-details-specifications__item')[specification_index].find_element_by_class_name('pdp-details-specifications__item__label').text
                value = driver.find_element_by_class_name('pdp-details-specifications__items').find_elements_by_class_name('pdp-details-specifications__item')[specification_index].find_element_by_class_name('pdp-details-specifications__item__value').text
                product_specification.append({label:value})
        except NoSuchElementException:
            product_specification = ''
            print('No specification_list')
        related_products = []
        try:
            related_list = driver.find_element_by_class_name('owl-stage-outer').find_element_by_class_name('owl-stage').find_elements_by_class_name('owl-item')
            for related_index in range(len(related_list)):
                print(driver.find_element_by_class_name('owl-stage-outer').find_element_by_class_name('owl-stage').find_elements_by_class_name('owl-item')[related_index].find_element_by_class_name('product-tile--light').get_attribute('inner_html'))
                related_products.append(driver.find_element_by_class_name('owl-stage-outer').find_element_by_class_name('owl-stage').find_elements_by_class_name('owl-item')[related_index].find_element_by_class_name('product-tile--light').get_attribute('data-productid'))
        except NoSuchElementException:
            related_products = ''
            print('No related_list')
        print(product_id, product_name, product_images, product_category, produt_last_price, product_current_price, product_store, product_feature, product_specification, related_list)
        # select_query = """SELECT id FROM canadiantire WHERE product_id = %s"""
        # cursor.execute(select_query,(product_id,))
        # product_record = cursor.fetchone()
        # if product_record == None:
        #     product_data_list = []
        #     product_data_list.append((product_id,product_name,str(product_images), str(product_category), str(produt_last_price), str(product_current_price), str(product_store), str(product_feature), str(product_specification), str(related_list)))
        #     query = """INSERT INTO canadiantire (product_id, product_name, product_images, product_category, produt_last_price, product_current_price, product_store, product_feature, product_specification, related_list) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"""
        #     cursor.executemany(query, product_data_list)
        #     product_data_list = []
        # else:
        #     update_data_array = ()
        #     update_data_array = (product_name,str(product_images), str(product_category), str(produt_last_price), str(product_current_price), str(product_store), str(product_feature), str(product_specification), str(related_list), product_id)
        #     query = """UPDATE canadiantire SET product_name = %s, product_images = %s, product_category = %s, produt_last_price = %s, product_current_price = %s, product_store = %s, product_feature = %s, product_specification = %s, related_list = %s WHERE product_id = %s """
        #     cursor.execute(query, update_data_array)
        #     update_data_array = ()
        # conn.commit()
except Error as e:
    print(e)
finally:
    if conn is not None and conn.is_connected():
        conn.close()
