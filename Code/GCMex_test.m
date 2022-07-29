
W = 10;
H = 5;
segclass = zeros(50,1);
pairwise = sparse(50,50);
unary = zeros(7,50);
[X Y] = meshgrid(1:7, 1:7);
labelcost = min(4, (X -