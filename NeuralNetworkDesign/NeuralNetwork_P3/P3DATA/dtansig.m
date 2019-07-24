% Project 1
% Author: Lieyuan Zhou
% PatherID: 6177738

% Return derivative of tansig
function dt = dtansig(z)
dt = 1 - tansig(z).^2;
end

