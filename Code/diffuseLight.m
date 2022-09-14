function lightImg = diffuseLight(surfaceNormal)
[m, n, ~] = size(surfaceNormal);
lightImg = zeros(m, n);
