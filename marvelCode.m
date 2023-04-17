%{
Programmers: Shaan Banday (20993610)
Class: ME 101
Date: Wednesday, April 5th, 2023
%}

clear

% Initialise all your matricies and vector
marvelMovieData = readmatrix("marvelData.csv"); % Matrix for the data
criticRatings = marvelMovieData(:, 1); % 1st Column Vector for Score
actualRevenue = marvelMovieData(:, 2); % 2nd Column Vector for Revenue
budget = marvelMovieData(:, 3); % 3rd Column Vector for Budget

% Arithmatic calculations based on formula from Forest
predictedRevenue = (budget .*1.06) ./ (1.09 - criticRatings);

% Set paramters of plot
xAxis = 1:1:length(marvelMovieData(:,1));

% Plot the graph
plot (xAxis, actualRevenue, 'b', xAxis, predictedRevenue, 'm')

% Graph Properties
title('Billion Dollar Blockbusters, Assemble!'); % Set the title
xlabel('Movie Number (in Chronological Order)'); % Set x-axis label
ylabel('Revenue (in Millions of $)'); % Set y-axis label
legend('Actual Revenue', 'Predicted Revenue') % Create a legend
grid on; % turn grid on

%{
OUTPUT TO COMMAND WINDOW:

>> marvelCode

Other than that above, there is no other output since all the variables are
silent
%}
