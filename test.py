from bs4 import BeautifulSoup
from mechanize import Browser
import csv
import urllib

url = 'http://www.socialbakers.com/twitter/'
page = urllib.urlopen(url)
page = page.read()

soup = BeautifulSoup(page)

print(soup.prettify())