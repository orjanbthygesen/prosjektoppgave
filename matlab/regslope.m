close all;

a = (1:1:290250);
b = a';
yt2 = [b,yt];

loglog(yt, '.b')
hold on

profile = yt2(:,1);
followers = yt2(:,2);
f = fit(profile,followers,'power1')
plot(f,'-r')
hold on

yt10000_100000 = yt2(10000:100000,:);
profile2 = yt10000_100000(:,1);
followers2 = yt10000_100000(:,2);
f2 = fit(profile2,followers2,'power1')
plot(f2, '-y')
hold on

yt1000_10000 = yt2(1000:10000,:);
profile3 = yt1000_10000(:,1);
followers3 = yt1000_10000(:,2);
f3 = fit(profile3,followers3, 'power1')
plot(f3, '-g')
hold on

yt0_1000 = yt2(1:1000,:);
profile4 = yt0_1000(:,1);
followers4 = yt0_1000(:,2);
f3 = fit(profile4,followers4, 'power1')
plot(f3,'-k')
hold on


title('YouTube Channels sorted after suscribers');
xlabel('YouTube Channels');
ylabel('Number of suscribers');

hleg1 = legend('Data','All Subscribers', '10.000:100.000','1.000:10.000','1:1.000');
