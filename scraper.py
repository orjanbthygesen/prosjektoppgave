from bs4 import BeautifulSoup
from bs4 import SoupStrainer 
from mechanize import Browser
import csv
import pprint
import urllib

url = 'http://www.socialbakers.com/twitter/'
page = urllib.urlopen(url)
page = page.read()
soup = BeautifulSoup(page)

person = soup.find('a', class_='noicon with-tooltip')

for child in person.children:
	print(child)

# # table = soup.find_all('table', class_='common-table')

# text = soup.get_text()


# datafil = open("data.txt","wb")
# datafil.write(text)
# datafil.close()















