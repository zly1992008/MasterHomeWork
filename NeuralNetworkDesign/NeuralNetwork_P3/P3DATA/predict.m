% Using the best trained Weights to predict the test set
% Using hardlims considered bipolar 5-value
function p = predict(Weight1, Weight2, X)

% Set size
m = size(X, 1);

p = zeros(size(X, 1), 1);

h1 = tansig([ones(m, 1) X] * Weight1');
p = tansig([ones(m, 1) h1] * Weight2');
p = hardlims(p);

% =========================================================================


end