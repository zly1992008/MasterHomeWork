% Function to detect A or E from a column vector
% Receive a column vector P
% Receive trained trainedW
% Receive trained trainedB
% Return 1 if the given column vector is like A OR E, -1 else.
function hit = detector(trainedW,trainedB,P)
hit = hardlims(trainedW * P + trainedB);
end