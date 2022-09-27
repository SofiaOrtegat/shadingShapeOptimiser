
function  newSurfaceNormal = graphCutSurfaceNormal(surfaceNormal)
tic;

lambda = 0.01;
sigma = 1;
epsilon = 0.01;

[W, H, ~] = size(surfaceNormal);
Icosahedron = icosahedron(0.1);
[sIco, ~] = size(Icosahedron);