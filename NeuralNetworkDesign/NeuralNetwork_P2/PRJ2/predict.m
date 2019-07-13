function p = predict(Theta1, Theta2, X)

% Useful values
m = size(X, 1);
 
p = zeros(size(X, 1), 1);

h1 = tansig([ones(m, 1) X] * Theta1');
p = tansig([ones(m, 1) h1] * Theta2');
p = round(p);

% =========================================================================


end