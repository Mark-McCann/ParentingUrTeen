

use "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Data Entry\Surveys\young person baseline_final_raw.dta", clear

***********SDQ

rename niceothers consid
rename restless restles 
rename headache somatic
rename share shares
rename angry tantrum
rename alone  loner
rename dowottold obeys
rename worrylot worries
rename helpful caring
rename fidget fidgety
rename hvegdfriend friend
rename fightlot fights
rename unhappy unhappy
rename likeme popular
rename distracted distrac
rename nervous clingy
rename kindyounger kind
rename acclying lies
rename pickedon bullied
rename volunteer helpout
rename thinkbefore reflect
rename takethings steals
rename withadults oldbest
rename fears afraid
rename finishwrk attends

recode obeys (0=2) (1=1) (2=0) (else=.), gen(robeys)
recode reflect (0=2) (1=1) (2=0) (else=.) , gen(rreflect)
recode attends (0=2) (1=1) (2=0) (else=.), gen(rattends)
recode friend (0=2) (1=1) (2=0) (else=.), gen(rfriend)
recode popular (0=2) (1=1) (2=0) (else=.), gen(rpopular)

egen nemotion=robs(somatic worries unhappy clingy afraid)
egen semotion=rmean(somatic worries unhappy clingy afraid) if nemotion>2
replace semotion=round(semotion*5)

egen nconduct=robs(tantrum robeys fights lies steals)
egen sconduct=rmean(tantrum robeys fights lies steals) if nconduct>2
replace sconduct=round(sconduct*5)

egen nhyper=robs(restles fidgety distrac rreflect rattends)
egen shyper=rmean(restles fidgety distrac rreflect rattends) if nhyper>2
replace shyper=round(shyper*5)

egen npeer=robs(loner rfriend rpopular bullied oldbest)
egen speer=rmean(loner rfriend rpopular bullied oldbest) if npeer>2
replace speer=round(speer*5)

egen nprosoc=robs(consid shares caring kind helpout)
egen sprosoc=rmean(consid shares caring kind helpout) if nprosoc>2
replace sprosoc=round(sprosoc*5)

drop robeys rreflect rattends rfriend rpopular nemotion nconduct nhyper npeer nprosoc 

gen sebdtot=semotion+sconduct+shyper+speer

*************




***PARQ
***Cohesion Scale (COH)


***Count number of ones ticked
egen one_tb_parq_coh=anycount(fam1 fam8 fam15 fam22 fam29 fam36 fam43 fam50 fam57 fam60), values(1)
***Count number of zeros ticked
egen zero_tb_parq_coh=anycount(fam1 fam8 fam15 fam22 fam29 fam36 fam43 fam50 fam57 fam60), values(0)
***Count number of missing responses ticked
egen miss_tb_parq_coh=rowmiss(fam1 fam8 fam15 fam22 fam29 fam36 fam43 fam50 fam57 fam60), 
***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace fam1=1 if fam1==. & one_tb_parq_coh>zero_tb_parq_coh & miss_tb_parq_coh<3
replace fam8=1 if fam8==. & one_tb_parq_coh>zero_tb_parq_coh & miss_tb_parq_coh<3
replace fam15=1 if fam15==. & one_tb_parq_coh>zero_tb_parq_coh & miss_tb_parq_coh<3
replace fam22=1 if fam22==. & one_tb_parq_coh>zero_tb_parq_coh & miss_tb_parq_coh<3
replace fam29=1 if fam29==. & one_tb_parq_coh>zero_tb_parq_coh & miss_tb_parq_coh<3
replace fam36=1 if fam36==. & one_tb_parq_coh>zero_tb_parq_coh & miss_tb_parq_coh<3
replace fam43=1 if fam43==. & one_tb_parq_coh>zero_tb_parq_coh & miss_tb_parq_coh<3
replace fam50=1 if fam50==. & one_tb_parq_coh>zero_tb_parq_coh & miss_tb_parq_coh<3
replace fam57=1 if fam57==. & one_tb_parq_coh>zero_tb_parq_coh & miss_tb_parq_coh<3
replace fam60=1 if fam60==. & one_tb_parq_coh>zero_tb_parq_coh & miss_tb_parq_coh<3

***To zero
replace fam1=0 if fam1==. & one_tb_parq_coh<zero_tb_parq_coh & miss_tb_parq_coh<3
replace fam8=0 if fam8==. & one_tb_parq_coh<zero_tb_parq_coh & miss_tb_parq_coh<3
replace fam15=0 if fam15==. & one_tb_parq_coh<zero_tb_parq_coh & miss_tb_parq_coh<3
replace fam22=0 if fam22==. & one_tb_parq_coh<zero_tb_parq_coh & miss_tb_parq_coh<3
replace fam29=0 if fam29==. & one_tb_parq_coh<zero_tb_parq_coh & miss_tb_parq_coh<3
replace fam36=0 if fam36==. & one_tb_parq_coh<zero_tb_parq_coh & miss_tb_parq_coh<3
replace fam43=0 if fam43==. & one_tb_parq_coh<zero_tb_parq_coh & miss_tb_parq_coh<3
replace fam50=0 if fam50==. & one_tb_parq_coh<zero_tb_parq_coh & miss_tb_parq_coh<3
replace fam57=0 if fam57==. & one_tb_parq_coh<zero_tb_parq_coh & miss_tb_parq_coh<3
replace fam60=0 if fam60==. & one_tb_parq_coh<zero_tb_parq_coh & miss_tb_parq_coh<3


recode fam1 fam22 fam36 fam50 fam57 fam60 (0=1) (1=0) (.=.) (else=.a)
egen tb_parq_coh=rowtotal(fam1 fam8 fam15 fam22 fam29 fam36 fam43 fam50 fam57 fam60)
replace tb_parq_coh=.b if miss_tb_parq_coh>2
replace tb_parq_coh=. if miss_tb_parq_coh==10
label variable tb_parq_coh "TB PARQ Cohesion"



*****Eating conflict (EAT) 


