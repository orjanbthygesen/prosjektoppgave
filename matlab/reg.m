%% Import and loglogplot

close all;

% y = k*x + a

filename = '/Users/orjanbthygesen/Git/prosjektoppgave/scraped/twitter_followers_5mars.txt';
y = importdata(filename);

x = (1:1:449950)';

logx = log(x);
logy = log(y);

plot(logx, logy);

%% Full dataset

p_full = polyfit(logx,logy,1);

k_full = p_full(1)
loga_full = p_full(2);
a_full = exp(loga_full);

hold on; 
plot(logx,k_full*logx+loga_full,'r')

%% 1 to 10.000

logx_10 = logx(1:10000);
logy_10 = logy(1:10000);


p_10 = polyfit(logx_10,logy_10,1);

k_10 = p_10(1)
loga_10 = p_10(2);
a_10 = exp(loga_10);

hold on; 
plot(logx,k_10*logx+loga_10,'g')

%% 10.000 to 100.000

logx_100 = logx(10000:100000);
logy_100 = logy(10000:100000);

p_100 = polyfit(logx_100,logy_100,1);

k_100 = p_100(1)
loga_100 = p_100(2);
a_100 = exp(loga_100);

hold on; 
plot(logx_100,k_100*logx_100+loga_100,'y')

%% 10.0000 to 449.950

logx_449950 = logx(100000:449950);
logy_449950 = logy(100000:449950);

p_449950 = polyfit(logx_449950,logy_449950,1);

k_449950 = p_449950(1)
loga_449950 = p_449950(2);
a_449950 = exp(loga_449950);

hold on; 
plot(logx_449950,k_449950*logx_449950+loga_449950,'k')

%% Plot 

title('Twitter Profiles sorted after followers');
xlabel('Twitter Profiles');
ylabel('Number of followers');

hleg1 = legend('Data','1:10.000, slope =  - 0.5344  ', '10.000:100.000, slope = - 1.432' , '100.000:449.950, slope = - 3.554 ', 'All Followers, slope = - 0.5958');





