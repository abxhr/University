theta = 0:0.01:2*pi;
r2 = 4*sin(5*theta)+2;
polar(theta,r2);
syms r2(theta)
r2(theta) = 4*sin(5*theta)+2;
fn(theta) = 0.5*(r2)^2;
area = int(fn, theta, 0, 2*pi);
area = double(area)