***Count number of ones ticked
egen one_tb_parq_eat=anycount(fam2 fam9 fam16 fam23 fam30 fam37 fam44 fam51 fam58 fam61), values(1)
***Count number of zeros ticked
egen zero_tb_parq_eat=anycount(fam2 fam9 fam16 fam23 fam30 fam37 fam44 fam51 fam58 fam61), values(0)
***Count number of missing responses ticked
egen miss_tb_parq_eat=rowmiss(fam2 fam9 fam16 fam23 fam30 fam37 fam44 fam51 fam58 fam61), 
***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace fam2=1 if fam2==. & one_tb_parq_eat>zero_tb_parq_eat & miss_tb_parq_eat<3
replace fam9=1 if fam9==. & one_tb_parq_eat>zero_tb_parq_eat & miss_tb_parq_eat<3
replace fam16=1 if fam16==. & one_tb_parq_eat>zero_tb_parq_eat & miss_tb_parq_eat<3
replace fam23=1 if fam23==. & one_tb_parq_eat>zero_tb_parq_eat & miss_tb_parq_eat<3
replace fam30=1 if fam30==. & one_tb_parq_eat>zero_tb_parq_eat & miss_tb_parq_eat<3
replace fam37=1 if fam37==. & one_tb_parq_eat>zero_tb_parq_eat & miss_tb_parq_eat<3
replace fam44=1 if fam44==. & one_tb_parq_eat>zero_tb_parq_eat & miss_tb_parq_eat<3
replace fam51=1 if fam51==. & one_tb_parq_eat>zero_tb_parq_eat & miss_tb_parq_eat<3
replace fam58=1 if fam58==. & one_tb_parq_eat>zero_tb_parq_eat & miss_tb_parq_eat<3
replace fam61=1 if fam61==. & one_tb_parq_eat>zero_tb_parq_eat & miss_tb_parq_eat<3

***To zero
replace fam2=0 if fam2==. & one_tb_parq_eat<zero_tb_parq_eat & miss_tb_parq_eat<3
replace fam9=0 if fam9==. & one_tb_parq_eat<zero_tb_parq_eat & miss_tb_parq_eat<3
replace fam16=0 if fam16==. & one_tb_parq_eat<zero_tb_parq_eat & miss_tb_parq_eat<3
replace fam23=0 if fam23==. & one_tb_parq_eat<zero_tb_parq_eat & miss_tb_parq_eat<3
replace fam30=0 if fam30==. & one_tb_parq_eat<zero_tb_parq_eat & miss_tb_parq_eat<3
replace fam37=0 if fam37==. & one_tb_parq_eat<zero_tb_parq_eat & miss_tb_parq_eat<3
replace fam44=0 if fam44==. & one_tb_parq_eat<zero_tb_parq_eat & miss_tb_parq_eat<3
replace fam51=0 if fam51==. & one_tb_parq_eat<zero_tb_parq_eat & miss_tb_parq_eat<3
replace fam58=0 if fam58==. & one_tb_parq_eat<zero_tb_parq_eat & miss_tb_parq_eat<3
replace fam61=0 if fam61==. & one_tb_parq_eat<zero_tb_parq_eat & miss_tb_parq_eat<3


recode fam16 (0=1) (1=0) (.=.) (else=.a)
egen tb_parq_eat=rowtotal(fam2 fam9 fam16 fam23 fam30 fam37 fam44 fam51 fam58 fam61)
replace tb_parq_eat=.b if miss_tb_parq_eat>2
replace tb_parq_eat=. if miss_tb_parq_eat==10
label variable tb_parq_eat "TB PARQ eating conflict"



***********Global distress (GDS)
***Count number of ones ticked
egen one_tb_parq_gds=anycount(fam3 fam10 fam17 fam24 fam31 fam38 fam45 fam52 fam59 fam62), values(1)
***Count number of zeros ticked
egen zero_tb_parq_gds=anycount(fam3 fam10 fam17 fam24 fam31 fam38 fam45 fam52 fam59 fam62), values(0)
***Count number of missing responses ticked
egen miss_tb_parq_gds=rowmiss(fam3 fam10 fam17 fam24 fam31 fam38 fam45 fam52 fam59 fam62), 
***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace fam3=1 if fam3==. & one_tb_parq_gds>zero_tb_parq_gds & miss_tb_parq_gds<3
replace fam10=1 if fam10==. & one_tb_parq_gds>zero_tb_parq_gds & miss_tb_parq_gds<3
replace fam17=1 if fam17==. & one_tb_parq_gds>zero_tb_parq_gds & miss_tb_parq_gds<3
replace fam24=1 if fam24==. & one_tb_parq_gds>zero_tb_parq_gds & miss_tb_parq_gds<3
replace fam31=1 if fam31==. & one_tb_parq_gds>zero_tb_parq_gds & miss_tb_parq_gds<3
replace fam38=1 if fam38==. & one_tb_parq_gds>zero_tb_parq_gds & miss_tb_parq_gds<3
replace fam45=1 if fam45==. & one_tb_parq_gds>zero_tb_parq_gds & miss_tb_parq_gds<3
replace fam52=1 if fam52==. & one_tb_parq_gds>zero_tb_parq_gds & miss_tb_parq_gds<3
replace fam59=1 if fam59==. & one_tb_parq_gds>zero_tb_parq_gds & miss_tb_parq_gds<3
replace fam62=1 if fam62==. & one_tb_parq_gds>zero_tb_parq_gds & miss_tb_parq_gds<3

***To zero
replace fam10=0 if fam10==. & one_tb_parq_gds<zero_tb_parq_gds & miss_tb_parq_gds<3
replace fam17=0 if fam17==. & one_tb_parq_gds<zero_tb_parq_gds & miss_tb_parq_gds<3
replace fam24=0 if fam24==. & one_tb_parq_gds<zero_tb_parq_gds & miss_tb_parq_gds<3
replace fam31=0 if fam31==. & one_tb_parq_gds<zero_tb_parq_gds & miss_tb_parq_gds<3
replace fam38=0 if fam38==. & one_tb_parq_gds<zero_tb_parq_gds & miss_tb_parq_gds<3
replace fam45=0 if fam45==. & one_tb_parq_gds<zero_tb_parq_gds & miss_tb_parq_gds<3
replace fam52=0 if fam52==. & one_tb_parq_gds<zero_tb_parq_gds & miss_tb_parq_gds<3
replace fam59=0 if fam59==. & one_tb_parq_gds<zero_tb_parq_gds & miss_tb_parq_gds<3
replace fam62=0 if fam62==. & one_tb_parq_gds<zero_tb_parq_gds & miss_tb_parq_gds<3

