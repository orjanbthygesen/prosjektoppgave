from bs4 import BeautifulSoup
from bs4 import SoupStrainer 

import pprint
import urllib
import time

#!/usr/bin/env python
# -*- coding: utf-8 -*-

urlbase = 'http://www.socialbakers.com/youtube-statistics/by-number-of-subscribers/'

### create .txt-file 
channelName = open("channelNames.txt","wb")
channelSubscr = open("channelSubscribers.txt","wb")

for k in range(1,5):
	### open page and create a soup object with html
	url = urlbase + '/page-'+ str(k)
	page = urllib.urlopen(url)
	page = page.read()
	soup = BeautifulSoup(page)

	nameList = soup.find_all('a', class_='with-tooltip')
	j = 1
	while j < 60:
		channelName.write(nameList[j].text.encode('utf-8')+'\n')
		print(nameList[j].text)
		j += 2
		
	subscrList = soup.find_all('td', class_="count")
	i = 2
	while i < 62:
		channelSubscr.write(subscrList[i].text.encode('utf-8')+'\n')
		print(subscrList[i].text)
		i += 2
	time.sleep(5)

channelName.close()
channelSubscr.close()