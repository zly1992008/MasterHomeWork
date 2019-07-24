function plotCheckerBoard(data,titleName)

figure;
% Plot Checkerboard
image(data * 100 + 128);

% Initialize a color map array of 256 colors.
colorMap = jet(256);
% Apply the colormap and show the colorbar
colormap(colorMap);
colorbar;
title(titleName,'FontSize',18);

[row,column] = size(data);
for i = 1:row
    for j = 1:column
    txt = num2str(data(i,j));
    text(j,i,txt,'FontSize',11);
    end
end
end

