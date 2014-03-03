from __future__ import print_function

from bs4 import BeautifulSoup
from bs4 import SoupStrainer 
from mechanize import Browser

import csv
import pprint
import urllib

#!/usr/bin/env python
# -*- coding: utf-8 -*-

urlbase = 'http://www.socialbakers.com/twitter/'
pageNumber = 89

### open page and create a soup object with html
url = urlbase + '/page-'+ str(pageNumber)
page = urllib.urlopen(url)
page = page.read()
soup = BeautifulSoup(page)

### create .txt-file 
personName = open("personNames.txt","wb")
personFollowers = open("personFollowers.txt","wb")

### Find all persons and filter out just the text name
personlist = soup.find_all('a', class_='noicon with-tooltip')
for person in personlist:
	persontext = person.text
	personName.write(persontext.encode('utf-8')+'\n')
	# print(person.text)

### finds all td's and filter out just the followers count
tbody = soup.find_all('td', class_="count")
i = 3
while i <= 102:
	followers = tbody[i].text
	personFollowers.write(followers.encode('utf-8')+'\n')
	# print(tbody[i].text)
	i += 2

personName.close()
personFollowers.close()