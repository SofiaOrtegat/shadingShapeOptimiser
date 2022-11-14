function output = icosahedron(subdivider) % subdivide surface of icosahedron, smaller -> finer
t = (1+sqrt(5))/2; %golden ratio
a = sqrt(t)/5^(1/4);
b = 1/(sqrt(t)*5^(1/4));
c = a+2*b;
d = a+b;
x =  [0;0;0;0;b;-b;b;-b;a;a;-a;-a]; % vertices of icosaherdron
y =  [a;a;-a;-a;0;0;0;0;b;-b;b;-b];
z =  [b;-b;b;-b;a;a;-a;-a;0;0;0;0];
mx = [d;d;d;d;-d;-d;-d;-d;0;0;0;0;c;-c;c;-c;a;a;-a;-a]/3; % midpoint extension
my = [d;-d;d;-d;d;-d;d;-d;a;a;-a;-a;0;0;0;0;c;-c;c;-c]/3;
mz = [d;d;-d;-d;d;d;-d;-d;c;-c;c;-c;a;a;-a;-a;0;0;0;0]/3;

%subdivider = 0.2;  % subdivide surface of icosahedron, smaller -> finer
result = [];
for m = 1:20
    d = (x-mx(m)).^2 + (y-my(m)).^2 + (