function s=gini(data,p)
close all
if nargin == 1
    p=2;
end
data = abs(data(:)).^p;
N=length(data);
data = sort(data); 
x=(0:N)'/N;
y=[0 ;cumsum(data)]/sum(data);
a=sum(y(1:end-1)+y(2:end))/(2*N);
s=(1-2*a);

% % to plot the Lorenz curve uncomment the folllowing line
plot(x,y)