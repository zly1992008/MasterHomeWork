% Project 2
% Author: Lieyuan Zhou
% PatherID: 6177738

%% Initialization
clear ; close all; clc
load('PRJ2TRAIN.mat');

%% Setup the parameters that will be used for this project
input_layer_size  = 20;    % 4x5 Input Pixels
hidden_layer_size = 30;    % 30 hidden units
num_labels = 5;            % 5 labels {A,E,I,O,U}
lambda = 0.80;             % Regularization parameter
alpha = 0.1;               % Learning rate
maxIte = 200;              % Max gradient descent times
stopIndex =200;             % StopIndex When Gradient Descent
stopCri = 10^(-1);         % Stopping criterion(difference)
% Standard epsilon
epsilon = sqrt(6)/sqrt(input_layer_size+ num_labels);
% Random initialization of weights (a.k.a sqrt(6)/sqrt(inputsize + outputsize))
Weight1 = rand(30,21)*2*epsilon-epsilon;
Weight2 = rand(5,31)*2*epsilon-epsilon;
input = PP';
target = TT';
globalGrad = 1;
nn_params = [Weight1(:) ; Weight2(:)];
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
    if iter > 1 ...
        && (abs(J_history(iter) - J_history(iter-1)) < stopCri)
        stopIndex = iter;
        fprintf('\nStop Iter Index: %d\n', iter);
        break;
    end
end

finalWeight1 = reshape(nn_params(1:630),30,21);
finalWeight2 = reshape(nn_params(631:785),5,31);
% plot(1:numel(J_history), J_history, '-b', 'LineWidth', 2);
% plot(1:5:stopIndex, J_history(1:5:stopIndex), '-b', 'LineWidth', 2);

figure
X = linspace(0,60,13);
Y = J_history(1:5:65);
stem(X,Y,'filled')
xlabel('Number of Epochs');
ylabel('Mean Squared Error');
title('Training Process')

%% =========== Part 1 Implement Predict=============
% finalWeight1 = reshape(nn_params(1:630),30,21);
% finalWeight2 = reshape(nn_params(631:785),5,31);
% pred = predict(finalWeight1, finalWeight2, input);
% fprintf('\nTraining Set Accuracy: %f\n', mean(double(pred == target)) * 100);
% finalTest(finalWeight1,finalWeight2,PP);
% plotCheckerBoard(finalWeight1)
% plotCheckerBoard(finalWeight2)
faultTolerance(nn_params,PP,0.4);

% Round Matrix to Print
Weight1 = roundn(Weight1,-2);
Weight2 = roundn(Weight2,-2);

fid = fopen('Weight1.txt','wt');
for ii = 1:size(Weight1,1)
    fprintf(fid,'%g\t',Weight1(ii,:));
    fprintf(fid,'\n');
end
fclose(fid)

fid = fopen('Weight2.txt','wt');
for ii = 1:size(Weight2,1)
    fprintf(fid,'%g\t',Weight2(ii,:));
    fprintf(fid,'\n');
end
fclose(fid)
plotCheckerBoard(Weight2);