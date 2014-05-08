filename1 = '/home/orjan/Prosjektoppgave/scraped/twitter_followers_5mars.txt';
filename2 = '/Users/orjanbthygesen/Git/prosjektoppgave/scraped/twitter_followers_5mars.txt';
% imports and defines datasets

ds_449950 = importdata(filename2);
ds_100K = ds_449950;
ds_100K(100001:449950,:) = [];
ds_10K = ds_100K;
ds_10K(10001:100000,:) = [];
ds_5K = ds_10K;
ds_5K(5001:10000,:) = [];
ds_2K = ds_5K;
ds_2K(2001:5000,:) = [];