recode fam10 fam24 fam45 fam59 fam62 (0=1) (1=0) (.=.) (else=.a)
egen tb_parq_gds=rowtotal(fam3 fam10 fam17 fam24 fam31 fam38 fam45 fam52 fam59 fam62)
replace tb_parq_gds=.b if miss_tb_parq_gds>2
replace tb_parq_gds=. if miss_tb_parq_gds==10
label variable tb_parq_gds "TB PARQ Global Distress"


************Autonomy (AUT)
***Count number of ones ticked
egen one_tb_parq_aut=anycount(fam4 fam11 fam18 fam25 fam32 fam39 fam46 fam53), values(1)
***Count number of zeros ticked
egen zero_tb_parq_aut=anycount(fam4 fam11 fam18 fam25 fam32 fam39 fam46 fam53), values(0)
***Count number of missing responses ticked
egen miss_tb_parq_aut=rowmiss(fam4 fam11 fam18 fam25 fam32 fam39 fam46 fam53), 
***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace fam4=1 if fam4==. & one_tb_parq_aut>zero_tb_parq_aut & miss_tb_parq_aut<3
replace fam11=1 if fam11==. & one_tb_parq_aut>zero_tb_parq_aut & miss_tb_parq_aut<3
replace fam18=1 if fam18==. & one_tb_parq_aut>zero_tb_parq_aut & miss_tb_parq_aut<3
replace fam25=1 if fam25==. & one_tb_parq_aut>zero_tb_parq_aut & miss_tb_parq_aut<3
replace fam32=1 if fam32==. & one_tb_parq_aut>zero_tb_parq_aut & miss_tb_parq_aut<3
replace fam39=1 if fam39==. & one_tb_parq_aut>zero_tb_parq_aut & miss_tb_parq_aut<3
replace fam46=1 if fam46==. & one_tb_parq_aut>zero_tb_parq_aut & miss_tb_parq_aut<3
replace fam53=1 if fam53==. & one_tb_parq_aut>zero_tb_parq_aut & miss_tb_parq_aut<3

replace fam4=0 if fam4==. & one_tb_parq_aut<zero_tb_parq_aut & miss_tb_parq_aut<3
replace fam11=0 if fam11==. & one_tb_parq_aut<zero_tb_parq_aut & miss_tb_parq_aut<3
replace fam18=0 if fam18==. & one_tb_parq_aut<zero_tb_parq_aut & miss_tb_parq_aut<3
replace fam25=0 if fam25==. & one_tb_parq_aut<zero_tb_parq_aut & miss_tb_parq_aut<3
replace fam32=0 if fam32==. & one_tb_parq_aut<zero_tb_parq_aut & miss_tb_parq_aut<3
replace fam39=0 if fam39==. & one_tb_parq_aut<zero_tb_parq_aut & miss_tb_parq_aut<3
replace fam46=0 if fam46==. & one_tb_parq_aut<zero_tb_parq_aut & miss_tb_parq_aut<3
replace fam53=0 if fam53==. & one_tb_parq_aut<zero_tb_parq_aut & miss_tb_parq_aut<3

egen tb_parq_aut=rowtotal(fam4 fam11 fam18 fam25 fam32 fam39 fam46 fam53)
replace tb_parq_aut=.b if miss_tb_parq_aut>2
replace tb_parq_aut=. if miss_tb_parq_aut==10
label variable tb_parq_aut "TB PARQ Autonomy"


******************Ruination (RUIN)
***Count number of ones ticked
egen one_tb_parq_ruin=anycount(fam5 fam12 fam19 fam26 fam33 fam40 fam47 fam54), values(1)
***Count number of zeros ticked
egen zero_tb_parq_ruin=anycount(fam5 fam12 fam19 fam26 fam33 fam40 fam47 fam54), values(0)
***Count number of missing responses ticked
egen miss_tb_parq_ruin=rowmiss(fam5 fam12 fam19 fam26 fam33 fam40 fam47 fam54), 
***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace fam5=1 if fam5==. & one_tb_parq_ruin>zero_tb_parq_ruin & miss_tb_parq_ruin<3
replace fam12=1 if fam12==. & one_tb_parq_ruin>zero_tb_parq_ruin & miss_tb_parq_ruin<3
replace fam19=1 if fam19==. & one_tb_parq_ruin>zero_tb_parq_ruin & miss_tb_parq_ruin<3
replace fam26=1 if fam26==. & one_tb_parq_ruin>zero_tb_parq_ruin & miss_tb_parq_ruin<3
replace fam33=1 if fam33==. & one_tb_parq_ruin>zero_tb_parq_ruin & miss_tb_parq_ruin<3
replace fam40=1 if fam40==. & one_tb_parq_ruin>zero_tb_parq_ruin & miss_tb_parq_ruin<3
replace fam47=1 if fam47==. & one_tb_parq_ruin>zero_tb_parq_ruin & miss_tb_parq_ruin<3
replace fam54=1 if fam54==. & one_tb_parq_ruin>zero_tb_parq_ruin & miss_tb_parq_ruin<3

***To zeros
replace fam5=0 if fam5==. & one_tb_parq_ruin<zero_tb_parq_ruin & miss_tb_parq_ruin<3
replace fam12=0 if fam12==. & one_tb_parq_ruin<zero_tb_parq_ruin & miss_tb_parq_ruin<3
replace fam19=0 if fam19==. & one_tb_parq_ruin<zero_tb_parq_ruin & miss_tb_parq_ruin<3
replace fam26=0 if fam26==. & one_tb_parq_ruin<zero_tb_parq_ruin & miss_tb_parq_ruin<3
replace fam33=0 if fam33==. & one_tb_parq_ruin<zero_tb_parq_ruin & miss_tb_parq_ruin<3
replace fam40=0 if fam40==. & one_tb_parq_ruin<zero_tb_parq_ruin & miss_tb_parq_ruin<3
replace fam47=0 if fam47==. & one_tb_parq_ruin<zero_tb_parq_ruin & miss_tb_parq_ruin<3
replace fam54=0 if fam54==. & one_tb_parq_ruin<zero_tb_parq_ruin & miss_tb_parq_ruin<3

