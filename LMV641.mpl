
read cat(currentdir(), "\\..\\..\\..\\AVP_MAPLE_LIB\\RealOpampModel.mpl");
# E.g. from LMV641 specs
Tf_LMV641 := proc (f) options operator, arrow; Tf(f, 4, 0.1e8, 1/0.25e7) end proc;
# plots[loglogplot](abs(Tf_LMV641(f)), f = 1 .. 0.1e9);
# 
