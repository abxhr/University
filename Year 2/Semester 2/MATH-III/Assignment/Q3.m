syms y(x)
Dy = diff(y)
D2y = diff(y,x,2)
ode = D2y + Dy - 12*y == 0
cond1 = y(pi) == -2
cond2 = Dy(pi) == -20
conds = [cond1, cond2]
ysol(x) = dsolve(ode,conds)
fplot(ysol) 