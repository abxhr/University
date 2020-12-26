theta = 0:0.01:2*pi;
r5 = 6*sin(3*theta);
polar(theta,r5)
syms r5(theta)
r5(theta) = 6*sin(3*theta);
fn(theta) = 0.5*(r5)^2;
area = int(fn, theta, 0, 2*pi);
area = double(area)