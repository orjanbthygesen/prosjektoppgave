load hahn1;
f = fit(temp,thermex,'power1')
plot(f,temp,thermex)