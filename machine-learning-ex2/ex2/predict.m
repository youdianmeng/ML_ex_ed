function p = predict(theta, X)
%PREDICT Predict whether the label is 0 or 1 using learned logistic
%regression parameters theta
%   p = PREDICT(theta, X) computes the predictions for X using a
%   threshold at 0.5 (i.e., if sigmoid(theta'*x) >= 0.5, predict 1)

m = size(X, 1); % Number of training examples

% You need to return the following variables correctly
p = zeros(m, 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned logistic regression parameters.
%               You should set p to a vector of 0's and 1's
%
%思考过后决定用左取整函数，但是如果是判断X*theta是否小于0的话，不能直接判断成 y = 0 or 1，
%而题目中提及用sigmoid函数恰好取值都在[0，1]上，减去0.5为[-0.5，0.5]上，左取整再加以1正好可以判断

p = floor(sigmoid(X*theta)-0.5) + 1;


% =========================================================================


end
