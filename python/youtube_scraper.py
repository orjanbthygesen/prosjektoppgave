from bs4 import BeautifulSoup
from bs4 import SoupStrainer 

import pprint
import urllib
import time

#!/usr/bin/env python
# -*- coding: utf-8 -*-

urlbase = 'http://www.socialbakers.com/youtube-statistics/by-number-of-subscribers/'

### create .txt-file 
path = '/Users/orjanbthygesen/Git/prosjektoppgave/python/'

# Uncomment if you want a file with corresponding names
# channelName = open(path+"youtube_channelNames.txt","wb")
channelSubscr = open(path+"youtube_channelSubscribers11.txt","wb")

for k in range(781,40000):
	print("--- Page "+ str(k)+" start ---")
	
	### open page and create a soup object with html
	url = urlbase + '/page-'+ str(k)
	page = urllib.urlopen(url)
	page = page.read()
	soup = BeautifulSoup(page)

	# Uncomment if you want a file with corresponding names
	# nameList = soup.find_all('a', class_='with-tooltip')
	# j = 1
	# while j < 60:
	# 	channelName.write(nameList[j].text.encode('utf-8')+'\n')
	# 	print(nameList[j].text)
	# 	j += 2
	
	subscrList = soup.find_all('td', class_="count")
	i = 2
	while i < 62:
		# temp = subscrList[i].text
		# channelSubscr.write(temp.encode('utf-8')+'\n')
		channelSubscr.write(subscrList[i].text.encode('utf-8')+'\n')
		i += 2

	print("--- Page "+ str(k)+ " end ---")

	# time.sleep(0)

# channelName.close()
channelSubscr.close()
