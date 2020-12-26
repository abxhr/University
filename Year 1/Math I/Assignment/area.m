theta = 0:0.01:2*pi;
r3 = sin(2*theta).*cos(2*theta);
polar(theta,r3);
syms r3(theta)
r3(theta) = sin(2*theta).*cos(2*theta);
fn(theta) = 0.5*(r3)^2;
area = int(fn, theta, 0, 2*pi);
area = double(area)