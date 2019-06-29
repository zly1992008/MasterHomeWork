% Function to get correct weight of Project1 using Hebb Standard
% Receive a matrix input P
% Return normalized Weight.
function W = pseudo_inverse(PP)
% Matrix P: colum 1-5 is A, ... clolum 20-25 is U.
P = [PP(:,1)';PP(:,6)';PP(:,11)';PP(:,16)';PP(:,21)'];
% Normalize input P.
pseudoP =  pinv(P');
% Target matrix, column 1 is perfect A...column 5 is perfect U.
T = [-1 -1 -1 1 1;
    -1 1 1 -1 -1;
    1 -1 1 -1 1];
% Hebb Rule
W = T * pseudoP;
% Normalize W
W = W / norm(W);
end