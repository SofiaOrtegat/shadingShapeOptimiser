function surfaceNormal = initialNormal(x, y, z)
[imgIntensity, lights, denominatorLight] = preProcessData(x, y, z); % imgIntensity here alread divide Denominator image
[M, N, s] = size(