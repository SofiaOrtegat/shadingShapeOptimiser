function [result, index, uniqueIndex] = resamplingData(x, y, z)
subSamples = icosahedron(0.2); % subdivided icosahedron
%scatter3(subSamples(:,1), subSamples(:,2), subSamples(:,3));
s = size(subSamples, 1);
result = [];
index = [];
for i = 1:s
    d = (x-subSamples(i, 1)).^2