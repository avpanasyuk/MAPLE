
read cat(currentdir(), "\\..\\..\\..\\AVP_MAPLE_LIB\\RealOpampModel.mpl");
# E.g. from LMV641 specs
Tf_LMV641 := proc (f) options operator, arrow; Tf(f, 4, 0.1e8, 1/0.25e7) end proc;
# Open loop output impedance:
Rout_LMV641 := 300;
#    
# 
plots[loglogplot](abs(Tf_LMV641(f)), f = 1 .. 0.1e9);
%;
# 
# 
