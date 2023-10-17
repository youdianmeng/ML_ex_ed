function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%
m = size(X,1);
norm_idx = zeros(K,1); %来储存计算后的距离最小值
for i = 1 : m,
  temp = X(i,:) - centroids; %temp 每一行表示距离的向量
  for j = 1 : K,
    norm_idx(j) = norm(temp(j,:)); %循环整个temp，用范数计算每一行距离
  end
  [min_norm idx(i)] = min(norm_idx); %找到最小距离的索引，并给idx（i）,注意不能直接用min，而是用min_norm
end






% =============================================================

end

