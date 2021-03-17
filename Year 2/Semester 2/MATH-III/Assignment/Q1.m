syms y(x)
Dy = diff(y)
D2y = diff(y,x,2)
ode = D2y + 4*Dy + 5*y == 0
cond1 = y(0) == 1
cond2 = Dy(0) == 0
conds = [cond1, cond2]
ysol(x) = dsolve(ode,conds)
fplot(ysol) 