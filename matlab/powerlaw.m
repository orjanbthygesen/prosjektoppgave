close all

%% arguments

x=[1:1:100]';

k1=-0.5;
k1=-0.75;
k2=-1;
k3=-1.25;
k4=-1.5;
k5=-1.75;

y1 = x.^k1;
y2 = x.^k2;
y3 = x.^k3;
y4 = x.^k4;
y5 = x.^k5;

%% figure 1

figure(1);
plot(y1, 'b')
hold on
plot(y2,'r')
hold on
plot(y3,'m')
hold on
plot(y4,'g')
hold on
plot(y5,'k')
hold on

title('Power law distributions with differenct k-values');
hleg1 = legend('k=-0.5','k=-0.75', 'k=-1','k=-1.25', 'k=-1.5', 'k=-1.75');

%% figure 2 - power law loglog plot
figure(2);
loglog(y1, 'b')
hold on
loglog(y2,'r')
hold on
loglog(y3,'m')
hold on
loglog(y4,'g')
hold on
loglog(y5,'k')
hold on

title('Loglog plot of the power lawfunctions in figure 2.2 with differenct k-values');
hleg1 = legend('k=-0.5','k=-0.75', 'k=-1','k=-1.25', 'k=-1.5', 'k=-1.75');
