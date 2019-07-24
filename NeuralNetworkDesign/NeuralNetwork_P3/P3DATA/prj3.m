% Project 3
% Author: Lieyuan Zhou
% PatherID: 6177738

%% Initialization
clear ; close all; clc
load('P3INS.mat');
load('P3OUT.mat');

%% Setup the parameters that will be used for this project
input_layer_size  = 47;    % 47 neurons
hidden_layer_size = 30;    % 30 hidden units
output_layer_size = 1;     % Healthy or MI {1,0}
lambda = 0.0;             % Regularization parameter
gamma = 0.8;               % Momentum params
alpha = 0.4;              % Learning rate
maxIte = 13000;              % Max gradient descent times
stopIndex =maxIte;            % StopIndex When Gradient Descent
stopCri = 1^(-3);         % Stopping criterion(difference)
costThreshold = 500;       % Stopping criterion(threshold)
% Standard epsilon used to random initialization
epsilon = sqrt(6)/sqrt(input_layer_size+ output_layer_size);
% Random initialization of weights (a.k.a sqrt(6)/sqrt(inputsize + outputsize))
Weight1 = rand(30,48)*2*epsilon-epsilon;
Weight2 = rand(1,31)*2*epsilon-epsilon;

% Nguyen-Widrow Initialization
  [Weight1,Weight2] = NguWidrowInit(input_layer_size...
      ,hidden_layer_size...
      ,output_layer_size);
input = PPEKG';
target = TTEKG';
globalGrad = 1;
nn_params = [Weight1(:) ; Weight2(:)];
last_deltaW = nn_params;
J_history = zeros(maxIte, 1);
bias_history = zeros(maxIte,1);
W1_5_5_history = zeros(maxIte,1);
W1_10_10_history = zeros(maxIte,1);
W1_15_15_history = zeros(maxIte,1);
W2_1_5_history = zeros(maxIte,1);
W2_1_10_history = zeros(maxIte,1);
%% =========== Part 1 Training Basic BP NeuralNetwork=============

% for iter=1:maxIte
%     [J,grad] = nnCostFunction(nn_params, ...
%         input_layer_size, ...
%         hidden_layer_size, ...
%         output_layer_size, ...
%         input, target, lambda);
%     globalGrad = grad;
%     nn_params = nn_params - alpha * grad;
%     
%     % Save the cost J in every iteration
%     % && (abs(J_history(iter) - J_history(iter-1)) < stopCri)...
%     tempWeight1 = reshape(nn_params(1:1440),30,48);
%     tempWeight2 = reshape(nn_params(1441:1471),1,31);
%     J_history(iter) = J;
%     bias_history(iter) = tempWeight1(1,1);
%     W1_5_5_history(iter) = tempWeight1(5,5);
%     W1_10_10_history(iter) = tempWeight1(10,10);
%     W1_15_15_history(iter) = tempWeight1(15,15);
%     W2_1_5_history(iter) = tempWeight2(1,5);
%     W2_1_10_history(iter) = tempWeight2(1,10);
%     
%     if iter > 1 ...
%         && (J < 10)
%         stopIndex = iter;
%         fprintf('\nStop Iter Index: %d\n', iter);
%         break;
%     end
% end

%% =========== Part 3 Training Momentum BP NeuralNetwork=============

for iter=1:maxIte
    [J,grad] = nnCostFunction(nn_params, ...
        input_layer_size, ...
        hidden_layer_size, ...
        output_layer_size, ...
        input, target, lambda);
    globalGrad = grad;
    deltaW = - alpha * grad;
    
    % Calculate Momentum Delta W
    if iter > 1
        deltaW = gamma*last_deltaW + (1-gamma)*deltaW;
    end
    nn_params = nn_params + deltaW;
    last_deltaW = deltaW;
    % Save the cost J in every iteration
    % && (abs(J_history(iter) - J_history(iter-1)) < stopCri)...
    tempWeight1 = reshape(nn_params(1:1440),30,48);
    tempWeight2 = reshape(nn_params(1441:1471),1,31);
    J_history(iter) = J;
    bias_history(iter) = tempWeight1(1,1);
    W1_5_5_history(iter) = tempWeight1(5,5);
    W1_10_10_history(iter) = tempWeight1(10,10);
    W1_15_15_history(iter) = tempWeight1(15,15);
    W2_1_5_history(iter) = tempWeight2(1,5);
    W2_1_10_history(iter) = tempWeight2(1,10);
    
    if J < costThreshold && iter > 1
        fprintf('\nStop Iter Index: %d\n', iter);
        stopIndex = iter;
        break;
    end
