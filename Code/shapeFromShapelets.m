function recsurf = shapeFromShapelets(surfaceNormal)
[M, N, ~] = size(surfaceNormal);
slant = zeros(M, N);
tilt = zeros(M, N