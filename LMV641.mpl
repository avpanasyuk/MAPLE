
read cat(AVP_Lib_Path, "RealOpampModel.mpl");
# E.g. from LMV641 specs
Tf_LMV641 := proc (f) options operator, arrow; Tf(f, 100000, 0.1e8, 0.30e8) end proc;
# Open loop output impedance:
Rout_LMV641 := 300;
#    
plots[loglogplot](abs(Tf_LMV641(f)), f = 1 .. 0.1e9);
%;
# 
