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

conn = None
try:
    conn = mysql.connector.connect(host='localhost',
                                   database='ecommerce',
                                   user='root',
                                   password='')
    if conn.is_connected():
        print('Connected to MySQL database') 
    cursor = conn.cursor()

    options = webdriver.ChromeOptions()
    options.add_argument('--ignore-certificate-errors')
    options.add_argument('--ignore-ssl-errors')
    options.add_argument("--ignore-certificate-errors-spki-list")
    driver = webdriver.Chrome(chrome_options=options)# get chromeDriver
    # driver.set_window_size(960, 640)
    dataFrame = pd.DataFrame()# set dataFrame variable
    data_array = []
    driver.get("https://www.dollarama.com/en-CA/")# set url
    try:# wait for new window
        WebDriverWait(driver, 60).until(EC.visibility_of_element_located((By.CLASS_NAME,"departments")))
    except TimeoutException:
        print('network error')
    department = driver.find_element_by_class_name('departments').find_elements_by_class_name('border')
    home_page_url = driver.current_url
    for i in range(len(department)):
        driver.find_element_by_class_name('departments').find_elements_by_class_name('border')[i].find_elements_by_tag_name('div')[0].find_elements_by_tag_name('a')[0].click()
        print('next page',i)
        try:# wait for new window
            WebDriverWait(driver, 60).until(EC.visibility_of_element_located((By.CLASS_NAME,"search-results")))
        except TimeoutException:
            print('network error')
        while 1:
            products = driver.find_elements_by_xpath("//div[@class='search-results']/div[2]/div")
            product_list_url = driver.current_url
            for products_index in range(len(products)-1):
                try:
                    display_name = driver.find_elements_by_xpath("//div[@class='search-results']/div[2]/div")[products_index].find_element_by_tag_name('div').find_element_by_class_name('product-tile-text').find_element_by_class_name('product-tile-title-ellipsis').find_element_by_tag_name('a').text
                except NoSuchElementException:
                    print('No element')
                driver.find_elements_by_xpath("//div[@class='search-results']/div[2]/div")[products_index].find_element_by_tag_name('div').find_element_by_tag_name('a').click()
                try:# wait for new window
                    WebDriverWait(driver, 60).until(EC.visibility_of_element_located((By.CLASS_NAME,"container")))
                except TimeoutException:
                    print('network error')
                product_detail = driver.find_element_by_xpath("//div[@class='container'][3]/div[@data-oc-controller='Product.ProductDetail']").get_attribute('data-context')
                product_info = json.loads(product_detail)
                try:
                    product_id = product_info['productId']
                    print(product_id)
                except NoSuchElementException:
                    print('No element')
                try:
                    category_id = product_info["CategoryId"]
                except NoSuchElementException:
                    print('No element')
                product_images = []
                try:
                    for k in range(len(product_info["Images"])):
                        product_images.append(product_info["Images"][k]["ThumbnailUrl"])
                except NoSuchElementException:
                    print('No element')
                try:
                    product_full_name = product_info["DisplayName"]
                except NoSuchElementException:
                    print('No element')
                try:
                    product_case_price = product_info["PackPriceDescriptionValue"]
                except NoSuchElementException:
                    print('No element')
                try:
                    product_unit_price = product_info["UnitPriceDescriptiveValue"]
                except NoSuchElementException:
                    print('No element')
                try:
                    product_speciation = [product_info["Specification1"],product_info["Specification2"],product_info["Specification3"],product_info["Specification4"],product_info["Specification5"],product_info["Specification6"]]
                except NoSuchElementException:
                    print('No element')
                related_product_ID = []
                try:
                    related_product = driver.find_element_by_xpath("//div[@class='container'][3]/div[@data-oc-controller='Product.RelatedProducts']").get_attribute('data-context')
                    related_product_info = json.loads(related_product)
                    for index_related_product in range(len(related_product_info["ProductIdentifiers"])):
                        related_product_ID.append(related_product_info["ProductIdentifiers"][index_related_product]["ProductId"])
                except NoSuchElementException:
                    print('No element')
                # data_array.append(str(related_product_ID))
                product_specificaions = []
                try:
                    tr = driver.find_element_by_tag_name('table').find_element_by_tag_name('tbody').find_elements_by_tag_name('tr')
                    for tr_index in range(len(tr)):
                        th = driver.find_element_by_tag_name('table').find_element_by_tag_name('tbody').find_elements_by_tag_name('tr')[tr_index].find_element_by_tag_name('th').text
                        td = driver.find_element_by_tag_name('table').find_element_by_tag_name('tbody').find_elements_by_tag_name('tr')[tr_index].find_element_by_tag_name('td').text
                        product_specificaions.append({th:td})
                except NoSuchElementException:
                    print('No element');                
                select_query = """SELECT id FROM dollarama WHERE product_id = %s"""
                cursor.execute(select_query,(product_id,))
                product_record = cursor.fetchone()
                
                if product_record == None:
                    data_array = []
                    data_array.append((display_name,product_id,category_id,str(product_images), product_full_name, str(product_case_price), str(product_unit_price), str(product_speciation), str(related_product_ID), str(product_specificaions)))
                    query = """INSERT INTO dollarama (display_name, product_id, category_id, product_images, product_full_name, product_case_price, product_unit_price, product_speciation, related_product_ID, product_specificaions) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"""
                    cursor.executemany(query, data_array)
                    data_array = []
                else:
                    update_data_array = ()
                    update_data_array = (display_name,category_id,str(product_images), product_full_name, str(product_case_price), str(product_unit_price), str(product_speciation), str(related_product_ID), str(product_specificaions), product_id)
                    query = """UPDATE dollarama SET display_name = %s, category_id = %s, product_images = %s, product_full_name = %s, product_case_price = %s, product_unit_price = %s, product_speciation = %s, related_product_ID = %s, product_specificaions = %s WHERE product_id = %s """
                    cursor.execute(query, update_data_array)
                    update_data_array = ()
                conn.commit()
                
                driver.get(product_list_url)
                try:# wait for new window
                    WebDriverWait(driver, 30).until(EC.visibility_of_element_located((By.CLASS_NAME,"search-results")))
                except TimeoutException:
                    print('network error')
            if driver.find_elements_by_class_name('pagination-dropdown')[0].find_elements_by_class_name('form-group')[2].find_element_by_tag_name('ul').find_element_by_tag_name('li').get_attribute('class') != 'next  disabled':
                driver.find_elements_by_class_name('pagination-dropdown')[0].find_elements_by_class_name('form-group')[2].find_element_by_tag_name('ul').find_element_by_tag_name('li').find_element_by_tag_name('a').click()
            else:
                break
        driver.get(home_page_url)
except Error as e:
    print(e)
finally:
    if conn is not None and conn.is_connected():
        conn.close()

closeDriver(driver) # driver exit
