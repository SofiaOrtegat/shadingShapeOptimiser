function [result, index, uniqueIndex] = resamplingData(x, y, z)
subSamples = icosahedron(0.2); % subdivided icos