egen tb_parq_ruin=rowtotal(fam4 fam11 fam18 fam25 fam32 fam39 fam46 fam53)
replace tb_parq_ruin=.b if miss_tb_parq_ruin>2
replace tb_parq_ruin=. if miss_tb_parq_ruin==10
label variable tb_parq_ruin "TB PARQ Ruination"


*************Unfairness (FAIR)

***Count number of ones ticked
egen one_tb_parq_fair=anycount(fam6 fam13 fam20 fam27 fam34 fam41 fam48 fam55), values(1)
***Count number of zeros ticked
egen zero_tb_parq_fair=anycount(fam6 fam13 fam20 fam27 fam34 fam41 fam48 fam55), values(0)
***Count number of missing responses ticked
egen miss_tb_parq_fair=rowmiss(fam6 fam13 fam20 fam27 fam34 fam41 fam48 fam55), 
***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace fam6=1 if fam6==. & one_tb_parq_fair>zero_tb_parq_fair & miss_tb_parq_fair<3
replace fam13=1 if fam13==. & one_tb_parq_fair>zero_tb_parq_fair & miss_tb_parq_fair<3
replace fam20=1 if fam20==. & one_tb_parq_fair>zero_tb_parq_fair & miss_tb_parq_fair<3
replace fam27=1 if fam27==. & one_tb_parq_fair>zero_tb_parq_fair & miss_tb_parq_fair<3
replace fam34=1 if fam34==. & one_tb_parq_fair>zero_tb_parq_fair & miss_tb_parq_fair<3
replace fam41=1 if fam41==. & one_tb_parq_fair>zero_tb_parq_fair & miss_tb_parq_fair<3
replace fam48=1 if fam48==. & one_tb_parq_fair>zero_tb_parq_fair & miss_tb_parq_fair<3
replace fam55=1 if fam55==. & one_tb_parq_fair>zero_tb_parq_fair & miss_tb_parq_fair<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace fam6=0 if fam6==. & one_tb_parq_fair<zero_tb_parq_fair & miss_tb_parq_fair<3
replace fam13=0 if fam13==. & one_tb_parq_fair<zero_tb_parq_fair & miss_tb_parq_fair<3
replace fam20=0 if fam20==. & one_tb_parq_fair<zero_tb_parq_fair & miss_tb_parq_fair<3
replace fam27=0 if fam27==. & one_tb_parq_fair<zero_tb_parq_fair & miss_tb_parq_fair<3
replace fam34=0 if fam34==. & one_tb_parq_fair<zero_tb_parq_fair & miss_tb_parq_fair<3
replace fam41=0 if fam41==. & one_tb_parq_fair<zero_tb_parq_fair & miss_tb_parq_fair<3
replace fam48=0 if fam48==. & one_tb_parq_fair<zero_tb_parq_fair & miss_tb_parq_fair<3
replace fam55=0 if fam55==. & one_tb_parq_fair<zero_tb_parq_fair & miss_tb_parq_fair<3

egen tb_parq_fair=rowtotal(fam4 fam11 fam18 fam25 fam32 fam39 fam46 fam53)
replace tb_parq_fair=.b if miss_tb_parq_fair>2
replace tb_parq_fair=. if miss_tb_parq_fair==10
label variable tb_parq_fair "TB PARQ Fairness"

*************Conventionalisation (CNV)
***Count number of ones ticked
egen one_tb_parq_cnv=anycount(fam7 fam14 fam21 fam28 fam35 fam42 fam49 fam56), values(1)
***Count number of zeros ticked
egen zero_tb_parq_cnv=anycount(fam7 fam14 fam21 fam28 fam35 fam42 fam49 fam56), values(0)
***Count number of missing responses ticked
egen miss_tb_parq_cnv=rowmiss(fam7 fam14 fam21 fam28 fam35 fam42 fam49 fam56), 
***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace fam7=1 if fam7==. & one_tb_parq_cnv>zero_tb_parq_cnv & miss_tb_parq_cnv<3
replace fam14=1 if fam14==. & one_tb_parq_cnv>zero_tb_parq_cnv & miss_tb_parq_cnv<3
replace fam21=1 if fam21==. & one_tb_parq_cnv>zero_tb_parq_cnv & miss_tb_parq_cnv<3
replace fam28=1 if fam28==. & one_tb_parq_cnv>zero_tb_parq_cnv & miss_tb_parq_cnv<3
replace fam35=1 if fam35==. & one_tb_parq_cnv>zero_tb_parq_cnv & miss_tb_parq_cnv<3
replace fam42=1 if fam42==. & one_tb_parq_cnv>zero_tb_parq_cnv & miss_tb_parq_cnv<3
replace fam49=1 if fam49==. & one_tb_parq_cnv>zero_tb_parq_cnv & miss_tb_parq_cnv<3
replace fam56=1 if fam56==. & one_tb_parq_cnv>zero_tb_parq_cnv & miss_tb_parq_cnv<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace fam7=0 if fam7==. & one_tb_parq_cnv<zero_tb_parq_cnv & miss_tb_parq_cnv<3
replace fam14=0 if fam14==. & one_tb_parq_cnv<zero_tb_parq_cnv & miss_tb_parq_cnv<3
replace fam21=0 if fam21==. & one_tb_parq_cnv<zero_tb_parq_cnv & miss_tb_parq_cnv<3
replace fam28=0 if fam28==. & one_tb_parq_cnv<zero_tb_parq_cnv & miss_tb_parq_cnv<3
replace fam35=0 if fam35==. & one_tb_parq_cnv<zero_tb_parq_cnv & miss_tb_parq_cnv<3
replace fam42=0 if fam42==. & one_tb_parq_cnv<zero_tb_parq_cnv & miss_tb_parq_cnv<3
replace fam49=0 if fam49==. & one_tb_parq_cnv<zero_tb_parq_cnv & miss_tb_parq_cnv<3
replace fam56=0 if fam56==. & one_tb_parq_cnv<zero_tb_parq_cnv & miss_tb_parq_cnv<3

