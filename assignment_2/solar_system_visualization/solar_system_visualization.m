% Author Name: [Matthew Bogush]
% Email: [bogush26@rowan.edu]
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: [Solar System Visualization]
% Date: [10/11/24]

%Create two vectors for planet distances and relative sizes to Earth
planet_distances = [0.4, 0.7, 1.0, 1.5, 5.2, 9.6, 19.2, 30.0, ];
planet_sizes = [.3829, 0.9497, 1, 0.532, 10.973, 9.1397, 3.9806, 3.8644];

%Set colors for planets for the scatterplot
map = [1 0 0
    1 1 0
    0 0 1
    1 0 0 
    1 1 0
    1 1 0
    0 0 1
    0 1 1];
c = 1:8;

%Create scatterplot for planet distances and sizes
subplot(2, 1, 1);
scatter(planet_distances, planet_sizes, 10*planet_sizes, c, 'filled');
colormap(gca, map)
%Add labels
title('Planet Distances vs Planet Sizes');
xlabel('Planet Distances');
ylabel('Planet Sizes (Earth:1)');
grid on;

%Create a second plot with a bar graph of planet distances with their names
subplot(2, 1, 2);
categories = {'Mercury', 'Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune'};
bar(planet_distances);
set(gca, 'xticklabel', categories);
title('Planet Distances');
xlabel('Planets');
ylabel('Distance From Sun (AU)');

%Save image as a file named solar_system_visualization.png
saveas(gcf, 'solar_system_visualization.png');
