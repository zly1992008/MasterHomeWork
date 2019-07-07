% Project 1
% Author: Lieyuan Zhou
% PatherID: 6177738

%% Initialization
clear ; close all; clc
load('PRJ2TRAIN.mat');

%% Setup the parameters you will use for this project
input_layer_size  = 20;    % 4x5 Input Pixels
hidden_layer_size = 30;    % 30 hidden units
num_labels = 5;            % 5 labels {A,E,I,O,U}
lambda = 0.80;             % Regularization parameter
alpha = 0.1;              % Learning rate
maxIte = 100;              % Max gradient descent times
stopCri = 10^(-4);         % Stopping criterion
% Standard epsilon
epsilon = sqrt(6)/sqrt(input_layer_size+ num_labels);
% Random initialization of weights (a.k.a Theta)
Theta1 = rand(30,21)*2*epsilon-epsilon;
Theta2 = rand(5,31)*2*epsilon-epsilon;
input = PP';
target = TT';
globalGrad = 1;
nn_params = [Theta1(:) ; Theta2(:)];
J_history = zeros(maxIte, 1);
%% =========== Part 1 Training BP NeuralNetwork=============

for iter=1:maxIte
    [J,grad] = nnCostFunction(nn_params, ...
        input_layer_size, ...
        hidden_layer_size, ...
        num_labels, ...
        input, target, lambda);
    globalGrad = grad;
    nn_params = nn_params - alpha * grad;
    
    % Save the cost J in every iteration    
    J_history(iter) = J;
    if J < stopCri
        return
    end
end

plot(1:numel(J_history), J_history, '-b', 'LineWidth', 2);
xlabel('Number of iterations');
ylabel('Cost J');

%% =========== Part 2 Implement Predict=============
finalTheta1 = reshape(nn_params(1:630),30,21);
finalTheta2 = reshape(nn_params(631:785),5,31);
pred = predict(finalTheta1, finalTheta2, input);

fprintf('\nTraining Set Accuracy: %f\n', mean(double(pred == target)) * 100);
