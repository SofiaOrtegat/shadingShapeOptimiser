function lightImg = diffuseLight(surfaceNormal)
[m, n, ~] = size(surfaceNormal);
lightImg = zeros(m, n);
light = [-2,2,2]/sqrt(14);
normal = zeros(3,1);
for i = 1:m
    for j