function recsurf = shapeFromShapelets(surfaceNormal)
[M, N, ~] = size(surfaceNormal);
slant = zeros(M, N);
tilt = zeros(M, N);
for i = 1:M
    for j = 1:N
        x = surfaceNormal(i, j ,1);
        y = surfaceNormal(i, j ,2);
        z = surfaceNormal(i, j ,3);
  