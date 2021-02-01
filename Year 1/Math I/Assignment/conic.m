theta = 0:0.01:2*pi;
r1 = 12./(3+sin(theta));
polar(theta,r1);
hold on
e = 1/3
k = 12
a = k*e/(1-e^2)

polar(0,0);
polar(-pi/2, 2*a*e);
polar(-pi/2, a*e);
polar(pi/2, a-a*e);
polar(-pi/2, a+a*e);