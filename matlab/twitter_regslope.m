%% Import and loglogplot

close all;

filename = '/Users/orjanbthygesen/Git/prosjektoppgave/scraped/twitter_followers_5mars.txt';
y = importdata(filename);

x = (1:1:449950)';

logx = log(x);
logy = log(y);

loglog(x, y, 'b')
axis([0 10.^6 0 10.^9])

%% 1 to 1.00

logx_1 = logx(1:100);
logy_1 = logy(1:100);

p_1 = polyfit(logx_1,logy_1,1);

k_1 = p_1(1)
loga_1 = p_1(2)
a_1= exp(loga_1)

hold on; 
loglog(x(1:100), a_1*x(1:100).^k_1+loga_1)



%% 100 to 10.000

logx_01 = logx(100:10000);
logy_01 = logy(100:10000);

p_01 = polyfit(logx_01,logy_01,1);

k_01 = p_01(1)
loga_01 = p_01(2)
a_01= exp(loga_01)

hold on; 
loglog(x(100:10000), a_01*x(100:10000).^k_01+loga_01, 'g')


%% 10.000 to 100.000

logx_10 = logx(10000:100000);
logy_10 = logy(10000:100000);

p_10 = polyfit(logx_10,logy_10,1);

k_10 = p_10(1)
loga_10 = p_10(2)
a_10 = exp(loga_10)

hold on; 
loglog(x(10000:100000), a_10*x(10000:100000).^k_10+loga_10, 'm')

%% 10.0000 to 449.950

logx_449950 = logx(100000:449950);
logy_449950 = logy(100000:449950);

p_449950 = polyfit(logx_449950,logy_449950,1);

k_449950 = p_449950(1)
loga_449950 = p_449950(2)
a_449950 = exp(loga_449950)

hold on; 
loglog(x(100000:449950), a_449950*x(100000:449950).^k_449950+loga_449950, 'k')


%% 1 to 449.950

p_full = polyfit(logx,logy,1);

k_full = p_full(1)
loga_full = p_full(2)
a_full = exp(loga_full)

hold on; 
loglog(x, a_full*x.^k_full+loga_full, 'r')


%% Plot 

title('Twitter Profiles sorted after number of followers');
xlabel('Twitter Profiles');
ylabel('Number of followers');

hleg1 = legend('Twitter data','1:100, slope = -0.4905','100:10.000, slope = -0.7361  ', '10.000:100.000, slope = -2.2599' , '100.000:449.950, slope = -4.3767 ', 'All Followers, slope = -3.0184', 3);





