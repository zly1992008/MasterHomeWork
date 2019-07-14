function plotCheckerBoard(data)


% Plot Checkerboard
image(data * 100 + 128);


% Initialize a color map array of 256 colors.
 colorMap = jet(256);
% Apply the colormap and show the colorbar
 colormap(colorMap);
colorbar;
title("Weight Checkerboard")
end

