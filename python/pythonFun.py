#!/usr/bin/env python
from twitter import *

 # consumer_key='QGNUifYXYizARoj2aoFUSQ',
 # consumer_secret='yIEeNiO7SHqHzceyMCbxg7aoN2iZhEXSBUrtOsQ0IEs',
 # access_token_key='61862807-Z5yWkkhYhWWrNiReOiBh0cA8HkAAQZ8ShBTYqnw38',
 # access_token_secret='0DwPjYB029Cb5zNNIjcsHS19UofQGeIOtOExwUOjyi39Y'
conKey = 'QGNUifYXYizARoj2aoFUSQ'
ConSec = 'yIEeNiO7SHqHzceyMCbxg7aoN2iZhEXSBUrtOsQ0IEs'
TokKey = '61862807-Z5yWkkhYhWWrNiReOiBh0cA8HkAAQZ8ShBTYqnw38'
TokSec = '0DwPjYB029Cb5zNNIjcsHS19UofQGeIOtOExwUOjyi39Y'

# Setting up Twitter API
api = twitter(
	auth = OAuth('conKey','ConSec','TokKey','TokSec'))

twitter.statuses.public_timeline()


 