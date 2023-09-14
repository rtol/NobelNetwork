import excel "C:\Users\rtol\My Drive\Papers\Nobel\NobelCandSurv.xlsx", sheet("survival") cellrange(A1:N670) firstrow

use "C:\Users\rtol\My Drive\Papers\Nobel\nobelsurv.dta"

stset end, failure(won) origin(time start)

stcox female indist outdist crossdist, nohr exactp
est store cox1

cd "C:\Users\rtol\My Drive\Papers\Nobel"

esttab cox using survtable.tex, replace label title(Probability of winning the Nobel Prize.\label{tab:results}) nonumbers mtitles("Coefficient" "Hazard ratio") keep(female indist outdist crossdist)

use "C:\Users\rtol\My Drive\Papers\Nobel\nobelcandnew.dta"

logit won female indist outdist crossdist i.id
est store log

probit won female indist outdist crossdist i.id
est store pro

esttab cox log pro using survtable.tex, replace label title(Probability of winning the Nobel Prize.\label{tab:results}) nonumbers mtitles("Cox" "Logit" "Probit") keep(female indist outdist crossdist)