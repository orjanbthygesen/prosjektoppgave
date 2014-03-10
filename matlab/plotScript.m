filename = '/home/orjan/Prosjektoppgave/scraped/twitter_followers_5mars.txt';

% %imports and defines datasets
% ds_449950 = importdata(filename);
% ds_100K = ds_449950;
% ds_100K(100001:449950,:) = [];
% ds_10K = ds_100K;
% ds_10K(10001:100000,:) = [];
% ds_5K = ds_10K;
% ds_5K(5001:10000,:) = [];
% ds_2K = ds_5K;
% ds_2K(2001:5000,:) = [];


Plots for full ds


figure11 = figure;
semilogx(ds_449950);
title('Twitter accounts');
xlabel('Accounts sorted after popularity');
ylabel('Number of followers');
saveas(figure11, 'twitter_449950_semilogx.jpg');
saveas(figure11, 'twitter_449950_semilogx.eps');

figure12 = figure;
semilogy(ds_449950);
title('Twitter accounts');
xlabel('Accounts sorted after popularity');
ylabel('Number of followers');
saveas(figure12, 'twitter_449950_semilogy.jpg');
saveas(figure12, 'twitter_449950_semilogy.eps');

figure13 = figure;
plot(ds_449950);
title('Twitter accounts');
xlabel('Accounts sorted after popularity');
ylabel('Number of followers');
saveas(figure13, 'twitter_449950_plot.jpg');
saveas(figure13, 'twitter_449950_plot.eps');

figure14 = figure;
loglog(ds_449950);
title('Twitter accounts');
xlabel('Accounts sorted after popularity');
ylabel('Number of followers');
saveas(figure14, 'twitter_449950_loglog.jpg');
saveas(figure14, 'twitter_449950_loglog.eps');


%
% Plots for 100 000 top accounts
%

figure21 = figure;
semilogx(ds_100K);
title('Twitter accounts');
xlabel('Accounts sorted after popularity');
ylabel('Number of followers');
saveas(figure21, 'twitter_100000_semilogx.jpg');
saveas(figure21, 'twitter_100000_semilogx.eps');

figure22 = figure;
semilogy(ds_100K);
title('Twitter accounts');
xlabel('Accounts sorted after popularity');
ylabel('Number of followers');
saveas(figure22, 'twitter_100000_semilogy.jpg');
saveas(figure22, 'twitter_100000_semilogy.eps');

figure23 = figure;
plot(ds_100K);
title('Twitter accounts');
xlabel('Accounts sorted after popularity');
ylabel('Number of followers');
saveas(figure23, 'twitter_100000_plot.jpg');
saveas(figure23, 'twitter_100000_plot.eps');

figure24 = figure;
loglog(ds_100K);
title('Twitter accounts');
xlabel('Accounts sorted after popularity');
ylabel('Number of followers');
saveas(figure24, 'twitter_100000_loglog.jpg');
saveas(figure24, 'twitter_100000_loglog.eps');

%
% Plots for 10 000 top accounts
%

figure31 = figure;
semilogx(ds_10K);
title('Twitter accounts');
xlabel('Accounts sorted after popularity');
ylabel('Number of followers');
saveas(figure31, 'twitter_10000_semilogxplot.jpg');
saveas(figure31, 'twitter_10000_semilogx.eps');

figure32 = figure;
semilogy(ds_10K);
title('Twitter accounts');
xlabel('Accounts sorted after popularity');
ylabel('Number of followers');
saveas(figure32, 'twitter_10000_semilogy.jpg');
saveas(figure32, 'twitter_10000_semilogy.eps');

figure33 = figure;
plot(ds_10K);
title('Twitter accounts');
xlabel('Accounts sorted after popularity');
ylabel('Number of followers');
saveas(figure33, 'twitter_10000_plot.jpg');
saveas(figure33, 'twitter_10000_plot.eps');

figure34 = figure;
loglog(ds_10K);
title('Twitter accounts');
xlabel('Accounts sorted after popularity');
ylabel('Number of followers');
saveas(figure34, 'twitter_10000_loglog.jpg');
saveas(figure34, 'twitter_10000_loglog.eps');

%
% Plots for 5 000 top accounts
%


figure41 = figure;
semilogx(ds_5K);
title('Twitter accounts');
xlabel('Accounts sorted after popularity');
ylabel('Number of followers');
saveas(figure41, 'twitter_5000_semilogx.jpg');
saveas(figure41, 'twitter_5000_semilogx.eps');

figure42 = figure;
semilogy(ds_5K);
title('Twitter accounts');
xlabel('Accounts sorted after popularity');
ylabel('Number of followers');
saveas(figure42, 'twitter_5000_semilogy.jpg');
saveas(figure42, 'twitter_5000_semilogy.eps');

figure43 = figure;
plot(ds_5K);
title('Twitter accounts');
xlabel('Accounts sorted after popularity');
ylabel('Number of followers');
saveas(figure43, 'twitter_5000_plot.jpg');
saveas(figure43, 'twitter_5000_plot.eps');

figure44 = figure;
loglog(ds_5K);
title('Twitter accounts');
xlabel('Accounts sorted after popularity');
ylabel('Number of followers');
saveas(figure44, 'twitter_5000_loglog.jpg');
saveas(figure44, 'twitter_5000_loglog.eps');


%
% Plots for 2000 top accounts
%

figure31 = figure;
semilogx(ds_10K);
title('Twitter accounts');
xlabel('Accounts sorted after popularity');
ylabel('Number of followers');
saveas(figure31, 'twitter_10000_semilogxplot.jpg');
saveas(figure31, 'twitter_10000_semilogx.eps');

figure32 = figure;
semilogy(ds_10K);
title('Twitter accounts');
xlabel('Accounts sorted after popularity');
ylabel('Number of followers');
saveas(figure32, 'twitter_10000_semilogy.jpg');
saveas(figure32, 'twitter_10000_semilogy.eps');

figure33 = figure;
plot(ds_10K);
title('Twitter accounts');
xlabel('Accounts sorted after popularity');
ylabel('Number of followers');
saveas(figure33, 'twitter_10000_plot.jpg');
saveas(figure33, 'twitter_10000_plot.eps');

figure34 = figure;
loglog(ds_10K);
title('Twitter accounts');
xlabel('Accounts sorted after popularity');
ylabel('Number of followers');
saveas(figure34, 'twitter_10000_loglog.jpg');
saveas(figure34, 'twitter_10000_loglog.eps');

%
% Plots for 5 000 top accounts
%


figure51 = figure;
semilogx(ds_2K);
title('Twitter accounts');
xlabel('Accounts sorted after popularity');
ylabel('Number of followers');
saveas(figure51, 'twitter_2000_semilogx.jpg');
saveas(figure51, 'twitter_2000_semilogx.eps');

figure52 = figure;
semilogy(ds_2K);
title('Twitter accounts');
xlabel('Accounts sorted after popularity');
ylabel('Number of followers');
saveas(figure52, 'twitter_2000_semilogy.jpg');
saveas(figure52, 'twitter_2000_semilogy.eps');

figure53 = figure;
plot(ds_2K);
title('Twitter accounts');
xlabel('Accounts sorted after popularity');
ylabel('Number of followers');
saveas(figure53, 'twitter_2000_plot.jpg');
saveas(figure53, 'twitter_2000_plot.eps');

figure54 = figure;
loglog(ds_2K);
title('Twitter accounts');
xlabel('Accounts sorted after popularity');
ylabel('Number of followers');
saveas(figure54, 'twitter_2000_loglog.jpg');
saveas(figure54, 'twitter_2000_loglog.eps');
