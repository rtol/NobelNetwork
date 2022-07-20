ren var1 won
ren var2 id
ren var3 female
ren var4 indist
ren var5 outdist
ren var6 indist2
ren var7 outdist2
ren var8 indist05
ren var9 outdist05
ren var10 indistlive
ren var11 outdistlive
ren var12 indistdead
ren var13 outdistdead
ren var14 indistrecent
ren var15 outdistrecent
ren var16 indistremote
ren var17 outdistremote
ren var18 year
ren var19 clarivate
ren var20 ideas
ren var21 adhoc
ren var22 sibling

cd "C:\Users\rtol\Google Drive\Papers\Nobel"
merge m:1 id using almamater
encode almamater, gen(uni)
drop _merge almamater
label var uni "alma mater"

encode JEL, gen(field)
drop JEL
label var field "JEL code"

logit won female indist outdist if year>1969
est store log1
logit won female indist outdist i.year
est store log2
predict phat
twoway (scatter phat outdist, sort)
logit won female indist outdist i.uni i.year
est store log3
logit won female indist outdist i.id
est store log4
logit won female indist outdist i.year i.field
est store log9

logit won female indistlive indistdead outdist i.year
est store log5
logit won female indistremote indistrecent outdist i.year
est store log6

probit won female indist outdist if year>1969
est store prob1
probit won female indist outdist i.year
est store prob2
probit won female indist outdist i.uni i.year
est store prob3
probit won female indist outdist i.id
est store prob4
logit won female indist outdist i.year i.field
est store prob9

probit won female indistlive indistdead outdist i.year
est store prob5
probit won female indistrecent indistremote outdist i.year
est store prob6

logit won female indist outdist i.year adhoc
est store log7
logit won female indist outdist i.year adhoc ideas
est store log8

probit won female indist outdist i.year adhoc
est store prob7
probit won female indist outdist i.year adhoc ideas
est store prob8

logit won female indist2 outdist2 i.year
est store log11
logit won female indist05 outdist05 i.year
est store log10
probit won female indist2 outdist2 i.year
est store prob11
probit won female indist05 outdist05 i.year
est store prob10

logit won female indist outdist sibling i.year
est store log12
probit won female indist outdist sibling i.year
est store prob12

esttab log1 prob1 log2 prob2 log3 prob3 log9 prob9 using candtable.tex, replace label title(Probability of winning the Nobel Prize.\label{tab:results}) nonumbers mtitles("Logit" "Probit" "Logit" "Probit" "Logit" "Probit" "Logit" "Probit" "Logit" "Probit") keep(female indist outdist)

esttab log2 prob2 log5 prob5 log6 prob6 using candtablesplit.tex, replace label title(Probability of winning the Nobel Prize.\label{tab:results}) nonumbers mtitles("Logit" "Probit" "Logit" "Probit" "Logit" "Probit" "Logit" "Probit" "Logit" "Probit") keep(female indist outdist indistlive indistdead indistrecent indistremote)

esttab log2 prob2 log7 prob7 log8 prob8 log4 prob4 using candtablelimit.tex, replace label title(Probability of winning the Nobel Prize.\label{tab:results}) nonumbers mtitles("Logit" "Probit" "Logit" "Probit" "Logit" "Probit" "Logit" "Probit") keep(female indist outdist)

esttab log10 prob10 log2 prob2 log11 prob11 log12 prob12 using candtabledist.tex, replace label title(Probability of winning the Nobel Prize.\label{tab:results}) nonumbers mtitles("Logit" "Probit" "Logit" "Probit" "Logit" "Probit") keep(female indist outdist indist05 outdist05 indist2 outdist2 sibling)