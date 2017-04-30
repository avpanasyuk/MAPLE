
# 
# Calculates simple active BPF filter given amplification at central frequency absTrF0;, maximum and minimum 1/sqrt(2) frequnecies f_high; and f_low; and Rin at central frequency Rin0;. See SimpleActiveBPFexample for example of use
eqs := {Ir1 = Ic1+Ic2, Vm = 0, I*(V1-Vm)*w*C2 = Ic2, I*(V1-Vout)*w*C1 = Ic1, 1-V1 = Ir1*R1, Vm-Vout = Ic2*R2};
eq1 := eliminate(eqs, [V1, Ic2, Ic1, Vm]);
eq1[2];
s1 := solve(eq1[2], [Vout, Ir1]);
TrF := subs(s1[1], Vout);
assume(C1 > 0, C2 > 0, R1 > 0, R2 > 0, w > 0, f > 0);
simplify(diff(abs(TrF), w));
solve(%, w); w0 := %[1];
absTrF0 := simplify(subs(w = w0, abs(TrF)));
wpb := solve(absTrF0/sqrt(2) = abs(TrF), w);
w_high := wpb[3]; w_low := wpb[1];
Rin0 := 1/simplify(abs(subs(w = w0, subs(s1[1], Ir1))));
TrFlin := subs(w = 2*Pi*f, TrF);
# 
# 
# 
