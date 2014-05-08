import math

results = open("twitter_stats.txt","wb")

pathToFile = '/Users/orjanbthygesen/Git/prosjektoppgave/scraped/'
fileName = 'youtube_channelSubscribers4.txt'
# fileName = 'twitter_followers_5mars.txt'

filePath = pathToFile+fileName

cat1 = 0
cat2 = 0
cat3 = 0
cat4 = 0
cat5 = 0
cat6 = 0
cat7 = 0
cat8 = 0

cumulative1 = 0
cumulative2 = 0 
cumulative3 = 0 
cumulative4 = 0 
cumulative5 = 0 
cumulative6 = 0 
cumulative7 = 0 
cumulative8 = 0

## Returns number of digits in number
def checkNumSize(n):
	digit = int(math.log10(n))+1
	return digit

## Takes in a file, reads its lines and returns a list with all lines
def readLines(fileToRead):
	with open(fileToRead) as f:
		lines = f.read().splitlines()
	return lines

## Realy ugly shit
obj = readLines(filePath)
for line in obj:
	floatLine = float(line) 
	if(checkNumSize(floatLine) == 1):
		cat1 += 1
		cumulative1 += floatLine
	elif(checkNumSize(floatLine) == 2):
		cat2 += 1
		cumulative2 += floatLine
	elif(checkNumSize(floatLine) == 3):
		cat3 += 1
		cumulative3 += floatLine
	elif(checkNumSize(floatLine) == 4):
		cat4 += 1
		cumulative4 += floatLine
	elif(checkNumSize(floatLine) == 5):
		cat5 += 1
		cumulative5 += floatLine
	elif(checkNumSize(floatLine) == 6):
		cat6 += 1
		cumulative6 += floatLine
	elif(checkNumSize(floatLine) == 7):
		cat7 += 1
		cumulative7 += floatLine
	elif(checkNumSize(floatLine) == 8):
		cat8 += 1
		cumulative8 += floatLine

print cat1
print cumulative1

print cat2
print cumulative2

print cat3
print cumulative3

print cat4
print cumulative4

print cat5
print cumulative5

print cat6
print cumulative6

print cat7
print cumulative7

print cat8
print cumulative8