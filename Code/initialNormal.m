function surfaceNormal = initialNormal(x, y, z)
[imgIntensity, lights, denominatorLight] = preProcessData(x, y, z); % imgIntensity here alread divide Denominator image
[M, N, s] = size(imgIntensity);
matrixToFindNormal = zeros(s, 3);
surfaceNormal = zeros(M, N, 3);
tic;
for i = 1:M
    for j = 1:N
        for k = 1:s
 