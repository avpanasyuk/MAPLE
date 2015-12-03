
# Simulating OpAmp transfer function as one multiplier by 1/g and two RCs with f0 and f1 turn points
# Transfer function of RC circuit is 
RCtf := proc (f, f0) options operator, arrow; 1/(1+I*f/f0) end proc;
# So, for two RCs, we have
RCRCtf := proc (f, f0, f1) options operator, arrow; RCtf(f, f0)*RCtf(f, f1) end proc;
# Full amplification (using g = 1/G so it is small)
Tf := proc (f, f0, f1, g) options operator, arrow; RCRCtf(f, f0, f1)/g end proc;
# 
