function [J,grad] = momentumBP(nn_params, ...
    input_layer_size, ...
    hidden_layer_size, ...
    output_layer_size,...
    X, y, gamma,last_nn_params)

% Reshape nn_params back into the parameters Weight1 and Weight2, the weight matrices
% for our 2 layer neural network
% Weight1 30x48
Weight1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
    hidden_layer_size, (input_layer_size + 1));

% Weight2 1x31
Weight2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
    output_layer_size, (hidden_layer_size + 1));

% Last Weight1 30x48
Weight1Last = reshape(last_nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
    hidden_layer_size, (input_layer_size + 1));

% Last Weight2 1x31
Weight2Last = reshape(last_nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
    output_layer_size, (hidden_layer_size + 1));

% Setup some useful variables
m = size(X, 1);

J = 0;
Weight1_grad = zeros(size(Weight1));
Weight2_grad = zeros(size(Weight2));


% Feedforward the neural network and return the cost in the
% variable J.
% original X(a1) is 447x47, add one column 1 as bias to 447x48
X = [ones(m,1) X];
a2 = tansig(X * Weight1');
% original a2 is 447x30, add one colums 1 as bias to 447x31
a2 = [ones(size(a2,1),1) a2];
a3 = tansig(a2 * Weight2');
h = a3;


% Costfunction Without regularization
J = (1/2*m) * sum((h-y).^2);


% Implement the backpropagation algorithm to compute the gradients
% Weight1_grad and Weight2_grad
% Here X is including 1 column at begining
A1 = X;

Z2 = A1 * Weight1'; 
A2 = tansig(Z2);
A2 = [ones(size(A2,1),1), A2]; 

Z3 = A2 * Weight2';  
A3 = tansig(Z3); 


DELTA3 = A3 - y; % 447x1
DELTA2 = (DELTA3 * Weight2) .* [ones(size(Z2,1),1) dtansig(Z2)];% 447x31
DELTA2 = DELTA2(:,2:end); % 447x31 Removing delta2 for bias node

Weight1_grad = (1/m) * (DELTA2' * A1); % 30x48
Weight2_grad = (1/m) * (DELTA3' * A2); % 1x31

if Weight1_grad > 0
    Weight1_grad = -Weight1_grad;
end

if Weight2_grad > 0
    Weight2_grad = -Weight2_grad;
end

% Momentum
Weight1_grad = gamma*(Weight1Last) - (1-gamma)*Weight1_grad;
Weight2_grad = gamma*(Weight2Last) - (1-gamma)*Weight2_grad;

% -------------------------------------------------------------

% =========================================================================

% Unroll gradients
grad = [Weight1_grad(:) ; Weight2_grad(:)];


end