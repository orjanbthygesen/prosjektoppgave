import twitter

#!/usr/bin/env python
# -*- coding: utf-8 -*-

consumer_key='erIcTe72I03XTAadK1fg',
consumer_secret='sW9JEEgBj1khqDAtsn8GmPLkGBBomMgD1sIt1nM88',
access_token_key='erIcTe72I03XTAadK1fg',
access_token_secret='sW9JEEgBj1khqDAtsn8GmPLkGBBomMgD1sIt1nM88'

api = twitter.Api(consumer_key,consumer_secret,access_token_key,access_token_secret)

# print(api.VerifyCredentials().encode('utf-8'))

statuses = api.GetUserTimeline('orjanbthygesen')
print [s.text for s in statuses]