%% Import and loglogplot

close all;

% y = k*x + a

filename = '/Users/orjanbthygesen/Git/prosjektoppgave/scraped/youtube_channelSubscribers4.txt';
y = importdata(filename);

x = (1:1:290250)';

logx = log(x);
logy = log(y);

plot(logx, logy);

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
plot(logx_100,k_100*logx_100+loga_100,'m')

%% 10.0000 to 449.950

logx_290250 = logx(100000:290250);
logy_290250 = logy(100000:290250);

p_290250 = polyfit(logx_290250,logy_290250,1);

k_290250 = p_290250(1)
loga_290250 = p_290250(2);
a_290250 = exp(loga_290250);

hold on; 
plot(logx_290250,k_290250*logx_290250+loga_290250,'k')

%% Full dataset

p_full = polyfit(logx,logy,1);

k_full = p_full(1)
loga_full = p_full(2);
a_full = exp(loga_full);

hold on; 
plot(logx,k_full*logx+loga_full,'r')

%% Plot 

title('YouTube channels sorted after number of subscribers');
xlabel('YouTube channels');
ylabel('Number of subscribers');

hleg1 = legend('YouTube data','1:10.000, slope =  -0.7361  ', '10.000:100.000, slope = -2.2599' , '100.000:449.950, slope = -4.3767 ', 'All Followers, slope = -3.0184');





