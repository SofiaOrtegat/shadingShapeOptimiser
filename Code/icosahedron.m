function output = icosahedron(subdivider) % subdivide surface of icosahedron, smaller -> finer
t = (1+sqrt(5))/2; %golden ratio
a = sqrt(t)/5^(1/4);
b = 1/(sqrt(t)*5^(1/4));
c = a+2*b;
d = a+b;
x =  [0;0;0;0;b;-b