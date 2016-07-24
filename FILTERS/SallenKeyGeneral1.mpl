

# 
# iG - Inverted open loop transfer function of the opamp, 0 in ideal case
# r - divider, V- = Vout*r
# 
eqs := {Vm = V*r, Vp = I3*Z5, V*iG = Vp-Vm, 1-V1 = Z1*I1, I4+I3 = I1, V1-V = Z4*I4, V1-Vp = Z3*I3};
eq1 := eliminate(eqs, [V1, I3, I4, Vp, Vm]);
sol1 := solve(eq1[2], [V, I1]);
TrF := simplify(subs(sol1[1][1], V));
Rin := simplify(subs(sol1[1][2], 1/I1));
# 
# 
