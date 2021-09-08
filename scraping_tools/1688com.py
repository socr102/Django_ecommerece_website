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
# driver.set_window_size(358, 538)
dataFrame = pd.DataFrame()# set dataFrame variable
data_array = []
driver.get("https://air.1688.com/show/shili/factory/index.html?__pageId__=21464&cms_id=21464&__existtitle__=1&enableWK=YES&_wvUseWKWebView=true&traceId=2107740f16310428464235835e998b&spm=a2630w.24004300a2630w.1150842009743.0&__track_uuid=1150842009743")# set url\
try:# wait for new window
    WebDriverWait(driver, 120).until(EC.visibility_of_element_located((By.CLASS_NAME,"rax-scrollview-content-container-horizontal")))
    print('waiting done')
except TimeoutException:
    print('network error')
categories = driver.find_elements_by_xpath("//div[@id='recyclerview']/div[11]/div[1]/div[2]/div[1]/div[1]/div[1]/div")
print(len(categories))
products = driver.find_elements_by_xpath("//div[@id='recyclerview']/div[12]/div[1]/div[@data-tracker='tracker-factory-item']")
for item_index in range(len(products)):
    driver.find_elements_by_xpath("//div[@id='recyclerview']/div[12]/div[1]/div[@data-tracker='tracker-factory-item']")[item_index].find_elements_by_tag_name('a')[1].click()
    try:# wait for new window
        WebDriverWait(driver, 120).until(EC.visibility_of_element_located((By.ID,"recyclerview")))
        print('waiting done')
    except TimeoutException:
        print('network error')
    driver.find_element_by_xpath("//div[@id='recyclerview']/div[5]")