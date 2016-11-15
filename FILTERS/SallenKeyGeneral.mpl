

# 
# iG - Inverted open loop transfer function of the opamp, 0 in ideal case
# r - divider, V- = Vout*r
# 
eqs := {V1 = Z2*I2, Vm = V*r, Vp = I3*Z5, I*V*G = Vp-Vm, 1-V1 = Z1*I1, V1-V = Z4*I4, V1-Vp = Z3*I3, I4+I3+I2 = I1};
eq1 := eliminate(eqs, [V1, I2, I3, I4, Vp, Vm]);
sol1 := solve(eq1[2], [V, I1]);
TrF := simplify(subs(sol1[1][1], V));
Rin := simplify(subs(sol1[1][2], 1/I1));
# 
# 
