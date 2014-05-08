figure1 = figure;
loglog(YT);
title('YouTube Channels');
xlabel('Channels sorted after number of subscribers');
ylabel('Number of subscribers');
saveas(figure1, 'youtube.jpg');
saveas(figure1, 'youtube.eps');