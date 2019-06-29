% percepts1p.m   Train a perceptron with 1 pattern (and its targets)
%  WITH HARDLIM SYMETRIC ACTIVATION FUNCTION
%
% SYNTAX: [Wnew,bnew,e]= percepts1p(Wold, bold, p, t); 
% 
function [Wnew,bnew,e]= percepts1p(Wold, bold, p, t)
% n = Wold * p + bold;
% a = hardlims(Wold * p + bold);
% e = error, t = training
% w = weight
% b = bias
e = t - (hardlims(Wold * p + bold));
Wnew = Wold + ( e * p');
bnew = bold + e;
end

