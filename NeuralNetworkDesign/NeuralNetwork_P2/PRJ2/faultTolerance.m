% This function is used to experiment fault tolerance
% on trained BP neural networks
% nn_params: unrolled by Weight1 and Weight2
% PP :the original training matrix
% faultRate: required percentage of zeros in Weights
function faultTolerance(nn_params,PP,faultRate)
lengthV = length(nn_params);
faultNum = lengthV * faultRate;
index_change_history = zeros(1, faultNum);
for i=1:faultNum
    index = randi([1,lengthV],1,1);
    index_change_history(i) = index;
    nn_params(index)= 0;
end
% print changed index
for ii = 1:size(index_change_history,1)
    fprintf('%g\t',index_change_history(ii,:));
    fprintf('\n');
end
finalWeight1 = reshape(nn_params(1:630),30,21);
finalWeight2 = reshape(nn_params(631:785),5,31);
finalTest(finalWeight1,finalWeight2,PP);

end

