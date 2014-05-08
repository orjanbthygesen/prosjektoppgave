x1 = [1:100];
x2 = [0:100];
y1 = x1;
y2 = (x2.^2)/100;
xlabel('Cummulatice share of people from lowest to highest of incomes [%]');
ylabel('Cummulatice share of income earned from lowest to highest [%]');
figure
plot(x1,y1, x2, y2)