end

finalWeight1 = reshape(nn_params(1:1440),30,48);
finalWeight2 = reshape(nn_params(1441:1471),1,31);
% plot(1:numel(J_history), J_history, '-b', 'LineWidth', 2);
% plot(1:5:stopIndex, J_history(1:5:stopIndex), '-b', 'LineWidth', 2);

% ==========STEM IMAGE==============
% figure
% X = linspace(0,1000,21);
% Y = J_history(1:50:1050);
% stem(X,Y,'filled')
% xlabel('Number of Epochs');
% ylabel('Mean Squared Error');
% title('Training Process')
% ==================================

% Round Matrix to Print
Weight1Round = roundn(finalWeight1,-2);
Weight2Round = roundn(finalWeight2,-2);
plotCheckerBoard(Weight1Round,"MPBP Weight1 Checkerboard");
plotCheckerBoard(Weight2Round,"MPBP Weight2 Checkerboard");

% Plot the convergence graph
figure;
plot(1:numel(J_history(1:stopIndex)), J_history(1:stopIndex), '-b', 'LineWidth', 2);
xlabel('Number of Epochs');
ylabel('MSE');
title('Learning Curve of SDBP');
pred = predict(finalWeight1, finalWeight2, input);

% Plot bias curve
textAnchor = round(stopIndex*0.8);
figure;
hold on
plot(1:numel(bias_history(1:stopIndex)), bias_history(1:stopIndex), '-k', 'LineWidth', 1);
text(textAnchor,bias_history(textAnchor),"bias1(W1-1-1) curve",'Color','k','FontSize',14);
xlabel('Number of Epochs');
ylabel('Value');
title('Evolution of Weights and Bias');


% Plot w1_5_5 curve
plot(1:numel(W1_5_5_history(1:stopIndex)), W1_5_5_history(1:stopIndex), '-m', 'LineWidth', 1);
text(textAnchor,W1_5_5_history(textAnchor),"w1(5,5) curve",'Color','m','FontSize',14);

% Plot w1_10_10 curve
plot(1:numel(W1_10_10_history(1:stopIndex)), W1_10_10_history(1:stopIndex), '-c', 'LineWidth', 1);
text(textAnchor,W1_10_10_history(textAnchor),"w1(10,10) curve",'Color','c','FontSize',14);

% Plot w1_15_15 curve
plot(1:numel(W1_15_15_history(1:stopIndex)), W1_15_15_history(1:stopIndex), '-r', 'LineWidth', 1);
text(textAnchor,W1_15_15_history(textAnchor),"w1(15,15) curve",'Color','r','FontSize',14);

% Plot w2_1_5 curve
plot(1:numel(W2_1_5_history(1:stopIndex)), W2_1_5_history(1:stopIndex), '-g', 'LineWidth', 1);
text(textAnchor,W2_1_5_history(textAnchor),"w2(1,5) curve",'Color','g','FontSize',14);

% Plot w2_1_10 curve
plot(1:numel(W2_1_10_history(1:stopIndex)), W2_1_10_history(1:stopIndex), '-b', 'LineWidth', 1);
text(textAnchor,W2_1_10_history(textAnchor),"w2(1,10) curve",'Color','b','FontSize',14);
hold off

pred = predict(finalWeight1, finalWeight2, input);
fprintf('\nTraining Set Accuracy: %f\n', mean(double(pred == target)) * 100);


%% =========== Part 1 Implement Predict=============
% finalWeight1 = reshape(nn_params(1:630),30,21);
% finalWeight2 = reshape(nn_params(631:785),5,31);
% pred = predict(finalWeight1, finalWeight2, input);
% fprintf('\nTraining Set Accuracy: %f\n', mean(double(pred == target)) * 100);
% finalTest(finalWeight1,finalWeight2,PP);
% plotCheckerBoard(finalWeight1)
% plotCheckerBoard(finalWeight2)
% faultTolerance(nn_params,PP,0.4);

% Round Matrix to Print
% Weight1 = roundn(Weight1,-2);
% Weight2 = roundn(Weight2,-2);
% 
% fid = fopen('Weight1.txt','wt');
% for ii = 1:size(Weight1,1)
%     fprintf(fid,'%g\t',Weight1(ii,:));
%     fprintf(fid,'\n');
% end
% fclose(fid)
% 
% fid = fopen('Weight2.txt','wt');
% for ii = 1:size(Weight2,1)
%     fprintf(fid,'%g\t',Weight2(ii,:));
%     fprintf(fid,'\n');
% end
% fclose(fid)
% plotCheckerBoard(Weight1);