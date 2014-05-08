close all
clear

n_100 = koko(100)
n_1000 =  koko(1000)
n_10000 = koko(10000)
n_100000 = koko(100000)
n_1000000 = koko(1000000)

hold on
plot(n_100(:,1),n_100(:,2),'b')
hold on
plot(n_1000(:,1),n_1000(:,2),'r')
hold on
plot(n_10000(:,1),n_10000(:,2),'g')
hold on
plot(n_100000(:,1),n_100000(:,2),'k')
grid on 
plot(n_1000000(:,1),n_1000000(:,2),'m')
grid on 

title('Cummulative sales for the 20 percent most sold products in a market followring a power law, with different k values');
xlabel('k values');
ylabel('Percent of cummulative sales the 20% most sold products represents');
leg = legend('Number of products = 100','Number of products = 1.000','Number of products = 10.000','Number of products = 100.000','Number of products = 1.000.000',4);



