
W = 10;
H = 5;
segclass = zeros(50,1);
pairwise = sparse(50,50);
unary = zeros(7,50);
[X Y] = meshgrid(1:7, 1:7);
labelcost = min(4, (X - Y).*(X - Y));
%labelcost = zeros(7,7);

for row = 0:H-1
  for col = 0:W-1
    pixel = 1+ row*W + col;
    if row+1 < H, pairwise(pixel, 1+col+(row+1)*W) = 1; end
    if row-1 >= 0, pairwis