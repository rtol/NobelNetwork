# Nobel Network

Matlab scripts and functions used to create and analyze the professor-student network of winners of and candidates for the Nobel Memorial Prize in the Economic Sciences.

The script nobel.m is a wrapper that runs the other scripts in the correct order to replicate R.S.J. Tol (2022), Rise of the Kniesians: the professor-student network of Nobel laureates in economics, The European Journal of the History of Economic Thought: https://www.tandfonline.com/doi/abs/10.1080/09672567.2022.2074494

The script nobelbegetsnobel.m is a wrapper that part replicates the Nobel begets Nobel paper: https://ideas.repec.org/p/arx/papers/2207.04441.html The final result is a matrix "aux" that should be copied to Stata. You don't need to do this, as the .dta is here too, and the .do file used to generate the paper's results. NobelSurv.dta and NobelSurv.do replicate the survival analysis.
