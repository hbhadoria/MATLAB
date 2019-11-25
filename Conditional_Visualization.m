clc, clear , close all

%%Introduction
%This is a sample of conditional visualization.The color of the graphs is...
%conditional on the values...
%of Carbs, Proteins, Fats & Calories...
%Since the values for above are randomly generated...
%The graphs including the colors would be...
%different for every run eg

%1. Graphs would be 'green' if mean of sample generated for nutrients for two weeks <
% baseline for a particular category

%2. Similarly , Graphs would be 'yellow'if mean of sample generated for nutrients for two weeks ==
% baseline for a particular category

%3. And Graphs would be 'red' if mean of sample generated for nutrients for two weeks > 
%   baseline for a particular category


%%Initial Data
%Data
days = 1:14;
nutrientsForTwoWeeks = [randi([250 350], size(days));  %Carbs
    randi([130 160], size(days)); %Proteins
    randi([50 80], size(days));  %Fat
    randi([1800 2000], size(days))]; %Calories

%Base Lines
carbsBaseLine = linspace(300, 300, length(days));
proteinBaseLine =linspace(145, 145, length(days)) ;
fatBaseLine =linspace(65, 65, length(days)) ;
caloriesBaseLine =linspace(1900, 1900, length(days)) ;

%%All data in a single subplot
allAx = subplot(2, 3, [1 4])
carbsPlotHandle = plot(days, nutrientsForTwoWeeks(1, :));

hold on
plot(days, nutrientsForTwoWeeks(2, :))
plot(days, nutrientsForTwoWeeks(3, :))
hold off

allXLabel = xlabel('Days')
allYLabel = ylabel('Intake, [g]');
allTitle = title('2 Weeks Nutritions Intake');
allLegend = legend({'Carbs', 'Protein', 'Fat'});

%%Carbs - Second Subplot
carbsAx = subplot(2,3,2)
plot(days, nutrientsForTwoWeeks(1, :));
hold on
plot(days, carbsBaseLine)
hold off

carbsXLabel = xlabel('Days')
carbsYLabel = ylabel('Intake, [g]');
carbsTitle = title('2 Weeks Carbs Intake');
carbsLegend = legend({'Carbs'});

%%Protein - Third Subplot
proteinAx = subplot(2,3,3)
plot(days, nutrientsForTwoWeeks(2, :));
hold on 
plot(days, proteinBaseLine)
hold off

proteinXLabel = xlabel('Days')
proteinYLabel = ylabel('Intake, [g]');
proteinTitle = title('2 Weeks Proteins Intake');
proteinLegend = legend({'Protein'});

%%Fat - Fourth Subplot
fatAx = subplot(2,3,5)
plot(days, nutrientsForTwoWeeks(3, :));
hold on
plot(days, fatBaseLine)
hold off

fatXLabel = xlabel('Days')
fatYLabel = ylabel('Intake, [g]');
fatTitle = title('2 Weeks Fats Intake');
fatLegend = legend({'Fat'});

%%Calories - Fifth Subplot
caloriesAx = subplot(2,3,6)
plot(days, nutrientsForTwoWeeks(4, :));
hold on
plot(days, caloriesBaseLine)
hold off

caloriesXLabel = xlabel('Days')
caloriesYLabel = ylabel('Intake, [kcal]');
caloriesTitle = title('2 Weeks Calories Intake');
caloriesLegend = legend({'Calories'});



%%Properties of the Subplots
ax = [ allAx, carbsAx, proteinAx, fatAx, caloriesAx];
axLines = [carbsAx.Children proteinAx.Children fatAx.Children caloriesAx.Children];
baseLines = axLines(1,:);
dataLines = axLines(2, :);

legendsH = [allLegend, carbsLegend, proteinLegend, fatLegend, caloriesLegend]; 
labelsAndTitles = [allXLabel, allYLabel, allTitle, carbsXLabel, carbsYLabel, carbsTitle,...
    proteinXLabel, proteinYLabel, proteinTitle, fatXLabel, fatYLabel, fatTitle,...
    caloriesXLabel, caloriesYLabel, caloriesTitle];

%Properties for BaseLines
set(baseLines, 'LineWidth', 2)

%Properties for Data Lines
set(dataLines, 'LineWidth', 2)

%Properties for Axes
set(ax, 'Xlim', [0 15])
set(ax, 'XGrid', 'on', 'YGrid', 'on')
set(ax, 'XMinorGrid', 'on', 'YMinorGrid', 'on')


%Properties for Labels and Titles
set(labelsAndTitles, 'FontSize', 15)

%Properties for Legends
set(legendsH, 'FontSize', 5)
set(legendsH, 'Location', 'southeast')
% set(allLegend, 'Location', )
% set(carbsLegend, 'Location', 'bestoutside')
% set(proteinLegend, 'Location', 'best')
% set(fatLegend, 'Location', 'best')
% set(caloriesLegend, 'Location', 'best')

%Individual Properties
set(allLegend, 'FontSize',5 )

%% Conditional Properties
checkCarbs = mean(nutrientsForTwoWeeks(1, :)) - mean(carbsBaseLine)
checkProteins = mean(nutrientsForTwoWeeks(2, :)) - mean(proteinBaseLine)
checkFats = mean(nutrientsForTwoWeeks(3, :)) - mean(fatBaseLine)
checkCalories = mean(nutrientsForTwoWeeks(4, :)) - mean(caloriesBaseLine)


if((checkCarbs < 0) && (checkProteins < 0) && (checkFats < 0) && (checkCalories < 0))
    set(dataLines, 'color','g')
elseif ((checkCarbs == 0) && (checkProteins == 0) && (checkFats == 0) && (checkCalories == 0))
    set(dataLines, 'color', 'y')
elseif ((checkCarbs > 0) && (checkProteins > 0) && (checkFats > 0) && (checkCalories > 0))
    set(dataLines, 'color', 'r')
else
    
    switch(sign(checkCarbs))
        case -1
            set(dataLines(1),'color','g')
            set(baseLines(1), 'color','b')
        case 0
            set(dataLines(1),'color','y')
            set(baseLines(1), 'color','b')
        case 1
            set(dataLines(1),'color','r')
            set(baseLines(1), 'color','b')
    end
    
    switch(sign(checkProteins))
        case -1
            set(dataLines(2),'color','g')
            set(baseLines(2), 'color','b')
        case 0
            set(dataLines(2),'color','y')
            set(baseLines(2), 'color','b')
        case 1
            set(dataLines(2),'color','r')
            set(baseLines(2), 'color','b')
    end
    
    switch(sign(checkFats))
        case -1
            set(dataLines(3),'color','g')
            set(baseLines(3), 'color','b')
        case 0
            set(dataLines(3),'color','y')
            set(baseLines(3), 'color','b')
        case 1
            set(dataLines(3),'color','r')
            set(baseLines(3), 'color','b')
    end
    
    switch(sign(checkCalories))
        case -1
            set(dataLines(4),'color','g')
            set(baseLines(4), 'color','b')
        case 0
            set(dataLines(4),'color','y')
            set(baseLines(4), 'color','b')
        case 1
            set(dataLines(4),'color','r')
            set(baseLines(4), 'color','b')
    end
end

