function recsurf = shapeFromShapelets(surfaceNormal)
[M, N, ~] = size(surfaceNormal);
slant = zeros(M, N);
tilt = zeros(M, N);
for i = 1:M
    for j = 1:N