recode fam14 fam56 (0=1) (1=0) (.=.) (else=.a)
egen tb_parq_cnv=rowtotal(fam7 fam14 fam21 fam28 fam35 fam42 fam49 fam56)
replace tb_parq_cnv=.b if miss_tb_parq_cnv>2
replace tb_parq_cnv=. if miss_tb_parq_cnv==10
label variable tb_parq_cnv "TB PARQ Conventionalisation"


***************Mum communication
***Count number of ones ticked
egen one_tb_parq_mumcom=anycount(mum1 mum4 mum7 mum10 mum13 mum16 mum19 mum22), values(1)
***Count number of zeros ticked
egen zero_tb_parq_mumcom=anycount(mum1 mum4 mum7 mum10 mum13 mum16 mum19 mum22), values(0)
***Count number of missing responses ticked
egen miss_tb_parq_mumcom=rowmiss(mum1 mum4 mum7 mum10 mum13 mum16 mum19 mum22), 
*
***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace mum1=1 if mum1==. & one_tb_parq_mumcom>zero_tb_parq_mumcom & miss_tb_parq_mumcom<3
replace mum4=1 if mum1==. & one_tb_parq_mumcom>zero_tb_parq_mumcom & miss_tb_parq_mumcom<3
replace mum7=1 if mum1==. & one_tb_parq_mumcom>zero_tb_parq_mumcom & miss_tb_parq_mumcom<3
replace mum10=1 if mum1==. & one_tb_parq_mumcom>zero_tb_parq_mumcom & miss_tb_parq_mumcom<3
replace mum13=1 if mum1==. & one_tb_parq_mumcom>zero_tb_parq_mumcom & miss_tb_parq_mumcom<3
replace mum16=1 if mum1==. & one_tb_parq_mumcom>zero_tb_parq_mumcom & miss_tb_parq_mumcom<3
replace mum19=1 if mum1==. & one_tb_parq_mumcom>zero_tb_parq_mumcom & miss_tb_parq_mumcom<3
replace mum22=1 if mum1==. & one_tb_parq_mumcom>zero_tb_parq_mumcom & miss_tb_parq_mumcom<3

***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace mum1=1 if mum1==. & one_tb_parq_mumcom<zero_tb_parq_mumcom & miss_tb_parq_mumcom<3
replace mum4=1 if mum1==. & one_tb_parq_mumcom<zero_tb_parq_mumcom & miss_tb_parq_mumcom<3
replace mum7=1 if mum1==. & one_tb_parq_mumcom<zero_tb_parq_mumcom & miss_tb_parq_mumcom<3
replace mum10=1 if mum1==. & one_tb_parq_mumcom<zero_tb_parq_mumcom & miss_tb_parq_mumcom<3
replace mum13=1 if mum1==. & one_tb_parq_mumcom<zero_tb_parq_mumcom & miss_tb_parq_mumcom<3
replace mum16=1 if mum1==. & one_tb_parq_mumcom<zero_tb_parq_mumcom & miss_tb_parq_mumcom<3
replace mum19=1 if mum1==. & one_tb_parq_mumcom<zero_tb_parq_mumcom & miss_tb_parq_mumcom<3
replace mum22=1 if mum1==. & one_tb_parq_mumcom<zero_tb_parq_mumcom & miss_tb_parq_mumcom<3

recode mum4 mum10 mum13 mum19 mum22 (0=1) (1=0) (else=.a)
egen tb_parq_mumcom=rowtotal(mum1 mum4 mum7 mum10 mum13 mum16 mum19 mum22)
replace tb_parq_mumcom=.b if miss_tb_parq_mumcom>2
replace tb_parq_mumcom=. if miss_tb_parq_mumcom==10
label variable tb_parq_mumcom "TB PARQ Mum: Communication"



***********Mum Problem Solving
***Count number of ones ticked
egen one_tb_parq_mumprsl=anycount(mum2 mum5 mum8 mum11 mum14 mum17 mum20 mum23), values(1)
***Count number of zeros ticked
egen zero_tb_parq_mumprsl=anycount(mum2 mum5 mum8 mum11 mum14 mum17 mum20 mum23), values(0)
***Count number of missing responses ticked
egen miss_tb_parq_mumprsl=rowmiss(mum2 mum5 mum8 mum11 mum14 mum17 mum20 mum23), 
*
***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace mum2=1 if mum1==. & one_tb_parq_mumprsl>zero_tb_parq_mumprsl & miss_tb_parq_mumprsl<3
replace mum5=1 if mum1==. & one_tb_parq_mumprsl>zero_tb_parq_mumprsl & miss_tb_parq_mumprsl<3
replace mum8=1 if mum1==. & one_tb_parq_mumprsl>zero_tb_parq_mumprsl & miss_tb_parq_mumprsl<3
replace mum11=1 if mum1==. & one_tb_parq_mumprsl>zero_tb_parq_mumprsl & miss_tb_parq_mumprsl<3
replace mum14=1 if mum1==. & one_tb_parq_mumprsl>zero_tb_parq_mumprsl & miss_tb_parq_mumprsl<3
replace mum17=1 if mum1==. & one_tb_parq_mumprsl>zero_tb_parq_mumprsl & miss_tb_parq_mumprsl<3
replace mum20=1 if mum1==. & one_tb_parq_mumprsl>zero_tb_parq_mumprsl & miss_tb_parq_mumprsl<3
replace mum23=1 if mum1==. & one_tb_parq_mumprsl>zero_tb_parq_mumprsl & miss_tb_parq_mumprsl<3

