function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%
%先找到y = 0 or 1的位置
pos = find(y == 1);
neg = find(y == 0);
%再绘制不同的点的图
plot(X(pos,1), X(pos,2), 'k+','MarkerSize',5,'LineWidth',1);    %https://ww2.mathworks.cn/help/matlab/ref/plot.html#btzitot-4
plot(X(neg,1), X(neg,2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize',5);%% ‘输入参数’栏下面






% =========================================================================



hold off;

end
