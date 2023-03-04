function [result, index, uniqueIndex] = resamplingData(x, y, z)
subSamples = icosahedron(0.2); % subdivided icosahedron
%scatter3(subSamples(:,1), subSamples(:,2), subSampl