***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace mum2=1 if mum1==. & one_tb_parq_mumprsl<zero_tb_parq_mumprsl & miss_tb_parq_mumprsl<3
replace mum5=1 if mum1==. & one_tb_parq_mumprsl<zero_tb_parq_mumprsl & miss_tb_parq_mumprsl<3
replace mum8=1 if mum1==. & one_tb_parq_mumprsl<zero_tb_parq_mumprsl & miss_tb_parq_mumprsl<3
replace mum11=1 if mum1==. & one_tb_parq_mumprsl<zero_tb_parq_mumprsl & miss_tb_parq_mumprsl<3
replace mum14=1 if mum1==. & one_tb_parq_mumprsl<zero_tb_parq_mumprsl & miss_tb_parq_mumprsl<3
replace mum17=1 if mum1==. & one_tb_parq_mumprsl<zero_tb_parq_mumprsl & miss_tb_parq_mumprsl<3
replace mum20=1 if mum1==. & one_tb_parq_mumprsl<zero_tb_parq_mumprsl & miss_tb_parq_mumprsl<3
replace mum23=1 if mum1==. & one_tb_parq_mumprsl<zero_tb_parq_mumprsl & miss_tb_parq_mumprsl<3

recode mum5 mum11 mum20 (0=1) (1=0) (else=.a)
egen tb_parq_mumprsl=rowtotal(mum2 mum5 mum8 mum11 mum14 mum17 mum20 mum23 )
replace tb_parq_mumprsl=.b if miss_tb_parq_mumprsl>2
replace tb_parq_mumprsl=. if miss_tb_parq_mumprsl==10
label variable tb_parq_mumprsl "TB PARQ Mum: Problem Solving"


***********Mum School Conflict

***Count number of ones ticked
egen one_tb_parq_mumsch=anycount(mum3 mum6 mum9 mum12 mum15 mum18 mum21 mum24), values(1)
***Count number of zeros ticked
egen zero_tb_parq_mumsch=anycount(mum3 mum6 mum9 mum12 mum15 mum18 mum21 mum24), values(0)
***Count number of missing responses ticked
egen miss_tb_parq_mumsch=rowmiss(mum3 mum6 mum9 mum12 mum15 mum18 mum21 mum24), 
*
***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace mum3=1 if mum1==. & one_tb_parq_mumsch>zero_tb_parq_mumsch & miss_tb_parq_mumsch<3
replace mum6=1 if mum1==. & one_tb_parq_mumsch>zero_tb_parq_mumsch & miss_tb_parq_mumsch<3
replace mum9=1 if mum1==. & one_tb_parq_mumsch>zero_tb_parq_mumsch & miss_tb_parq_mumsch<3
replace mum12=1 if mum1==. & one_tb_parq_mumsch>zero_tb_parq_mumsch & miss_tb_parq_mumsch<3
replace mum15=1 if mum1==. & one_tb_parq_mumsch>zero_tb_parq_mumsch & miss_tb_parq_mumsch<3
replace mum18=1 if mum1==. & one_tb_parq_mumsch>zero_tb_parq_mumsch & miss_tb_parq_mumsch<3
replace mum21=1 if mum1==. & one_tb_parq_mumsch>zero_tb_parq_mumsch & miss_tb_parq_mumsch<3
replace mum24=1 if mum1==. & one_tb_parq_mumsch>zero_tb_parq_mumsch & miss_tb_parq_mumsch<3

***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace mum3=1 if mum1==. & one_tb_parq_mumsch<zero_tb_parq_mumsch & miss_tb_parq_mumsch<3
replace mum6=1 if mum1==. & one_tb_parq_mumsch<zero_tb_parq_mumsch & miss_tb_parq_mumsch<3
replace mum9=1 if mum1==. & one_tb_parq_mumsch<zero_tb_parq_mumsch & miss_tb_parq_mumsch<3
replace mum12=1 if mum1==. & one_tb_parq_mumsch<zero_tb_parq_mumsch & miss_tb_parq_mumsch<3
replace mum15=1 if mum1==. & one_tb_parq_mumsch<zero_tb_parq_mumsch & miss_tb_parq_mumsch<3
replace mum18=1 if mum1==. & one_tb_parq_mumsch<zero_tb_parq_mumsch & miss_tb_parq_mumsch<3
replace mum21=1 if mum1==. & one_tb_parq_mumsch<zero_tb_parq_mumsch & miss_tb_parq_mumsch<3
replace mum24=1 if mum1==. & one_tb_parq_mumsch<zero_tb_parq_mumsch & miss_tb_parq_mumsch<3


egen tb_parq_mumsch=rowtotal(mum3 mum6 mum9 mum12 mum15 mum18 mum21 mum24)
replace tb_parq_mumsch=.b if miss_tb_parq_mumprsl>2
replace tb_parq_mumsch=. if miss_tb_parq_mumprsl==10
label variable tb_parq_mumsch "TB PARQ Mum: School Conflict"


***************dad communication

***Count number of ones ticked
egen one_tb_parq_dadcom=anycount(dad1 dad4 dad7 dad10 dad13 dad16 dad19 dad22), values(1)
***Count number of zeros ticked
egen zero_tb_parq_dadcom=anycount(dad1 dad4 dad7 dad10 dad13 dad16 dad19 dad22), values(0)
***Count number of missing responses ticked
egen miss_tb_parq_dadcom=rowmiss(dad1 dad4 dad7 dad10 dad13 dad16 dad19 dad22), 
*
***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace dad1=1 if dad1==. & one_tb_parq_dadcom>zero_tb_parq_dadcom & miss_tb_parq_dadcom<3
replace dad4=1 if dad1==. & one_tb_parq_dadcom>zero_tb_parq_dadcom & miss_tb_parq_dadcom<3
replace dad7=1 if dad1==. & one_tb_parq_dadcom>zero_tb_parq_dadcom & miss_tb_parq_dadcom<3
replace dad10=1 if dad1==. & one_tb_parq_dadcom>zero_tb_parq_dadcom & miss_tb_parq_dadcom<3
replace dad13=1 if dad1==. & one_tb_parq_dadcom>zero_tb_parq_dadcom & miss_tb_parq_dadcom<3
replace dad16=1 if dad1==. & one_tb_parq_dadcom>zero_tb_parq_dadcom & miss_tb_parq_dadcom<3
replace dad19=1 if dad1==. & one_tb_parq_dadcom>zero_tb_parq_dadcom & miss_tb_parq_dadcom<3
replace dad22=1 if dad1==. & one_tb_parq_dadcom>zero_tb_parq_dadcom & miss_tb_parq_dadcom<3

