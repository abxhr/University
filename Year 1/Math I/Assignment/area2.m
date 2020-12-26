theta = 0:0.01:2*pi;
r4 = 4*sin(theta/2).^2;
polar(theta,r4)
syms r4(theta)
r4(theta) = 4*sin(theta/2).^2;
fn(theta) = 0.5*(r4).^2;
area = int(fn, theta, 0, 2*pi);
area = double(area)