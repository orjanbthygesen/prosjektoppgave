from __future__ import print_function

from bs4 import BeautifulSoup
from bs4 import SoupStrainer 
from mechanize import Browser

import pprint
import urllib
import time
import csv

url = 'http://www.socialbakers.com/twitter/'

page = urllib.urlopen(url)
page = page.read()
soup = BeautifulSoup(page)

tbody = soup.find_all('td',class_="count")
print(tbody)
# for numbers in tbody.
# 	print(numbers.text)
		