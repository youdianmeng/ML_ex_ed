function plotData(x, y)
%PLOTDATA Plots the data points x and y into a new figure
%   PLOTDATA(x,y) plots the data points and gives the figure axes labels of
%   population and profit.

figure; % open a new figure window

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the training data into a figure using the
%               "figure" and "plot" commands. Set the axes labels using
%               the "xlabel" and "ylabel" commands. Assume the
%               population and revenue data have been passed in
%               as the x and y arguments of this function.
%
% Hint: You can use the 'rx' option with plot to have the markers
%       appear as red crosses. Furthermore, you can make the
%       markers larger by using plot(..., 'rx', 'MarkerSize', 10);

plot(x,y,'rx','MarkerSize',5);          %Plot the data
ylabel('Profit in $10,000s');           %Set y-axis label
xlabel('Population size in 10,000s');   %Set x-axis label
xlim([4 24]);                           %改变x轴范围
ylim([-5 25]);                          %改变y轴范围，后续课程更新了axis()函数
set(gca,'XTick',[4:2:24]);              %改变x轴坐标间隔，即4~24，间隔为2
% ============================================================

end