***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace dad1=1 if dad1==. & one_tb_parq_dadcom<zero_tb_parq_dadcom & miss_tb_parq_dadcom<3
replace dad4=1 if dad1==. & one_tb_parq_dadcom<zero_tb_parq_dadcom & miss_tb_parq_dadcom<3
replace dad7=1 if dad1==. & one_tb_parq_dadcom<zero_tb_parq_dadcom & miss_tb_parq_dadcom<3
replace dad10=1 if dad1==. & one_tb_parq_dadcom<zero_tb_parq_dadcom & miss_tb_parq_dadcom<3
replace dad13=1 if dad1==. & one_tb_parq_dadcom<zero_tb_parq_dadcom & miss_tb_parq_dadcom<3
replace dad16=1 if dad1==. & one_tb_parq_dadcom<zero_tb_parq_dadcom & miss_tb_parq_dadcom<3
replace dad19=1 if dad1==. & one_tb_parq_dadcom<zero_tb_parq_dadcom & miss_tb_parq_dadcom<3
replace dad22=1 if dad1==. & one_tb_parq_dadcom<zero_tb_parq_dadcom & miss_tb_parq_dadcom<3

recode dad4 dad10 dad13 dad19 dad22 (0=1) (1=0) (else=.a)
egen tb_parq_dadcom=rowtotal(dad1 dad4 dad7 dad10 dad13 dad16 dad19 dad22)
replace tb_parq_dadcom=.b if miss_tb_parq_dadcom>2
replace tb_parq_dadcom=. if miss_tb_parq_dadcom==10
label variable tb_parq_dadcom "TB PARQ dad: Communication"



***********dad Problem Solving

***Count number of ones ticked
egen one_tb_parq_dadprsl=anycount(dad2 dad5 dad8 dad11 dad14 dad17 dad20 dad23), values(1)
***Count number of zeros ticked
egen zero_tb_parq_dadprsl=anycount(dad2 dad5 dad8 dad11 dad14 dad17 dad20 dad23), values(0)
***Count number of missing responses ticked
egen miss_tb_parq_dadprsl=rowmiss(dad2 dad5 dad8 dad11 dad14 dad17 dad20 dad23), 
*
***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace dad2=1 if dad1==. & one_tb_parq_dadprsl>zero_tb_parq_dadprsl & miss_tb_parq_dadprsl<3
replace dad5=1 if dad1==. & one_tb_parq_dadprsl>zero_tb_parq_dadprsl & miss_tb_parq_dadprsl<3
replace dad8=1 if dad1==. & one_tb_parq_dadprsl>zero_tb_parq_dadprsl & miss_tb_parq_dadprsl<3
replace dad11=1 if dad1==. & one_tb_parq_dadprsl>zero_tb_parq_dadprsl & miss_tb_parq_dadprsl<3
replace dad14=1 if dad1==. & one_tb_parq_dadprsl>zero_tb_parq_dadprsl & miss_tb_parq_dadprsl<3
replace dad17=1 if dad1==. & one_tb_parq_dadprsl>zero_tb_parq_dadprsl & miss_tb_parq_dadprsl<3
replace dad20=1 if dad1==. & one_tb_parq_dadprsl>zero_tb_parq_dadprsl & miss_tb_parq_dadprsl<3
replace dad23=1 if dad1==. & one_tb_parq_dadprsl>zero_tb_parq_dadprsl & miss_tb_parq_dadprsl<3

***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace dad2=1 if dad1==. & one_tb_parq_dadprsl<zero_tb_parq_dadprsl & miss_tb_parq_dadprsl<3
replace dad5=1 if dad1==. & one_tb_parq_dadprsl<zero_tb_parq_dadprsl & miss_tb_parq_dadprsl<3
replace dad8=1 if dad1==. & one_tb_parq_dadprsl<zero_tb_parq_dadprsl & miss_tb_parq_dadprsl<3
replace dad11=1 if dad1==. & one_tb_parq_dadprsl<zero_tb_parq_dadprsl & miss_tb_parq_dadprsl<3
replace dad14=1 if dad1==. & one_tb_parq_dadprsl<zero_tb_parq_dadprsl & miss_tb_parq_dadprsl<3
replace dad17=1 if dad1==. & one_tb_parq_dadprsl<zero_tb_parq_dadprsl & miss_tb_parq_dadprsl<3
replace dad20=1 if dad1==. & one_tb_parq_dadprsl<zero_tb_parq_dadprsl & miss_tb_parq_dadprsl<3
replace dad23=1 if dad1==. & one_tb_parq_dadprsl<zero_tb_parq_dadprsl & miss_tb_parq_dadprsl<3

recode dad5 dad11 dad20 (0=1) (1=0) (else=.a)
egen tb_parq_dadprsl=rowtotal(dad2 dad5 dad8 dad11 dad14 dad17 dad20 dad23 )
replace tb_parq_dadprsl=.b if miss_tb_parq_dadprsl>2
replace tb_parq_dadprsl=. if miss_tb_parq_dadprsl==10
label variable tb_parq_dadprsl "TB PARQ dad: Problem Solving"


***********dad School Conflict

***Count number of ones ticked
egen one_tb_parq_dadsch=anycount(dad3 dad6 dad9 dad12 dad15 dad18 dad21 dad24), values(1)
***Count number of zeros ticked
egen zero_tb_parq_dadsch=anycount(dad3 dad6 dad9 dad12 dad15 dad18 dad21 dad24), values(0)
***Count number of missing responses ticked
egen miss_tb_parq_dadsch=rowmiss(dad3 dad6 dad9 dad12 dad15 dad18 dad21 dad24), 
*
***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace dad3=1 if dad1==. & one_tb_parq_dadsch>zero_tb_parq_dadsch & miss_tb_parq_dadsch<3
replace dad6=1 if dad1==. & one_tb_parq_dadsch>zero_tb_parq_dadsch & miss_tb_parq_dadsch<3
replace dad9=1 if dad1==. & one_tb_parq_dadsch>zero_tb_parq_dadsch & miss_tb_parq_dadsch<3
replace dad12=1 if dad1==. & one_tb_parq_dadsch>zero_tb_parq_dadsch & miss_tb_parq_dadsch<3
replace dad15=1 if dad1==. & one_tb_parq_dadsch>zero_tb_parq_dadsch & miss_tb_parq_dadsch<3
replace dad18=1 if dad1==. & one_tb_parq_dadsch>zero_tb_parq_dadsch & miss_tb_parq_dadsch<3
replace dad21=1 if dad1==. & one_tb_parq_dadsch>zero_tb_parq_dadsch & miss_tb_parq_dadsch<3
replace dad24=1 if dad1==. & one_tb_parq_dadsch>zero_tb_parq_dadsch & miss_tb_parq_dadsch<3

