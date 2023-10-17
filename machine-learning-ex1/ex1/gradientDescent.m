function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta.
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
Hx = X * theta;           %Hx为m×1矩阵
%theta = theta - alpha/m*sum((Hx-y).*X(:,2));  %所用matlab知识与computeCost.m内容一致；此处Hx-y为m×1矩阵，X为m×2矩阵
theta -= alpha/m * ((Hx-y)' * X)';   %注意θ0和θ1的迭代公式不一样，但是之前设置的X第一列全1，使其可以用一次矩阵运算就更新两个θ





    % ============================================================

    % Save the cost J in every iteration
    J_history(iter) = computeCost(X, y, theta);

end

end
