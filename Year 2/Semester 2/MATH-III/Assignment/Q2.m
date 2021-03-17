syms y(x)
Dy = diff(y)
D2y = diff(y,x,2)
ode = D2y + 9*y == 0
cond1 = y(0) == 0
cond2 = Dy(0) == 6
conds = [cond1, cond2]
ysol(x) = dsolve(ode,conds)
fplot(ysol) 