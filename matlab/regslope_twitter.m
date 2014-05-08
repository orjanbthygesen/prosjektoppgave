close all;

filename = '/Users/orjanbthygesen/Git/prosjektoppgave/scraped/twitter_followers_5mars.txt';
twitter = importdata(filename);

a = (1:1:449950);
b = a';
tw = [b,twitter];

loglog(twitter, '.b')
hold on

tw0_10000 = tw(1:10000,:);
profile3 = tw0_10000(:,1);
followers3 = tw0_10000(:,2);
f3 = fit(profile3,followers3, 'power1')
plot(f3, '-k')
hold on

tw10000_100000 = tw(10000:100000,:);
profile2 = tw10000_100000(:,1);
followers2 = tw10000_100000(:,2);
f2 = fit(profile2,followers2,'power1')
plot(f2, '-g')
hold on

tw100000_449950 = tw(100000:449950,:);
profile5 = tw100000_449950(:,1);
followers5 = tw100000_449950(:,2);
f2 = fit(profile5,followers5,'power1')
plot(f2, '-y')
hold on

profile = tw(:,1);
followers = tw(:,2);
f = fit(profile,followers,'power1')
plot(f,'-r')
hold on

% y=a*x^b = k*v^e
 
% c =polyfit(log(b),log(twitter),1)
% k =exp(c(2))
% e =p(1)


title('Twitter Profiles sorted after followers');
xlabel('Twitter Profiles');
ylabel('Number of followers');

hleg1 = legend('Data','1:10.000, slope =  - 0.5344  ', '10.000:100.000, slope = - 1.432' , '100.000:449.950, slope = - 3.554 ', 'All Followers, slope = - 0.5958');
