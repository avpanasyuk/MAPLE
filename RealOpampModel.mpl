
# Simulating OpAmp transfer function as one multiplier by G and two RCs with f0 and f1 turn points
# Transfer function of RC circuit is 
RCtf := proc (f, f0) options operator, arrow; 1/(1+I*f/f0) end proc;
# So, for two RCs, we have
RCRCtf := proc (f, f0, f1) options operator, arrow; RCtf(f, f0)*RCtf(f, f1) end proc;
# 
# What we can find in spec usually is
# Open loop gain for DC G0
# GBP, f0=GBP/G0
# Place of second pole on Open loop gain/freq plot - f1
# In this case our model transfer function is this
# Full amplification
Tf := proc (f, G0, GBP, f1) options operator, arrow; RCRCtf(f, GBP/G0, f1)*G0 end proc;
#  
