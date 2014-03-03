from __future__ import print_function

from bs4 import BeautifulSoup
from bs4 import SoupStrainer 
from mechanize import Browser

import pprint
import urllib
import time
import csv

#!/usr/bin/env python
# -*- coding: utf-8 -*-

urlbase = 'http://www.socialbakers.com/twitter/'

with open('data.csv',"wb") as csvfile:
	writer = csv.writer(csvfile,dialect='excel', delimiter=',')
	# for i in range(1,3):
	i = 1
	### open page and create a soup object with html
	url = urlbase + '/page-'+str(i)
	page = urllib.urlopen(url)
	page = page.read()
	soup = BeautifulSoup(page)
	
	### Find all persons and filter out just the text name
	personlist = soup.find_all('a', class_='noicon with-tooltip')
	for person in personlist:
		persontext = person.text
		# personName.write(persontext.encode('utf-8')+'\n')
		# print(person.text)
	
	### finds all td's and filter out just the followers count
	tbody = soup.find_all('td', class_="count")
	j = 3
	while j <= 102:
		followers = tbody[j].text
		# personFollowers.write(followers.encode('utf-8')+'\n')
		# print(tbody[i].text)
		j += 2

	# writes a row to csv file
	writer.writerow([persontext.encode('utf-8')]+[followers.encode('utf-8')])
	# time.sleep()