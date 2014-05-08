import tweepy

conKey = 'QGNUifYXYizARoj2aoFUSQ'
ConSec = 'yIEeNiO7SHqHzceyMCbxg7aoN2iZhEXSBUrtOsQ0IEs'
TokKey = '61862807-Z5yWkkhYhWWrNiReOiBh0cA8HkAAQZ8ShBTYqnw38'
TokSec = '0DwPjYB029Cb5zNNIjcsHS19UofQGeIOtOExwUOjyi39Y'

auth = tweepy.OAuthHandler(conKey, ConSec)
auth.set_access_token(TokKey, TokSec)

api = tweepy.API(auth)

user = tweepy.api.get_user('twitter')


# public_tweets = api.home_timeline()
# for tweet in public_tweets:
#     print tweet.text