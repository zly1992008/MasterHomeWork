function [weight, J_history] = gradientDescentMulti(X, y, weight, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn weight
%   weight = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates weight by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
    
    % hypothesis
    h = X * weight;
    % X' * (h - y) = sum((h - y) .* X)'
    weight = weight - alpha * (1 / m) * (X' * (h - y));
    
    
    
    % ============================================================
    
    % Save the cost J in every iteration
    J_history(iter) = computeCostMulti(X, y, weight);
    
end

end