***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace dad3=1 if dad1==. & one_tb_parq_dadsch<zero_tb_parq_dadsch & miss_tb_parq_dadsch<3
replace dad6=1 if dad1==. & one_tb_parq_dadsch<zero_tb_parq_dadsch & miss_tb_parq_dadsch<3
replace dad9=1 if dad1==. & one_tb_parq_dadsch<zero_tb_parq_dadsch & miss_tb_parq_dadsch<3
replace dad12=1 if dad1==. & one_tb_parq_dadsch<zero_tb_parq_dadsch & miss_tb_parq_dadsch<3
replace dad15=1 if dad1==. & one_tb_parq_dadsch<zero_tb_parq_dadsch & miss_tb_parq_dadsch<3
replace dad18=1 if dad1==. & one_tb_parq_dadsch<zero_tb_parq_dadsch & miss_tb_parq_dadsch<3
replace dad21=1 if dad1==. & one_tb_parq_dadsch<zero_tb_parq_dadsch & miss_tb_parq_dadsch<3
replace dad24=1 if dad1==. & one_tb_parq_dadsch<zero_tb_parq_dadsch & miss_tb_parq_dadsch<3


egen tb_parq_dadsch=rowtotal(dad3 dad6 dad9 dad12 dad15 dad18 dad21 dad24)
replace tb_parq_dadsch=.b if miss_tb_parq_dadprsl>2
replace tb_parq_dadsch=. if miss_tb_parq_dadprsl==10
label variable tb_parq_dadsch "TB PARQ dad: Problem Solving"


***Parental Monitoring
recode knwfreetime knwfrnds knwhomewrk knwspend knwexam knwsubjects knwgoesnight knwgoafterschool (1=0) (2=0) (3=1) (4=1)
recode knwnoidea (1=1) (2=1) (3=0) (4=0)
egen tb_monitor= rowtotal(knwfreetime knwfrnds knwhomewrk knwspend knwexam knwsubjects knwgoesnight knwgoafterschool knwnoidea), missing
label variable tb_monitor "Teen Baseline Monitoring"

***Child disclosure
recode tellprntsbtfrnds tllprntsschool talkeveningout (1=0) (2=0) (3=1) (4=1)
recode secretsprtime  secretwkend (1=1) (2=1) (3=0) (4=0)
egen tb_disclose=rowtotal(tellprntsbtfrnds tllprntsschool secretsprtime secretwkend talkeveningout),missing
label variable tb_disclose "Teen baseline Disclosure"

***Parental Solicitation
recode abtlkchldfriends convsparetime convfreetime prntsextratime prntaskschool (1=0) (2=0) (3=1) (4=1)
egen tb_solic=rowtotal(abtlkchldfriends convsparetime convfreetime prntsextratime prntaskschool),missing
label variable tb_solic "Teen baseline Solicitation"

***Parental Control
recode permstayout tellbefore telloutlate telloutnight askoutsat tellspend (1=0) (2=0) (3=1) (4=1)
egen tb_control=rowtotal(permstayout tellbefore telloutlate telloutnight askoutsat tellspend),missing
label variable tb_control "Teen baseline Control"

keep id baselinecompleted site notes checked male ///
baseage ethnicity ethnicother anyreligion religion ///
christianity otherrelig culture othculture semotion ///
sconduct shyper speer sprosoc sebdtot tb_parq_coh tb_parq_eat ///
tb_parq_gds tb_parq_aut tb_parq_ruin tb_parq_fair tb_parq_cnv ///
tb_parq_mumcom tb_parq_mumprsl tb_parq_mumsch tb_parq_dadcom ///
tb_parq_dadprsl tb_parq_dadsch tb_monitor tb_disclose tb_solic tb_control


drop baselinecompleted checked


***Adolescent Convert raw scores to computed T scores
recode tb_parq_coh (10=73) (9=69) (8=66) (7=62) (6=59) (5=55) (4=52) (3=48) (2=45) (1=42) (0=38)
recode tb_parq_eat  (10=91) (9=86) (8=81) (7=77) (6=72) (5=67) (4=62) (3=57) (2=52) (1=47) (0=43)
recode tb_parq_gds (10=76) (9=73) (8=69) (7=66) (6=63) (5=59) (4=56) (3=52) (2=49) (1=45) (0=42)
recode tb_parq_aut (8=76) (7=71) (6=67) (5=62) (4=58) (3=53) (2=48) (1=44) (0=39)
recode tb_parq_ruin (8=76) (7=71) (6=67) (5=62) (4=57) (3=52) (2=47) (1=42) (0=38)
recode tb_parq_fair (8=77) (7=72) (6=67) (5=62) (4=57) (3=52) (2=47) (1=43) (0=38)
recode tb_parq_cnv (8=74) (7=69) (6=64) (5=59) (4=54) (3=49) (2=45) (1=41) (0=36)
recode tb_parq_mumcom (8=74) (7=70) (6=66) (5=62) (4=57) (3=53) (2=49) (1=45) (0=41)
recode tb_parq_mumprsl (8=74) (7=70) (6=65) (5=61) (4=57) (3=52) (2=48) (1=44)  (0=40)
recode tb_parq_mumsch (8=77) (7=73) (6=68) (5=64) (4=59) (3=54) (2=50) (1=45) (0=41)
recode tb_parq_dadcom (8=74) (7=70) (6=66) (5=62) (4=57) (3=53) (2=49) (1=45) (0=41)
recode tb_parq_dadprsl (8=75) (7=71) (6=66) (5=62) (4=57) (3=53) (2=49) (1=44) (0=40)
recode tb_parq_dadsch (8=76) (7=71) (6=67) (5=62) (4=58) (3=53) (2=49) (1=44) (0=40)

save "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Final Data\teen baseline coded.dta", replace



