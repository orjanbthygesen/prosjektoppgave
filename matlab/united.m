fun1 = @(x) x.^(-1.2);
fun2 = @(x) x.^(-1.2);

a = integral(fun1,1,20);
b = integral(fun1,1,100);
c = integral(fun2,1,20000);
d = integral(fun2,1,1000000);

per1 = a/b
per2 = c/d

