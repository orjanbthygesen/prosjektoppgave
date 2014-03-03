#!/usr/bin/env python
import csv
import random

with open('data.csv',"wb") as csvfile:
	#reader = csv.reader(file)
	writer = csv.writer(csvfile,dialect='excel', delimiter=',')
	#data = [["navn","Tall"]]
	for i in range(1,5):
		randomTall1 = random.random()*10
		writer.writerow(['orjan']+[randomTall1])
	# file.close()