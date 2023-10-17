function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
Hx = X*theta;  %即H(x)=Θ0+θ1*x1假设函数
Hx_y = Hx-y;    %为一列向量
J = sum(Hx_y.^2)/(2*m);            %https://zhidao.baidu.com/question/1436421416328305219.html
                                   %https://blog.csdn.net/weixin_39778003/article/details/110840357
                                   %https://blog.csdn.net/qq_32809093/article/details/112259992

% =========================================================================

end
