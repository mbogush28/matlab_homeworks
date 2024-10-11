% Author Name: [Matthew Bogush]
% Email: [bogush26@rowan.edu]
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: [Weather Data Analysis]
% Date: [10/11/24]

% Read data from file
data = readcell('weather_data.txt', 'Delimiter', ',');

% Extract numerical data (skipping header row)
temperature = cell2mat(data(2:end, 2));
humidity = cell2mat(data(2:end, 3));
precipitation = cell2mat(data(2:end, 4));

%Calculations
avg_temperature = mean(temperature);
avg_humidity = mean(humidity);
total_precipitation = sum(precipitation);

%Save statistics to new file 'weather_summary.txt'
fileID = fopen('weather_summary.txt', 'w');
fprintf(fileID, 'Weather Summary:\n');
fprintf(fileID, 'Average Temperature: %.2f \n', avg_temperature);
fprintf(fileID, 'Average Humidity: %.2f \n', avg_humidity);
fprintf(fileID, 'Total Precipitation: %.2f \n', total_precipitation);
fclose(fileID);
