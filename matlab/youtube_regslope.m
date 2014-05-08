%% Import and loglogplot

close all;

% y = k*x + a

filename = '/Users/orjanbthygesen/Git/prosjektoppgave/scraped/youtube_channelSubscribers4.txt';
y = importdata(filename);

x = (1:1:290250)';

logx = log(x);
logy = log(y);

loglog(x, y, 'b')
axis([1 10.^6 10.^2 10.^8])

%% 1 to 100

logx_01 = logx(1:100);
logy_01 = logy(1:100);

p_01 = polyfit(logx_01,logy_01,1);

k_01 = p_01(1)
loga_01 = p_01(2);
a_01= exp(loga_01);

hold on; 
loglog(x(1:100), a_01*x(1:100).^k_01+loga_01, 'g')


%% 100 to 10.000

logx_10 = logx(100:10000);
logy_10 = logy(100:10000);

p_10 = polyfit(logx_10,logy_10,1);

k_10 = p_10(1)
loga_10 = p_10(2);
a_10 = exp(loga_10);

hold on; 
loglog(x(100:10000), a_10*x(100:10000).^k_10+loga_10, 'm')

%% 10.0000 to 290.250

logx_290250 = logx(10000:290250);
logy_290250 = logy(10000:290250);

p_290250 = polyfit(logx_290250,logy_290250,1);

k_290250 = p_290250(1)
loga_290250 = p_290250(2);
a_290250 = exp(loga_290250);

hold on; 
loglog(x(10000:290250), a_290250*x(10000:290250).^k_290250+loga_290250, 'k')

%% Full dataset

p_full = polyfit(logx,logy,1);

k_full = p_full(1)
loga_full = p_full(2);
a_full = exp(loga_full);

hold on; 
loglog(x, a_full*x.^k_full+loga_full, 'r')

%% Plot 

title('YouTube channels sorted after number of subscribers');
xlabel('YouTube channels');
ylabel('Number of subscribers');

hleg1 = legend('YouTube data','1:100, slope =   -0.4493  ', '100:10.000, slope = -1.0452' , '10.000:290.250, slope = -1.4414 ', 'All Followers, slope = -1.3881', 3);



   



