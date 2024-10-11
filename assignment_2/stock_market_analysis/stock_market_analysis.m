% Author Name: [Matthew Bogush]
% Email: [bogush26@rowan.edu]
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: [Stock Market Analysis]
% Date: [10/11/24]

%Read stock data
fileID = fopen('stock_data.txt', 'r');
data = fscanf(fileID, '%f', [1 Inf]);
fclose(fileID);

%Calculations
avg = mean(data);
high = max(data);
low = min(data);

%Print
fprintf('Stock Market Analysis:\n');
fprintf('Average closing price: $ %f \n', avg ); %Average closing price
fprintf('Highest closing price: $ %f \n', high); %Highest closing price
fprintf('Lowest closing price: $ %f \n', low); %Lowest closing price

increase_count = sum(diff(data) > 0); %Calculate # of higher closing price than previous day
fprintf('Days with higher closing price than previous day: %d \n', increase_count);

%X and y values for line plot
x = 1:30;
y = data;

%Create line plot
plot(x, y);

%Create lines for average, highest and lowest prices
hold on 
yline(avg, 'b', 'LineWidth', 1.5, 'Label', 'Average Price');
yline(high, 'g', 'LineWidth', 1.5, 'Label', 'Highest Price');
yline(low, 'r', 'LineWidth', 1.5, 'Label', 'Lowest Price');
hold off

%Add labels and legend
title('Stock Prices for 30 Trading Days');
xlabel('30 Trading Days');
ylabel('Stock Price ($)');
legend('Daily Prices', 'Average Price', 'Highest Price', 'Lowest Price', 'Location', 'east');

%Save as .png
saveas(gcf, 'stock_analysis.png');

%Write summary into a new file
fileID = fopen('stock_summary.txt', 'w');
fprintf(fileID, 'Stock Market Analysis Summary\n');
fprintf(fileID, 'Average closing price: $ %f \n', avg ); 
fprintf(fileID, 'Highest closing price: $ %f \n', high); 
fprintf(fileID, 'Lowest closing price: $ %f \n', low);
fprintf(fileID, 'Days with higher closing price than previous day: %d \n', increase_count);
fclose(fileID);
