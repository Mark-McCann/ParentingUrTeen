****This will be replaced with the finalised file after data collection is complete
use "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Data Entry\Surveys\Adult Baseline_Checked.dta",clear

***use the allocation sheet instead

drop alloca site round time couple pair

***ghqalt1 missing

gen ghqalt1=.
move ghqalt1 ghqalt2
replace ghqalt1=3 if id==1007
replace ghqalt1=2 if id==2011
replace ghqalt1=2 if id==2015
replace ghqalt1=3 if id==2035


recode ghqalt1 (1=1) (2=1) (3=0) (4=0) (.=.) (else=.a)
recode ghqalt2 (1=1) (2=1) (3=0) (4=0) (.=.) (else=.a)
recode ghqalt3 (1=1) (2=1) (3=0) (4=0) (.=.) (else=.a)
recode ghqalt4 (1=1) (2=1) (3=0) (4=0) (.=.) (else=.a)
recode ghqalt5 (1=1) (2=1) (3=0) (4=0) (.=.) (else=.a)
recode ghqalt6 (1=1) (2=1) (3=0) (4=0) (.=.) (else=.a)
recode ghqalt7 (1=1) (2=1) (3=0) (4=0) (.=.) (else=.a)
recode ghqalt8 (1=1) (2=1) (3=0) (4=0) (.=.) (else=.a)
recode ghqalt9 (1=1) (2=1) (3=0) (4=0) (.=.) (else=.a)
recode ghqalt10 (1=1) (2=1) (3=0) (4=0) (.=.) (else=.a)
recode ghqalt11 (1=1) (2=1) (3=0) (4=0) (.=.) (else=.a)
recode ghqalt12 (1=1) (2=1) (3=0) (4=0) (.=.) (else=.a)
recode ghqalt13 (1=1) (2=1) (3=0) (4=0) (.=.) (else=.a)
recode ghqalt14 (1=1) (2=1) (3=0) (4=0) (.=.) (else=.a)
recode ghqalt15 (1=0) (2=0) (3=1) (4=1) (.=.) (else=.a)
recode ghqalt16 (1=1) (2=1) (3=0) (4=0) (.=.) (else=.a)
recode ghqalt17 (1=1) (2=1) (3=0) (4=0) (.=.) (else=.a)
recode ghqalt18 (1=0) (2=0) (3=1) (4=1) (.=.) (else=.a)
recode ghqalt19 (1=0) (2=0) (3=1) (4=1) (.=.) (else=.a)
recode ghqalt20 (1=0) (2=0) (3=1) (4=1) (.=.) (else=.a)
recode ghqalt21 (1=0) (2=0) (3=1) (4=1) (.=.) (else=.a)
recode ghqalt22 (1=0) (2=0) (3=1) (4=1) (.=.) (else=.a)


egen ab_ghqalt=rowtotal(ghqalt1 - ghqalt28),missing




**GHQ - General Health Questionnaire

********Missing data scored as zero as noted in link below
***http://www.gl-assessment.co.uk/health_and_psychology/resources/general_health_questionnaire/faqs.asp?css=1#faq13


recode ghq1 (1=1) (2=1) (3=0) (4=0) (.=.) (else=.a)
recode ghq2 (1=1) (2=1) (3=0) (4=0) (.=.) (else=.a)
recode ghq3 (1=1) (2=1) (3=0) (4=0) (.=.) (else=.a)
recode ghq4 (1=1) (2=1) (3=0) (4=0) (.=.) (else=.a)
recode ghq5 (1=1) (2=1) (3=0) (4=0) (.=.) (else=.a)
recode ghq6 (1=1) (2=1) (3=0) (4=0) (.=.) (else=.a)
recode ghq7 (1=1) (2=1) (3=0) (4=0) (.=.) (else=.a)
recode ghq8 (1=1) (2=1) (3=0) (4=0) (.=.) (else=.a)
recode ghq9 (1=1) (2=1) (3=0) (4=0) (.=.) (else=.a)
recode ghq10 (1=1) (2=1) (3=0) (4=0) (.=.) (else=.a)
recode ghq11 (1=1) (2=1) (3=0) (4=0) (.=.) (else=.a)
recode ghq12 (1=1) (2=1) (3=0) (4=0) (.=.) (else=.a)
egen ab_ghq=rowtotal(ghq1 ghq2 ghq3 ghq4 ghq5 ghq6 ghq7 ghq8 ghq9 ghq10 ghq11 ghq12), missing


*****PARQ - Parent Adolescent Relationship Questionnaire
*****
*****
*****
*****
***Global Distress Scale

***Count number of ones ticked
egen one_ab_parq_gds=anycount(par1 par11 par21 par31 par41 par51 par61 par71 par81 par88), values(1)
***Count number of zeros ticked
egen zero_ab_parq_gds=anycount(par1 par11 par21 par31 par41 par51 par61 par71 par81 par88), values(0)
***Count number of missing responses ticked
egen miss_ab_parq_gds=rowmiss(par1 par11 par21 par31 par41 par51 par61 par71 par81 par88), 
***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par1=1 if par1==. & one_ab_parq_gds>zero_ab_parq_gds & miss_ab_parq_gds<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par1=0 if par1==. & one_ab_parq_gds<zero_ab_parq_gds & miss_ab_parq_gds<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par11=1 if par1==. & one_ab_parq_gds>zero_ab_parq_gds & miss_ab_parq_gds<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par11=0 if par1==. & one_ab_parq_gds<zero_ab_parq_gds & miss_ab_parq_gds<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par21=1 if par1==. & one_ab_parq_gds>zero_ab_parq_gds & miss_ab_parq_gds<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par21=0 if par1==. & one_ab_parq_gds<zero_ab_parq_gds & miss_ab_parq_gds<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par31=1 if par1==. & one_ab_parq_gds>zero_ab_parq_gds & miss_ab_parq_gds<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par31=0 if par1==. & one_ab_parq_gds<zero_ab_parq_gds & miss_ab_parq_gds<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par41=1 if par1==. & one_ab_parq_gds>zero_ab_parq_gds & miss_ab_parq_gds<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par41=0 if par1==. & one_ab_parq_gds<zero_ab_parq_gds & miss_ab_parq_gds<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par51=1 if par1==. & one_ab_parq_gds>zero_ab_parq_gds & miss_ab_parq_gds<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par51=0 if par1==. & one_ab_parq_gds<zero_ab_parq_gds & miss_ab_parq_gds<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par61=1 if par1==. & one_ab_parq_gds>zero_ab_parq_gds & miss_ab_parq_gds<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par61=0 if par1==. & one_ab_parq_gds<zero_ab_parq_gds & miss_ab_parq_gds<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par71=1 if par1==. & one_ab_parq_gds>zero_ab_parq_gds & miss_ab_parq_gds<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par71=0 if par1==. & one_ab_parq_gds<zero_ab_parq_gds & miss_ab_parq_gds<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par81=1 if par1==. & one_ab_parq_gds>zero_ab_parq_gds & miss_ab_parq_gds<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par81=0 if par1==. & one_ab_parq_gds<zero_ab_parq_gds & miss_ab_parq_gds<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par88=1 if par1==. & one_ab_parq_gds>zero_ab_parq_gds & miss_ab_parq_gds<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par88=0 if par1==. & one_ab_parq_gds<zero_ab_parq_gds & miss_ab_parq_gds<3


recode par21 par41 (0=1) (1=0) (.=.) (else=.a)
egen ab_parq_gds=rowtotal(par1 par11 par21 par31 par41 par51 par61 par71 par81 par88)
replace ab_parq_gds=.b if miss_ab_parq_gds>2
replace ab_parq_gds=. if miss_ab_parq_gds==10
label variable ab_parq_gds "AB PARQ Global Distress"

*****
*****
*****
*****
*******Communication Scale
*****
*****
*****
*****
**Count number of ones ticked
egen one_ab_parq_com=anycount(par2	par12	par22	par32	par42	par52	par62	par72	par82	par89), values(1)

***Count number of zeros ticked
egen zero_ab_parq_com=anycount(par2	par12	par22	par32	par42	par52	par62	par72	par82	par89), values(0)

***Count number of missing responses ticked
egen miss_ab_parq_com=rowmiss(par2	par12	par22	par32	par42	par52	par62	par72	par82	par89), 

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par2=1 if par2==. & one_ab_parq_com>zero_ab_parq_com & miss_ab_parq_com<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par2=0 if par2==. & one_ab_parq_com<zero_ab_parq_com & miss_ab_parq_com<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par12=1 if par2==. & one_ab_parq_com>zero_ab_parq_com & miss_ab_parq_com<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par12=0 if par2==. & one_ab_parq_com<zero_ab_parq_com & miss_ab_parq_com<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par22=1 if par2==. & one_ab_parq_com>zero_ab_parq_com & miss_ab_parq_com<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par22=0 if par2==. & one_ab_parq_com<zero_ab_parq_com & miss_ab_parq_com<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par32=1 if par2==. & one_ab_parq_com>zero_ab_parq_com & miss_ab_parq_com<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par32=0 if par2==. & one_ab_parq_com<zero_ab_parq_com & miss_ab_parq_com<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par42=1 if par2==. & one_ab_parq_com>zero_ab_parq_com & miss_ab_parq_com<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par42=0 if par2==. & one_ab_parq_com<zero_ab_parq_com & miss_ab_parq_com<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par52=1 if par2==. & one_ab_parq_com>zero_ab_parq_com & miss_ab_parq_com<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par52=0 if par2==. & one_ab_parq_com<zero_ab_parq_com & miss_ab_parq_com<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par62=1 if par2==. & one_ab_parq_com>zero_ab_parq_com & miss_ab_parq_com<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par62=0 if par2==. & one_ab_parq_com<zero_ab_parq_com & miss_ab_parq_com<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par72=1 if par2==. & one_ab_parq_com>zero_ab_parq_com & miss_ab_parq_com<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par72=0 if par2==. & one_ab_parq_com<zero_ab_parq_com & miss_ab_parq_com<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par82=1 if par2==. & one_ab_parq_com>zero_ab_parq_com & miss_ab_parq_com<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par82=0 if par2==. & one_ab_parq_com<zero_ab_parq_com & miss_ab_parq_com<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par89=1 if par2==. & one_ab_parq_com>zero_ab_parq_com & miss_ab_parq_com<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par89=0 if par2==. & one_ab_parq_com<zero_ab_parq_com & miss_ab_parq_com<3


recode par2 par12 par32 par42 par52 par72 par89  (0=1) (1=0) (.=.) (else=.a)
egen ab_parq_com=rowtotal(par2	par12	par22	par32	par42	par52	par62	par72	par82	par89)
replace ab_parq_com=.b if miss_ab_parq_com>2
replace ab_parq_com=. if miss_ab_parq_com==10
label variable ab_parq_com "AB PARQ Communication"

*****
*****
*****
*****
*******Problem Solving Scale
*****
*****
*****
*****
**Count number of ones ticked
egen one_ab_parq_prsl=anycount(par3	par13	par23	par33	par43	par53	par63	par73	par83	par90), values(1)

***Count number of zeros ticked
egen zero_ab_parq_prsl=anycount(par3	par13	par23	par33	par43	par53	par63	par73	par83	par90), values(0)

***Count number of missing responses ticked
egen miss_ab_parq_prsl=rowmiss(par3	par13	par23	par33	par43	par53	par63	par73	par83	par90), 

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par3=1 if par3==. & one_ab_parq_prsl>zero_ab_parq_prsl & miss_ab_parq_prsl<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par3=0 if par3==. & one_ab_parq_prsl<zero_ab_parq_prsl & miss_ab_parq_prsl<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par13=1 if par3==. & one_ab_parq_prsl>zero_ab_parq_prsl & miss_ab_parq_prsl<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par13=0 if par3==. & one_ab_parq_prsl<zero_ab_parq_prsl & miss_ab_parq_prsl<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par23=1 if par3==. & one_ab_parq_prsl>zero_ab_parq_prsl & miss_ab_parq_prsl<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par23=0 if par3==. & one_ab_parq_prsl<zero_ab_parq_prsl & miss_ab_parq_prsl<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par33=1 if par3==. & one_ab_parq_prsl>zero_ab_parq_prsl & miss_ab_parq_prsl<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par33=0 if par3==. & one_ab_parq_prsl<zero_ab_parq_prsl & miss_ab_parq_prsl<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par43=1 if par3==. & one_ab_parq_prsl>zero_ab_parq_prsl & miss_ab_parq_prsl<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par43=0 if par3==. & one_ab_parq_prsl<zero_ab_parq_prsl & miss_ab_parq_prsl<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par53=1 if par3==. & one_ab_parq_prsl>zero_ab_parq_prsl & miss_ab_parq_prsl<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par53=0 if par3==. & one_ab_parq_prsl<zero_ab_parq_prsl & miss_ab_parq_prsl<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par63=1 if par3==. & one_ab_parq_prsl>zero_ab_parq_prsl & miss_ab_parq_prsl<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par63=0 if par3==. & one_ab_parq_prsl<zero_ab_parq_prsl & miss_ab_parq_prsl<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par73=1 if par3==. & one_ab_parq_prsl>zero_ab_parq_prsl & miss_ab_parq_prsl<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par73=0 if par3==. & one_ab_parq_prsl<zero_ab_parq_prsl & miss_ab_parq_prsl<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par83=1 if par3==. & one_ab_parq_prsl>zero_ab_parq_prsl & miss_ab_parq_prsl<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par83=0 if par3==. & one_ab_parq_prsl<zero_ab_parq_prsl & miss_ab_parq_prsl<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par90=1 if par3==. & one_ab_parq_prsl>zero_ab_parq_prsl & miss_ab_parq_prsl<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par90=0 if par3==. & one_ab_parq_prsl<zero_ab_parq_prsl & miss_ab_parq_prsl<3

recode par13 par33 par43 par53 par63 par83  (0=1) (1=0) (.=.) (else=.a)
egen ab_parq_prsl=rowtotal(par3	par13	par23	par33	par43	par53	par63	par73	par83	par90)
replace ab_parq_prsl=.b if miss_ab_parq_prsl>2
replace ab_parq_prsl=. if miss_ab_parq_prsl==10
label variable ab_parq_prsl "AB PARQ Problem Solving"


*****
*****
*****
*****
*****Cohesion Scale
*****
*****
*****
*****
**Count number of ones ticked
egen one_ab_parq_coh=anycount(par4	par14	par24	par34	par44	par54	par64	par74	par84	par91), values(1)

***Count number of zeros ticked
egen zero_ab_parq_coh=anycount(par4	par14	par24	par34	par44	par54	par64	par74	par84	par91), values(0)

***Count number of missing responses ticked
egen miss_ab_parq_coh=rowmiss(par4	par14	par24	par34	par44	par54	par64	par74	par84	par91), 

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par4=1 if par4==. & one_ab_parq_coh>zero_ab_parq_coh & miss_ab_parq_coh<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par4=0 if par4==. & one_ab_parq_coh<zero_ab_parq_coh & miss_ab_parq_coh<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par14=1 if par4==. & one_ab_parq_coh>zero_ab_parq_coh & miss_ab_parq_coh<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par14=0 if par4==. & one_ab_parq_coh<zero_ab_parq_coh & miss_ab_parq_coh<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par24=1 if par4==. & one_ab_parq_coh>zero_ab_parq_coh & miss_ab_parq_coh<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par24=0 if par4==. & one_ab_parq_coh<zero_ab_parq_coh & miss_ab_parq_coh<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par34=1 if par4==. & one_ab_parq_coh>zero_ab_parq_coh & miss_ab_parq_coh<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par34=0 if par4==. & one_ab_parq_coh<zero_ab_parq_coh & miss_ab_parq_coh<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par44=1 if par4==. & one_ab_parq_coh>zero_ab_parq_coh & miss_ab_parq_coh<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par44=0 if par4==. & one_ab_parq_coh<zero_ab_parq_coh & miss_ab_parq_coh<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par54=1 if par4==. & one_ab_parq_coh>zero_ab_parq_coh & miss_ab_parq_coh<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par54=0 if par4==. & one_ab_parq_coh<zero_ab_parq_coh & miss_ab_parq_coh<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par64=1 if par4==. & one_ab_parq_coh>zero_ab_parq_coh & miss_ab_parq_coh<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par64=0 if par4==. & one_ab_parq_coh<zero_ab_parq_coh & miss_ab_parq_coh<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par74=1 if par4==. & one_ab_parq_coh>zero_ab_parq_coh & miss_ab_parq_coh<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par74=0 if par4==. & one_ab_parq_coh<zero_ab_parq_coh & miss_ab_parq_coh<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par84=1 if par4==. & one_ab_parq_coh>zero_ab_parq_coh & miss_ab_parq_coh<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par84=0 if par4==. & one_ab_parq_coh<zero_ab_parq_coh & miss_ab_parq_coh<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par91=1 if par4==. & one_ab_parq_coh>zero_ab_parq_coh & miss_ab_parq_coh<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par91=0 if par4==. & one_ab_parq_coh<zero_ab_parq_coh & miss_ab_parq_coh<3

recode par4 par34 par44 par54 par74 par91  (0=1) (1=0) (.=.) (else=.a)
egen ab_parq_coh=rowtotal(par4	par14	par24	par34	par44	par54	par64	par74	par84	par91)
replace ab_parq_coh=.b if miss_ab_parq_coh>2
replace ab_parq_coh=. if miss_ab_parq_coh==10
label variable ab_parq_coh "AB PARQ Cohesion"


*****
*****
*****
*****
*****
*****School Conflict
*****
*****
*****
*****
*****

**Count number of ones ticked
egen one_ab_parq_sch=anycount(par5	par15	par25	par35	par45	par55	par65	par75	par85	par92), values(1)

***Count number of zeros ticked
egen zero_ab_parq_sch=anycount(par5	par15	par25	par35	par45	par55	par65	par75	par85	par92), values(0)

***Count number of missing responses ticked
egen miss_ab_parq_sch=rowmiss(par5	par15	par25	par35	par45	par55	par65	par75	par85	par92), 

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par5=1 if par5==. & one_ab_parq_sch>zero_ab_parq_sch & miss_ab_parq_sch<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par5=0 if par5==. & one_ab_parq_sch<zero_ab_parq_sch & miss_ab_parq_sch<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par15=1 if par5==. & one_ab_parq_sch>zero_ab_parq_sch & miss_ab_parq_sch<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par15=0 if par5==. & one_ab_parq_sch<zero_ab_parq_sch & miss_ab_parq_sch<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par25=1 if par5==. & one_ab_parq_sch>zero_ab_parq_sch & miss_ab_parq_sch<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par25=0 if par5==. & one_ab_parq_sch<zero_ab_parq_sch & miss_ab_parq_sch<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par35=1 if par5==. & one_ab_parq_sch>zero_ab_parq_sch & miss_ab_parq_sch<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par35=0 if par5==. & one_ab_parq_sch<zero_ab_parq_sch & miss_ab_parq_sch<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par45=1 if par5==. & one_ab_parq_sch>zero_ab_parq_sch & miss_ab_parq_sch<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par45=0 if par5==. & one_ab_parq_sch<zero_ab_parq_sch & miss_ab_parq_sch<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par55=1 if par5==. & one_ab_parq_sch>zero_ab_parq_sch & miss_ab_parq_sch<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par55=0 if par5==. & one_ab_parq_sch<zero_ab_parq_sch & miss_ab_parq_sch<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par65=1 if par5==. & one_ab_parq_sch>zero_ab_parq_sch & miss_ab_parq_sch<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par65=0 if par5==. & one_ab_parq_sch<zero_ab_parq_sch & miss_ab_parq_sch<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par75=1 if par5==. & one_ab_parq_sch>zero_ab_parq_sch & miss_ab_parq_sch<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par75=0 if par5==. & one_ab_parq_sch<zero_ab_parq_sch & miss_ab_parq_sch<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par85=1 if par5==. & one_ab_parq_sch>zero_ab_parq_sch & miss_ab_parq_sch<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par85=0 if par5==. & one_ab_parq_sch<zero_ab_parq_sch & miss_ab_parq_sch<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par92=1 if par5==. & one_ab_parq_sch>zero_ab_parq_sch & miss_ab_parq_sch<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par92=0 if par5==. & one_ab_parq_sch<zero_ab_parq_sch & miss_ab_parq_sch<3


recode par25 par35 par75 (0=1) (1=0) (.=.) (else=.a)
egen ab_parq_sch=rowtotal(par5	par15	par25	par35	par45	par55	par65	par75	par85	par92)
replace ab_parq_sch=.b if miss_ab_parq_sch>2
replace ab_parq_sch=. if miss_ab_parq_sch==10
label variable ab_parq_sch "AB PARQ School Conflict"


*****
*****
*****
*****
*****
*****Conventionalisation
*****
*****
*****
*****
*****


**Count number of ones ticked
egen one_ab_parq_cnv=anycount(par6	par16	par26	par36	par46	par56	par66	par76	par86	par93), values(1)

***Count number of zeros ticked
egen zero_ab_parq_cnv=anycount(par6	par16	par26	par36	par46	par56	par66	par76	par86	par93), values(0)

***Count number of missing responses ticked
egen miss_ab_parq_cnv=rowmiss(par6	par16	par26	par36	par46	par56	par66	par76	par86	par93), 

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par6=1 if par6==. & one_ab_parq_cnv>zero_ab_parq_cnv & miss_ab_parq_cnv<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par6=0 if par6==. & one_ab_parq_cnv<zero_ab_parq_cnv & miss_ab_parq_cnv<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par16=1 if par6==. & one_ab_parq_cnv>zero_ab_parq_cnv & miss_ab_parq_cnv<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par16=0 if par6==. & one_ab_parq_cnv<zero_ab_parq_cnv & miss_ab_parq_cnv<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par26=1 if par6==. & one_ab_parq_cnv>zero_ab_parq_cnv & miss_ab_parq_cnv<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par26=0 if par6==. & one_ab_parq_cnv<zero_ab_parq_cnv & miss_ab_parq_cnv<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par36=1 if par6==. & one_ab_parq_cnv>zero_ab_parq_cnv & miss_ab_parq_cnv<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par36=0 if par6==. & one_ab_parq_cnv<zero_ab_parq_cnv & miss_ab_parq_cnv<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par46=1 if par6==. & one_ab_parq_cnv>zero_ab_parq_cnv & miss_ab_parq_cnv<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par46=0 if par6==. & one_ab_parq_cnv<zero_ab_parq_cnv & miss_ab_parq_cnv<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par56=1 if par6==. & one_ab_parq_cnv>zero_ab_parq_cnv & miss_ab_parq_cnv<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par56=0 if par6==. & one_ab_parq_cnv<zero_ab_parq_cnv & miss_ab_parq_cnv<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par66=1 if par6==. & one_ab_parq_cnv>zero_ab_parq_cnv & miss_ab_parq_cnv<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par66=0 if par6==. & one_ab_parq_cnv<zero_ab_parq_cnv & miss_ab_parq_cnv<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par76=1 if par6==. & one_ab_parq_cnv>zero_ab_parq_cnv & miss_ab_parq_cnv<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par76=0 if par6==. & one_ab_parq_cnv<zero_ab_parq_cnv & miss_ab_parq_cnv<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par86=1 if par6==. & one_ab_parq_cnv>zero_ab_parq_cnv & miss_ab_parq_cnv<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par86=0 if par6==. & one_ab_parq_cnv<zero_ab_parq_cnv & miss_ab_parq_cnv<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par93=1 if par6==. & one_ab_parq_cnv>zero_ab_parq_cnv & miss_ab_parq_cnv<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par93=0 if par6==. & one_ab_parq_cnv<zero_ab_parq_cnv & miss_ab_parq_cnv<3


recode par26 par46 par66 par86 (0=1) (1=0) (.=.) (else=.a)
egen ab_parq_cnv=rowtotal(par6 par16	par26	par36	par46	par56	par66	par76	par86	par93)
replace ab_parq_cnv=.b if miss_ab_parq_cnv>2
replace ab_parq_cnv=. if miss_ab_parq_cnv==10
label variable ab_parq_cnv "AB PARQ Conventionalisation"


*****
*****
*****
*****
*****
*****Eating Conflict
*****
*****
*****
*****
*****



**Count number of ones ticked
egen one_ab_parq_eat=anycount(par7	par17	par27	par37	par47	par57	par67	par77	par87	par94), values(1)

***Count number of zeros ticked
egen zero_ab_parq_eat=anycount(par7	par17	par27	par37	par47	par57	par67	par77	par87	par94), values(0)

***Count number of missing responses ticked
egen miss_ab_parq_eat=rowmiss(par7	par17	par27	par37	par47	par57	par67	par77	par87	par94), 

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par7=1 if par7==. & one_ab_parq_eat>zero_ab_parq_eat & miss_ab_parq_eat<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par7=0 if par7==. & one_ab_parq_eat<zero_ab_parq_eat & miss_ab_parq_eat<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par17=1 if par7==. & one_ab_parq_eat>zero_ab_parq_eat & miss_ab_parq_eat<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par17=0 if par7==. & one_ab_parq_eat<zero_ab_parq_eat & miss_ab_parq_eat<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par27=1 if par7==. & one_ab_parq_eat>zero_ab_parq_eat & miss_ab_parq_eat<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par27=0 if par7==. & one_ab_parq_eat<zero_ab_parq_eat & miss_ab_parq_eat<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par37=1 if par7==. & one_ab_parq_eat>zero_ab_parq_eat & miss_ab_parq_eat<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par37=0 if par7==. & one_ab_parq_eat<zero_ab_parq_eat & miss_ab_parq_eat<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par47=1 if par7==. & one_ab_parq_eat>zero_ab_parq_eat & miss_ab_parq_eat<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par47=0 if par7==. & one_ab_parq_eat<zero_ab_parq_eat & miss_ab_parq_eat<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par57=1 if par7==. & one_ab_parq_eat>zero_ab_parq_eat & miss_ab_parq_eat<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par57=0 if par7==. & one_ab_parq_eat<zero_ab_parq_eat & miss_ab_parq_eat<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par67=1 if par7==. & one_ab_parq_eat>zero_ab_parq_eat & miss_ab_parq_eat<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par67=0 if par7==. & one_ab_parq_eat<zero_ab_parq_eat & miss_ab_parq_eat<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par77=1 if par7==. & one_ab_parq_eat>zero_ab_parq_eat & miss_ab_parq_eat<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par77=0 if par7==. & one_ab_parq_eat<zero_ab_parq_eat & miss_ab_parq_eat<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par87=1 if par7==. & one_ab_parq_eat>zero_ab_parq_eat & miss_ab_parq_eat<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par87=0 if par7==. & one_ab_parq_eat<zero_ab_parq_eat & miss_ab_parq_eat<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par94=1 if par7==. & one_ab_parq_eat>zero_ab_parq_eat & miss_ab_parq_eat<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par94=0 if par7==. & one_ab_parq_eat<zero_ab_parq_eat & miss_ab_parq_eat<3


recode par27 par37 par57 par87 (0=1) (1=0) (.=.) (else=.a)
egen ab_parq_eat=rowtotal(par7	par17	par27	par37	par47	par57	par67	par77	par87	par94)
replace ab_parq_eat=.b if miss_ab_parq_eat>2
replace ab_parq_eat=. if miss_ab_parq_eat==10
label variable ab_parq_eat "AB PARQ Eating Conflict"

*****
*****
*****
*****
*****
*****Malicious Intent
*****
*****
*****
*****
*****


**Count number of ones ticked
egen one_ab_parq_malint=anycount(par8	par18	par28	par38	par48	par58	par68	par78		), values(1)

***Count number of zeros ticked
egen zero_ab_parq_malint=anycount(par8	par18	par28	par38	par48	par58	par68	par78		), values(0)

***Count number of missing responses ticked
egen miss_ab_parq_malint=rowmiss(par8	par18	par28	par38	par48	par58	par68	par78		), 

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par8=1 if par8==. & one_ab_parq_malint>zero_ab_parq_malint & miss_ab_parq_malint<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par8=0 if par8==. & one_ab_parq_malint<zero_ab_parq_malint & miss_ab_parq_malint<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par18=1 if par8==. & one_ab_parq_malint>zero_ab_parq_malint & miss_ab_parq_malint<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par18=0 if par8==. & one_ab_parq_malint<zero_ab_parq_malint & miss_ab_parq_malint<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par28=1 if par8==. & one_ab_parq_malint>zero_ab_parq_malint & miss_ab_parq_malint<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par28=0 if par8==. & one_ab_parq_malint<zero_ab_parq_malint & miss_ab_parq_malint<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par38=1 if par8==. & one_ab_parq_malint>zero_ab_parq_malint & miss_ab_parq_malint<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par38=0 if par8==. & one_ab_parq_malint<zero_ab_parq_malint & miss_ab_parq_malint<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par48=1 if par8==. & one_ab_parq_malint>zero_ab_parq_malint & miss_ab_parq_malint<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par48=0 if par8==. & one_ab_parq_malint<zero_ab_parq_malint & miss_ab_parq_malint<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par58=1 if par8==. & one_ab_parq_malint>zero_ab_parq_malint & miss_ab_parq_malint<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par58=0 if par8==. & one_ab_parq_malint<zero_ab_parq_malint & miss_ab_parq_malint<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par68=1 if par8==. & one_ab_parq_malint>zero_ab_parq_malint & miss_ab_parq_malint<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par68=0 if par8==. & one_ab_parq_malint<zero_ab_parq_malint & miss_ab_parq_malint<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par78=1 if par8==. & one_ab_parq_malint>zero_ab_parq_malint & miss_ab_parq_malint<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par78=0 if par8==. & one_ab_parq_malint<zero_ab_parq_malint & miss_ab_parq_malint<3


egen ab_parq_malint=rowtotal(par8	par18	par28	par38	par48	par58	par68	par78	)
replace ab_parq_malint=.b if miss_ab_parq_malint>2
replace ab_parq_malint=. if miss_ab_parq_malint==10
label variable ab_parq_malint "AB PARQ Malicious Intent"


*****
*****
*****
*****
*****
*****Perfectionism
*****
*****
*****
*****
*****


**Count number of ones ticked
egen one_ab_parq_perf=anycount(par9	par19	par29	par39	par49	par59	par69	par79		), values(1)

***Count number of zeros ticked
egen zero_ab_parq_perf=anycount(par9	par19	par29	par39	par49	par59	par69	par79		), values(0)

***Count number of missing responses ticked
egen miss_ab_parq_perf=rowmiss(par9	par19	par29	par39	par49	par59	par69	par79		), 

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par9=1 if par9==. & one_ab_parq_perf>zero_ab_parq_perf & miss_ab_parq_perf<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par9=0 if par9==. & one_ab_parq_perf<zero_ab_parq_perf & miss_ab_parq_perf<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par19=1 if par9==. & one_ab_parq_perf>zero_ab_parq_perf & miss_ab_parq_perf<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par19=0 if par9==. & one_ab_parq_perf<zero_ab_parq_perf & miss_ab_parq_perf<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par29=1 if par9==. & one_ab_parq_perf>zero_ab_parq_perf & miss_ab_parq_perf<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par29=0 if par9==. & one_ab_parq_perf<zero_ab_parq_perf & miss_ab_parq_perf<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par39=1 if par9==. & one_ab_parq_perf>zero_ab_parq_perf & miss_ab_parq_perf<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par39=0 if par9==. & one_ab_parq_perf<zero_ab_parq_perf & miss_ab_parq_perf<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par49=1 if par9==. & one_ab_parq_perf>zero_ab_parq_perf & miss_ab_parq_perf<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par49=0 if par9==. & one_ab_parq_perf<zero_ab_parq_perf & miss_ab_parq_perf<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par59=1 if par9==. & one_ab_parq_perf>zero_ab_parq_perf & miss_ab_parq_perf<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par59=0 if par9==. & one_ab_parq_perf<zero_ab_parq_perf & miss_ab_parq_perf<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par69=1 if par9==. & one_ab_parq_perf>zero_ab_parq_perf & miss_ab_parq_perf<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par69=0 if par9==. & one_ab_parq_perf<zero_ab_parq_perf & miss_ab_parq_perf<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par79=1 if par9==. & one_ab_parq_perf>zero_ab_parq_perf & miss_ab_parq_perf<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par79=0 if par9==. & one_ab_parq_perf<zero_ab_parq_perf & miss_ab_parq_perf<3

recode par9	par19	par29	par39	par49	par59	par69	par79	(0=0) (1=1) (.=.) (else=.a)
egen ab_parq_perf=rowtotal(par9	par19	par29	par39	par49	par59	par69	par79		)
replace ab_parq_perf=.b if miss_ab_parq_perf>2
replace ab_parq_perf=. if miss_ab_parq_perf==10
label variable ab_parq_perf "AB PARQ Perfectionism"


*****
*****
*****
*****
*****
*****Ruination
*****
*****
*****
*****
*****






**Count number of ones ticked
egen one_ab_parq_ruin=anycount(par10	par20	par30	par40	par50	par60	par70	par80		), values(1)

***Count number of zeros ticked
egen zero_ab_parq_ruin=anycount(par10	par20	par30	par40	par50	par60	par70	par80		), values(0)

***Count number of missing responses ticked
egen miss_ab_parq_ruin=rowmiss(par10	par20	par30	par40	par50	par60	par70	par80		), 

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par10=1 if par10==. & one_ab_parq_ruin>zero_ab_parq_ruin & miss_ab_parq_ruin<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par10=0 if par10==. & one_ab_parq_ruin<zero_ab_parq_ruin & miss_ab_parq_ruin<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par20=1 if par10==. & one_ab_parq_ruin>zero_ab_parq_ruin & miss_ab_parq_ruin<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par20=0 if par10==. & one_ab_parq_ruin<zero_ab_parq_ruin & miss_ab_parq_ruin<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par30=1 if par10==. & one_ab_parq_ruin>zero_ab_parq_ruin & miss_ab_parq_ruin<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par30=0 if par10==. & one_ab_parq_ruin<zero_ab_parq_ruin & miss_ab_parq_ruin<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par40=1 if par10==. & one_ab_parq_ruin>zero_ab_parq_ruin & miss_ab_parq_ruin<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par40=0 if par10==. & one_ab_parq_ruin<zero_ab_parq_ruin & miss_ab_parq_ruin<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par50=1 if par10==. & one_ab_parq_ruin>zero_ab_parq_ruin & miss_ab_parq_ruin<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par50=0 if par10==. & one_ab_parq_ruin<zero_ab_parq_ruin & miss_ab_parq_ruin<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par60=1 if par10==. & one_ab_parq_ruin>zero_ab_parq_ruin & miss_ab_parq_ruin<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par60=0 if par10==. & one_ab_parq_ruin<zero_ab_parq_ruin & miss_ab_parq_ruin<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par70=1 if par10==. & one_ab_parq_ruin>zero_ab_parq_ruin & miss_ab_parq_ruin<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par70=0 if par10==. & one_ab_parq_ruin<zero_ab_parq_ruin & miss_ab_parq_ruin<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par80=1 if par10==. & one_ab_parq_ruin>zero_ab_parq_ruin & miss_ab_parq_ruin<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par80=0 if par10==. & one_ab_parq_ruin<zero_ab_parq_ruin & miss_ab_parq_ruin<3

recode par10	par20	par30	par40	par50	par60	par70	par80	(0=0) (1=1) (.=.) (else=.a)
egen ab_parq_ruin=rowtotal(par10	par20	par30	par40	par50	par60	par70	par80		)
replace ab_parq_ruin=.b if miss_ab_parq_ruin>2
replace ab_parq_ruin=. if miss_ab_parq_ruin==10
label variable ab_parq_ruin "AB PARQ Ruination"


*****ab_SIPA Scale Syntax***

****This syntax runs correctly on My Documents\Parenting Teens\Oct 19th Adult Completed.dta
***1st scale
****Moodiness/Emotional Liability**
***straight summation, no reverse coding

gen ab_SIPArawmel= sipa1+sipa6+sipa11+sipa16+sipa21+sipa26+sipa31+sipa36+sipa41+sipa46
label variable ab_SIPArawmel "Raw Moodiness/Emotional Liability"

****1st scale end
***Scale 1 Missing Value Syntax
gen ab_SIPA1miss=0
replace ab_SIPA1miss=ab_SIPA1miss+1 if sipa1==.
replace ab_SIPA1miss=ab_SIPA1miss+1 if sipa6==.
replace ab_SIPA1miss=ab_SIPA1miss+1 if sipa11==.
replace ab_SIPA1miss=ab_SIPA1miss+1 if sipa16==.
replace ab_SIPA1miss=ab_SIPA1miss+1 if sipa21==.
replace ab_SIPA1miss=ab_SIPA1miss+1 if sipa26==.
replace ab_SIPA1miss=ab_SIPA1miss+1 if sipa31==.
replace ab_SIPA1miss=ab_SIPA1miss+1 if sipa36==.
replace ab_SIPA1miss=ab_SIPA1miss+1 if sipa41==.
replace ab_SIPA1miss=ab_SIPA1miss+1 if sipa46==.

label variable ab_SIPA1miss "Missing Moodiness/Emotional Liability"

gen ab_SIPA1a=sipa1+sipa6+sipa11+sipa16+sipa21+sipa26+sipa31+sipa36+sipa41+sipa46 if ab_SIPA1miss==1
gen ab_SIPA1b=round(ab_SIPA1a/9)
gen ab_SIPAmel=ab_SIPArawmel

replace ab_SIPAmel=ab_SIPA1a+ab_SIPA1b if ab_SIPA1miss==1
replace ab_SIPAmel=. if ab_SIPA1miss>1
label variable ab_SIPAmel "Moodiness/Emotional Liability inc missing"

*****2nd Scale
****Isolation
***reverse code

recode sipa2 (1=5) (2=4) (3=3) (4=2) (5=1) (miss=0), generate(friend2)

gen ab_SIPArawiso= friend2+ sipa7+ sipa12+ sipa17+ sipa22+ sipa27+ sipa32+ sipa37+ sipa42+ sipa47

label variable ab_SIPArawiso "Raw Social Isolation/Withdrawal"

***Scale 2 Missing Value Syntax
gen ab_SIPA2miss=0
replace ab_SIPA2miss=ab_SIPA2miss+1 if sipa2==.
replace ab_SIPA2miss=ab_SIPA2miss+1 if sipa7==.
replace ab_SIPA2miss=ab_SIPA2miss+1 if sipa12==.
replace ab_SIPA2miss=ab_SIPA2miss+1 if sipa17==.
replace ab_SIPA2miss=ab_SIPA2miss+1 if sipa22==.
replace ab_SIPA2miss=ab_SIPA2miss+1 if sipa27==.
replace ab_SIPA2miss=ab_SIPA2miss+1 if sipa32==.
replace ab_SIPA2miss=ab_SIPA2miss+1 if sipa37==.
replace ab_SIPA2miss=ab_SIPA2miss+1 if sipa42==.
replace ab_SIPA2miss=ab_SIPA2miss+1 if sipa47==.

label variable ab_SIPA2miss "Missing Isolation"

gen ab_SIPA2a=friend2+ sipa7+ sipa12+ sipa17+ sipa22+ sipa27+ sipa32+ sipa37+ sipa42+ sipa47 if ab_SIPA2miss==1
gen ab_SIPA2b=round(ab_SIPA2a/9)

gen ab_SIPAiso=ab_SIPArawiso
replace ab_SIPAiso=ab_SIPA2a+ab_SIPA2b if ab_SIPA2miss==1
replace ab_SIPAiso=. if ab_SIPA2miss>1
label variable ab_SIPAiso "Social Isolation/Withdrawal inc Miss"
***2nd scale end

*******3rd Scale
*******Delinquency
*******reverse code

recode  sipa3 (1=5) (2=4) (3=3) (4=2) (5=1) (miss=0), generate(police2)
recode  sipa28 (1=5) (2=4) (3=3) (4=2) (5=1) (miss=0), generate(property2)

gen ab_SIPArawdel= police2+ sipa8+ sipa13+ sipa18+ sipa23+ property2+ sipa33+ sipa38+ sipa43+ sipa48
label variable ab_SIPArawdel "Raw Delinquincy/Antisocial"

***3rd scale end


***Scale 3 Missing Value Syntax
gen ab_SIPA3miss=0
replace ab_SIPA3miss=ab_SIPA3miss+1 if sipa3==.
replace ab_SIPA3miss=ab_SIPA3miss+1 if sipa8==.
replace ab_SIPA3miss=ab_SIPA3miss+1 if sipa13==.
replace ab_SIPA3miss=ab_SIPA3miss+1 if sipa18==.
replace ab_SIPA3miss=ab_SIPA3miss+1 if sipa23==.
replace ab_SIPA3miss=ab_SIPA3miss+1 if sipa28==.
replace ab_SIPA3miss=ab_SIPA3miss+1 if sipa33==.
replace ab_SIPA3miss=ab_SIPA3miss+1 if sipa38==.
replace ab_SIPA3miss=ab_SIPA3miss+1 if sipa43==.
replace ab_SIPA3miss=ab_SIPA3miss+1 if sipa48==.

label variable ab_SIPA3miss "Missing Delinquency"

gen ab_SIPA3a=police2+ sipa8+ sipa13+ sipa18+ sipa23+ property2+ sipa33+ sipa38+ sipa43+ sipa48 if ab_SIPA3miss==1
gen ab_SIPA3b=round(ab_SIPA3a/9)
gen ab_SIPAdel=ab_SIPArawdel
replace ab_SIPAdel=ab_SIPA3a+ab_SIPA3b if ab_SIPA3miss==1
replace ab_SIPAdel=. if ab_SIPA3miss>1
label variable ab_SIPAdel "Delinquincy/Antisocial Inc Missing"


****4th Scale
***Failure to Achieve

****Reverse code
recode sipa4 (1=5) (2=4) (3=3) (4=2) (5=1) (miss=0), generate(bestsch2)
recode  sipa9 (1=5) (2=4) (3=3) (4=2) (5=1) (miss=0), generate(motivate2)
recode sipa34 (1=5) (2=4) (3=3) (4=2) (5=1) (miss=0), generate(task2)
recode  sipa49 (1=5) (2=4) (3=3) (4=2) (5=1) (miss=0), generate(effort2)

gen ab_SIPArawach=bestsch2+motivate2+task2+effort2+sipa4+sipa9+sipa34+sipa14+sipa19+sipa24+sipa29+sipa39+sipa44
label variable ab_SIPArawach "Raw Failure to achieve or perservere"


***Scale 4 Missing Value Syntax
gen ab_SIPA4miss=0
replace ab_SIPA4miss=ab_SIPA4miss+1 if sipa4==.
replace ab_SIPA4miss=ab_SIPA4miss+1 if sipa9 ==.
replace ab_SIPA4miss=ab_SIPA4miss+1 if sipa14==.
replace ab_SIPA4miss=ab_SIPA4miss+1 if sipa19==.
replace ab_SIPA4miss=ab_SIPA4miss+1 if sipa24==.
replace ab_SIPA4miss=ab_SIPA4miss+1 if sipa29==.
replace ab_SIPA4miss=ab_SIPA4miss+1 if sipa34 ==.
replace ab_SIPA4miss=ab_SIPA4miss+1 if sipa49==. 
replace ab_SIPA4miss=ab_SIPA4miss+1 if sipa39==.
replace ab_SIPA4miss=ab_SIPA4miss+1 if sipa44==.

label variable ab_SIPA4miss "Missing Achievement"

gen ab_SIPA4a=bestsch2+motivate2+task2+effort2+sipa4+sipa9+sipa34+sipa49+sipa14+sipa19+sipa24+sipa29+sipa39+sipa44 if ab_SIPA4miss==1
gen ab_SIPA4b=round(ab_SIPA4a/9)
gen ab_SIPAach=ab_SIPArawach
replace ab_SIPAach=ab_SIPA4a+ab_SIPA4b if ab_SIPA4miss==1
replace ab_SIPAach=. if ab_SIPA4miss>1

label variable ab_SIPAach "Failure to achieve or perservere Inc Missing"

***4th Scale End

*****5th Scale
**Adolescent/Parent Relationship Domain

****reverse coding

recode sipa5(1=5) (2=4) (3=3) (4=2) (5=1) (miss=0), generate(affect2)
recode sipa10(1=5) (2=4) (3=3) (4=2) (5=1) (miss=0), generate(tlkprob2)
recode sipa15(1=5) (2=4) (3=3) (4=2) (5=1) (miss=0), generate(tellgo2)
recode sipa25(1=5) (2=4) (3=3) (4=2) (5=1) (miss=0), generate(morals2)
recode sipa40(1=5) (2=4) (3=3) (4=2) (5=1) (miss=0), generate(whfam2)
recode sipa45(1=5) (2=4) (3=3) (4=2) (5=1) (miss=0), generate(gdthings2)

recode sipa81(1=5) (2=4) (3=3) (4=2) (5=1) (miss=0), generate(undrstnd2)
recode sipa83(1=5) (2=4) (3=3) (4=2) (5=1) (miss=0), generate(askhlp2)
recode sipa85(1=5) (2=4) (3=3) (4=2) (5=1) (miss=0), generate(getchlddo2)
recode sipa86(1=5) (2=4) (3=3) (4=2) (5=1) (miss=0), generate(enjyprnt2)


gen ab_SIPArawaprd=affect2+tlkprob2+tellgo2+sipa20+morals2+sipa30+sipa35+whfam2 ///
+gdthings2+sipa50+undrstnd2+sipa82+askhlp2+getchlddo2+enjyprnt2+sipa87

label variable ab_SIPArawaprd "Raw Adolescent-Parent relationship domain"
***5th raw scale end

***Scale 5 Missing Value Syntax
gen ab_SIPA5miss=0
replace ab_SIPA5miss=ab_SIPA5miss+1 if sipa5==.
replace ab_SIPA5miss=ab_SIPA5miss+1 if sipa10==.
replace ab_SIPA5miss=ab_SIPA5miss+1 if sipa15==.
replace ab_SIPA5miss=ab_SIPA5miss+1 if sipa20==.
replace ab_SIPA5miss=ab_SIPA5miss+1 if sipa25==.
replace ab_SIPA5miss=ab_SIPA5miss+1 if sipa30==.
replace ab_SIPA5miss=ab_SIPA5miss+1 if sipa35==.
replace ab_SIPA5miss=ab_SIPA5miss+1 if sipa40==.
replace ab_SIPA5miss=ab_SIPA5miss+1 if sipa45==.
replace ab_SIPA5miss=ab_SIPA5miss+1 if sipa50==.
replace ab_SIPA5miss=ab_SIPA5miss+1 if sipa81==.
replace ab_SIPA5miss=ab_SIPA5miss+1 if sipa82==.
replace ab_SIPA5miss=ab_SIPA5miss+1 if sipa83==.
replace ab_SIPA5miss=ab_SIPA5miss+1 if sipa85==.
replace ab_SIPA5miss=ab_SIPA5miss+1 if sipa86==.
replace ab_SIPA5miss=ab_SIPA5miss+1 if sipa87==.

label variable ab_SIPA5miss "Missing Adolescent/Parent Relationship"

gen ab_SIPA5a=affect2+tlkprob2+tellgo2+sipa20+morals2+sipa30+sipa35+whfam2 ///
+gdthings2+sipa50+undrstnd2+sipa82+askhlp2+getchlddo2+enjyprnt2+sipa87 if ab_SIPA5miss==1
gen ab_SIPA5b=round(ab_SIPA5a/15)

gen ab_SIPAaprd=ab_SIPArawaprd
replace ab_SIPAaprd=ab_SIPA5a+ab_SIPA5b if ab_SIPA5miss==1
replace ab_SIPAaprd=. if ab_SIPA5miss>1

label variable ab_SIPAaprd "Adolescent-Parent relationship domain inc missing"
***5th Scale End



***8th Scale
***Social Alienation

***Reverse code

recode sipa54 (1=5) (2=4) (3=3) (4=2) (5=1) (miss=0), generate(pstve2)
recode sipa69 (1=5) (2=4) (3=3) (4=2) (5=1) (miss=0), generate(capble2)

gen ab_SIPArawsoc=sipa53+pstve2+sipa57+sipa58+sipa61+sipa65+capble2

label variable ab_SIPArawsoc "Social Alienation"

gen ab_SIPA8miss=0
replace ab_SIPA8miss=ab_SIPA8miss+1 if sipa53==.
replace ab_SIPA8miss=ab_SIPA8miss+1 if sipa54==.
replace ab_SIPA8miss=ab_SIPA8miss+1 if sipa57==. 
replace ab_SIPA8miss=ab_SIPA8miss+1 if sipa58==.
replace ab_SIPA8miss=ab_SIPA8miss+1 if sipa61==.
replace ab_SIPA8miss=ab_SIPA8miss+1 if sipa65==.
replace ab_SIPA8miss=ab_SIPA8miss+1 if sipa69==.

label variable ab_SIPA8miss "Missing Social Alienation"

gen ab_SIPA8a=sipa53+pstve2+sipa57+sipa58+sipa61+sipa65+capble2 if ab_SIPA8miss==1
gen ab_SIPA8b=round(ab_SIPA8a/6)

gen ab_SIPAsoc=ab_SIPArawsoc
replace ab_SIPAsoc=ab_SIPA8a+ab_SIPA8b if ab_SIPA8miss==1
replace ab_SIPAsoc=. if ab_SIPA8miss>1

label variable ab_SIPAsoc "Social Alienation inc missing"
***8th scale end


***9th scale
***Incompetence/Guilt scale
****1 item missing from the original questionnaire

***Reverse code

recode sipa66 (1=5) (2=4) (3=3) (4=2) (5=1) (miss=0), generate(xprnt2)
recode sipa70 (1=5) (2=4) (3=3) (4=2) (5=1) (miss=0), gen(hndany2)

gen ab_SIPArawinc=sipa62+xprnt2+hndany2+sipa76+sipa80+sipa84+sipa88
label variable ab_SIPArawinc "Incompetence/Guilt"

gen ab_SIPArawinca=round(ab_SIPArawinc/7)
gen ab_SIPArawincwt=ab_SIPArawinc+ab_SIPArawinca
label variable ab_SIPArawincwt "Incompetence/Guilt weighted for missing Q"

gen ab_SIPA9miss=0
replace ab_SIPA9miss=ab_SIPA9miss+1 if sipa62==.
replace ab_SIPA9miss=ab_SIPA9miss+1 if sipa66==.
replace ab_SIPA9miss=ab_SIPA9miss+1 if sipa70==. 
replace ab_SIPA9miss=ab_SIPA9miss+1 if sipa76==. 
replace ab_SIPA9miss=ab_SIPA9miss+1 if sipa80==.
replace ab_SIPA9miss=ab_SIPA9miss+1 if sipa84==.
replace ab_SIPA9miss=ab_SIPA9miss+1 if sipa88==.

label variable ab_SIPA9miss "Missing Items Incompetence/Guilt"

gen ab_SIPA9a=sipa62+xprnt2+hndany2+sipa70+sipa76+sipa80+sipa84+sipa88 if ab_SIPA9miss==1
gen ab_SIPA9b=round(ab_SIPA9a/6)

gen ab_SIPAinc=ab_SIPArawinc
replace ab_SIPAinc=ab_SIPA9a+ab_SIPA9b if ab_SIPA9miss==1
replace ab_SIPAinc=. if ab_SIPA9miss>1

label variable ab_SIPAinc "Incompetence/Guilt inc missing"

gen ab_SIPA9wta=round(ab_SIPAinc/7)
gen ab_SIPAincwt=ab_SIPAinc+ab_SIPA9wta
label variable ab_SIPAincwt "Incompetence/Guilt inc miss weighted for missing Q"

***9th Scale End


gen ab_SIPAtotalmiss=ab_SIPA1miss+ab_SIPA2miss+ab_SIPA3miss+ab_SIPA4miss+ab_SIPA5miss+ab_SIPA8miss+ab_SIPA9miss

label variable ab_SIPAtotalmiss "Missing Items Total"



***Adolescent Domain

gen ab_SIPArawad=ab_SIPArawmel+ab_SIPArawiso+ab_SIPArawdel+ab_SIPArawach
label variable ab_SIPArawad "Raw ab_SIPA Adolescent Domain"

gen ab_SIPAad=.
replace ab_SIPAad=ab_SIPAmel+ab_SIPAiso+ab_SIPAdel+ab_SIPAach if ab_SIPAtotalmiss<5
label variable ab_SIPAad "ab_SIPA Adolescent Domain inc missing"

***End Adolescent domain


***Parent domain

gen ab_SIPArawpd=ab_SIPArawsoc+ab_SIPArawincwt
label variable ab_SIPArawpd "Raw ab_SIPA Parent Domain"

gen ab_SIPApd=.
replace ab_SIPApd=ab_SIPAsoc+ab_SIPAincwt if ab_SIPAtotalmiss<5
label variable ab_SIPApd "ab_SIPA Parent Domain inc missing"

***End parent domain


***Total parenting stress

gen ab_SIPArawts=ab_SIPArawad+ab_SIPArawpd+ab_SIPArawaprd

label variable ab_SIPArawts "Raw ab_SIPA Total Stress"

gen ab_SIPAts=.
replace ab_SIPAts=ab_SIPAad+ab_SIPApd+ab_SIPAaprd if ab_SIPAtotalmiss<5
label variable ab_SIPAts "ab_SIPA Total Stress inc missing"

***End Total parenting stress

gen ab_SIPAtsrating=0
replace ab_SIPAtsrating=1 if ab_SIPAts>(239-21-19)
replace ab_SIPAtsrating=2 if ab_SIPAts>(259-21-19)
replace ab_SIPAtsrating=3 if ab_SIPAts>(281-21-19)

*Minus 21 minus 19 is subtracting the 50th percentile score 
***for the two excluded sub scales: Life restrictions and Relationship with partner

label variable ab_SIPAtsrating "ab_SIPA total score rating bands"
label define ab_SIPAtsrating 0 "Normal" 1 "Borderline" 2 "Clinically Sig." 3 "Severe"
label values ab_SIPAtsrating ab_SIPAtsrating 

*****

gen ab_SIPAaprdrating=0
replace ab_SIPAaprdrating=1 if ab_SIPAaprd>43
replace ab_SIPAaprdrating=2 if ab_SIPAaprd>47
replace ab_SIPAaprdrating=3 if ab_SIPAaprd>54

label variable ab_SIPAaprdrating "ab_SIPA APRD rating"
label values ab_SIPAaprdrating ab_SIPAtsrating 


gen ab_SIPApdrating=0
replace ab_SIPApdrating=1 if ab_SIPApd>(94-21-19)
replace ab_SIPApdrating=2 if ab_SIPApd>(100-21-19)
replace ab_SIPApdrating=3 if ab_SIPApd>(109-21-19)
label variable ab_SIPApdrating "ab_SIPA Parental rating"
label values ab_SIPApdrating ab_SIPAtsrating 

*Minus 21 minus 19 is subtracting the 50th percentile score 
***for the two excluded sub scales: Life restrictions and Relationship with partner


gen ab_SIPAadrating=0
replace ab_SIPAadrating=1 if ab_SIPAad>111
replace ab_SIPAadrating=2 if ab_SIPAad>120
replace ab_SIPAadrating=3 if ab_SIPAad>131
label variable ab_SIPAadrating "ab_SIPA Adolescent rating"
label values ab_SIPAadrating ab_SIPAtsrating 


 
**SIPA - Stress Index for Parents of Adolescents, stressful events

egen ab_SIPA_events=rowtotal(events1 events2 events3 ///
events4 events5 events6 events7 events8 events9 ///
events10 events11 events12 events13 events14 events15 ///
events16 events17 events18 events19 events20 events21 events22), missing

label variable ab_SIPA_events "SIPA events 0 min  22 max"
 

recode ab_SIPAmel (10/19=17) (20=37) (21=41) (22=45) (23=50) (24=55) (25=58) (26=63) (27=66) (28=69) (29=72) (30=75) (31=76) (32=78) (33=80) (34=83) (35=85) (36=87) (37=89) (38=91) (39=92) (40=94) (41=96) (42/43=97) (44/46=98) (47=99) (48/50=100)

recode ab_SIPAiso (10/15=17) (16=38) (17=43) (18=50) (19=56) (20=64) (21=68) (22=73) (23=77) (24=81) (25=83) (26=85) (27=87) (28=90) (29=91) (30=92) (31=93) (32=95) (33/35=97) (36/37=98) (38/42=99) (43/50=100)

recode ab_SIPAdel (10/12=17) (13=40) (14=49) (15=56) (16=62) (17=67) (18=71) (19=74) (20=72) (21=80) (22=82) (23=85) (24=82) (25=83) (26=90) (27=91) (28=92) (29=93) (30/31=94) (32/33=95) (34/35=96) (36/37=97) (38/44=98) (45/47=99) (48/50=100)

recode ab_SIPAach (10/18=17) (19=35) (20=40) (21=46) (22=51) (23=55) (24=68) (25=62) (26=65) (27=67) (28=70) (29=73) (30=77) (31=78) (32=82) (33=84) (34=86) (35=88) (36=90) (37=91) (38=93) (39=94) (40/41=96) (42=97) (43=98) (44/45=99) (46/50=100) 

recode ab_SIPAaprd (16/27=17) (28=37) (29=42) (30=48) (31=52) (32=57) (33=62) (34=65) (35=68) (36=72) (37=75) (38=77) (39=79) (40=81) (41=82) (42=84) (43=85) (44=87) (45=88) (46=89) (47=90) (48/49=91) (50=92) (52/53=94) (54/56=95) (57=96) (58/60=97) (61/65=98) (66/71=99) (72/80=100)

recode ab_SIPAsoc (7/11=17) (12=37) (13=47) (14=63) (15=71) (16=78) (17=83) (18=87) (19=89) (20=92) (21=94) (22=95) (23=96) (24/25=97) (26/27=98) (28/31=99) (32/35=100)

recode ab_SIPAincwt (8/16=17) (17=37) (18=47) (19=56) (20=65) (21=72) (22=77) (23=82) (24=86) (25=88) (26=90) (27=92) (28=93) (29=95) (30=96) (31=97) (32=98) (33/34=99) (35/40=100)

recode ab_SIPAad (40/71=17) (72=35) (73=37) (74=40) (75=41) (76=43) (77=44) (78=46) (79=48) (80=51) (81=53) (82=54) (83=55) (84=56) (85=58) (86=60) (87=62) (88=63) (89=64) (90=66) (91=67) (92/93=69) (94=70) (95=71) (96/97=72) (98/99=74) (100=75) (101=76) (102/103=77) (104=79) (105=80) (106/107=81) (108=82) (109/110=83) (111=84) (112/113=85) (114=86) (115/116=87) (117/118=88) (119/120=89) (121=90) (122/124=91) (125/126=92) (127/128=93) (129/131=94) (132/134=95) (135/139=96) (140/144=97) (145/151=98) (152/166=99) (167/200=100)


**recode ab_SIPApd 
**ab_SIPAts 

***Sub scales missing so can't create percentiles based on raw scores
****Use average centile scores instead?

***USe this for comparison as we do have all subscales here
egen ab_SIPAad_cent=rowmean(ab_SIPAmel ab_SIPAiso ab_SIPAdel ab_SIPAach)

*corr ab_SIPAad_cent ab_SIPAad
***High correlation so computing on percentile score seems legit.

egen ab_SIPApd_cent=rowmean(ab_SIPAsoc ab_SIPAincwt)
egen ab_SIPAts_cent=rowmean(ab_SIPAad ab_SIPApd ab_SIPAaprd)
 
 
 
 
************Parental Monitoring next

drop ghq1 ghq2 ghq3 ghq4 ghq5 ghq6 ghq7 ghq8 ghq9 ghq10 ghq11 ghq12 ///
events1 events2 events3 events4 events5 events6 events7 events8 events9 ///
events10 events11 events12 events13 events14 events15 events16 events17 ///
events18 events19 events20 events21 events22 ghqalt2 ghqalt3 ghqalt4 ghqalt5 ///
ghqalt6 ghqalt7 ghqalt8 ghqalt9 ghqalt10 ghqalt11 ghqalt12 ghqalt13 ghqalt14 ///
ghqalt15 ghqalt16 ghqalt17 ghqalt18 ghqalt19 ghqalt20 ghqalt21 ghqalt22 ghqalt23 ///
 ghqalt24 ghqalt25 ghqalt26 ghqalt27 ghqalt28 one_ab_parq_gds zero_ab_parq_gds ///
miss_ab_parq_gds one_ab_parq_com zero_ab_parq_com miss_ab_parq_com one_ab_parq_prsl ///
 zero_ab_parq_prsl miss_ab_parq_prsl one_ab_parq_coh zero_ab_parq_coh miss_ab_parq_coh ///
 one_ab_parq_sch zero_ab_parq_sch miss_ab_parq_sch one_ab_parq_cnv zero_ab_parq_cnv ///
miss_ab_parq_cnv one_ab_parq_eat zero_ab_parq_eat miss_ab_parq_eat one_ab_parq_malint ///
zero_ab_parq_malint miss_ab_parq_malint one_ab_parq_perf zero_ab_parq_perf miss_ab_parq_perf ///
one_ab_parq_ruin zero_ab_parq_ruin miss_ab_parq_ruin par1 par2 par3 par4 par5 par6 par7 par8 ///
par9 par10 par11 par12 par13 par14 par15 par16 par17 par18 par19 par20 par21 par22 par23 par24 ///
par25 par26 par27 par28 par29 par30 par31 par32 par33 par34 par35 par36 par37 par38 par39 par40 ///
par41 par42 par43 par44 par45 par46 par47 par48 par49 par50 par51 par52 par53 par54 par55 par56 ///
par57 par58 par59 par60 par61 par62 par63 par64 par65 par66 par67 par68 par69 par70 par71 par72 ///
par73 par74 par75 par76 par77 par78 par79 par80 par81 par82 par83 par84 par85 par86 par87 par88 ///
par89 par90 par91 par92 par93 par94 ///
sipa1 sipa6 sipa11 sipa16 sipa21 sipa26 sipa31 sipa36 sipa41 sipa46 ///
sipa2 sipa7 sipa12 sipa17 sipa22 sipa27 sipa32 sipa37 sipa42 sipa47 ///
sipa3 sipa8 sipa13 sipa18 sipa23 sipa28 sipa33 sipa38 sipa43 sipa48 ///
sipa4 sipa9 sipa14 sipa19 sipa24 sipa29 sipa34 sipa39 sipa44 sipa49 ///
sipa5 sipa10 sipa15 sipa20 sipa25 sipa30 sipa35 sipa40 sipa45 sipa50  ///
sipa81 sipa82 sipa83 sipa85 sipa86 sipa87 sipa53 sipa54 sipa57 sipa58  ///
sipa61 sipa65 sipa69 sipa62 sipa66 sipa70 sipa76 sipa80 sipa84 sipa88 ///
ab_SIPA1miss ab_SIPA1a ab_SIPA1b friend2 ab_SIPA2miss ab_SIPA2a ab_SIPA2b police2 property2  ///
ab_SIPA3miss ab_SIPA3a ab_SIPA3b bestsch2 motivate2 task2 effort2 ab_SIPA4miss ab_SIPA4a  ///
ab_SIPA4b affect2 tlkprob2 tellgo2 morals2 whfam2 gdthings2 undrstnd2 askhlp2  ///
getchlddo2 enjyprnt2 ab_SIPA5miss ab_SIPA5a ab_SIPA5b pstve2 capble2 ab_SIPA8miss ab_SIPA8a  ///
ab_SIPA8b xprnt2 hndany2 ab_SIPArawinca ab_SIPA9miss ab_SIPA9a ab_SIPA9b ab_SIPA9wta ab_SIPAtotalmiss


 
***Parental Monitoring

recode  mon9 (4=1) (3=2) (2=3) (1=4), gen(rmon9)
egen ab_monitor=rowtotal(mon1 mon2 mon3 mon4 mon5 mon6 mon7 mon8 rmon9), missing
label variable ab_monitor "Parental Monitoring"

***Child disclosure

recode  mon12 mon13 (4=1) (3=2) (2=3) (1=4), gen(rmon12 rmon13)
egen ab_disclose=rowtotal(mon10 mon11 rmon12 rmon13 mon14), missing
label variable ab_disclose "Child Disclosure"

***Parental Solicitation - Missing an item
egen ab_solicit=rowtotal(mon15 mon16 mon17 mon18 mon19), missing
label variable ab_solicit "Parental Solicitation"

***Parental Control
recode mon20 (4=1) (3=2) (2=3) (1=4), gen(rmon20)
egen ab_control=rowtotal (rmon20 mon21 mon22 mon23 mon24 mon25 mon26)
label variable ab_control "Parental Control"


drop mon1-mon26 rmon9 rmon12 rmon13 rmon20 ghqalt1

****Once final File is ready

drop checked baselinecomplete parentteen 

replace coupleid=83018 if id==83017

replace coupleid=86005 if id==86004

replace coupleid=86004 if id==86005

replace pairid=86023 if id==86024

replace pairid=86024 if id==86024


rename (age paidemployment occuption nyoung sex1child sex2child sex3child sex4child sex5child age1child age2child age3child age4child age5child rel1child rel2child rel3child rel4child rel5child relstatus gender ethnicity ethnicother anyreligion religion otherrelig culture otherculture) ab_=


***Adolescent Convert raw scores to computed T scores

recode ab_parq_gds (10=79) (9=75) (8=72) (7=68) (6=65) (5=61) (4=58) (3=54) (2=50) (1=47) (0=43) if ab_gender==1
recode ab_parq_com (10=80) (9=76) (8=73) (7=69) (6=65) (5=61) (4=57) (3=54) (2=50) (1=46) (0=42) if ab_gender==1
recode ab_parq_prsl (10=80) (9=76) (8=72) (7=68) (6=64) (5=60) (4=56) (3=53) (2=49) (1=45) (0=41) if ab_gender==1
recode ab_parq_coh (10=79) (9=75) (8=71) (7=68) (6=64) (5=61) (4=57) (3=53) (2=50) (1=46) (0=42) if ab_gender==1
recode ab_parq_sch (10=76) (9=73) (8=69) (7=66) (6=62) (5=59) (4=55) (3=52) (2=48) (1=45) (0=41) if ab_gender==1
recode ab_parq_cnv (10=74) (9=70) (8=66) (7=63) (6=59) (5=55) (4=52) (3=48) (2=44) (1=41) (0=37) if ab_gender==1
recode ab_parq_eat (10=92) (9=87) (8=82) (7=77) (6=72) (5=67) (4=63) (3=58) (2=53) (1=48) (0=43) if ab_gender==1
recode ab_parq_malint (8=85) (7=80) (6=74) (5=69) (4=64) (3=58) (2=53) (1=47) (0=42) if ab_gender==1
recode ab_parq_perf (8=74) (7=68) (6=63) (5=57) (4=51) (3=45) (2=40) (1=34) (0=30) if ab_gender==1
recode ab_parq_ruin (8=74) (7=69) (6=64) (5=58) (4=52) (3=47) (2=42) (1=38) (0=34) if ab_gender==1


recode ab_parq_gds (10=83) (9=79) (8=75) (7=71) (6=67) (5=63) (4=59) (3=55) (2=51) (1=47) (0=43) if ab_gender==0
recode ab_parq_com (10=80) (9=76) (8=72) (7=68) (6=64) (5=61) (4=57) (3=53) (2=49) (1=45) (0=41) if ab_gender==0
recode ab_parq_prsl (10=81) (9=77) (8=73) (7=68) (6=64) (5=60) (4=56) (3=52) (2=48) (1=44) (0=40) if ab_gender==0
recode ab_parq_coh (10=83) (9=79) (8=74) (7=70) (6=66) (5=62) (4=58) (3=54) (2=50) (1=45) (0=41) if ab_gender==0
recode ab_parq_sch (10=82) (9=78) (8=74) (7=70) (6=66) (5=62) (4=58) (3=54) (2=50) (1=46) (0=41) if ab_gender==0
recode ab_parq_cnv (10=74) (9=71) (8=67) (7=63) (6=59) (5=56) (4=52) (3=48) (2=44) (1=40) (0=37) if ab_gender==0
recode ab_parq_eat (10=95) (9=90) (8=85) (7=80) (6=74) (5=69) (4=64) (3=59) (2=53) (1=48) (0=43) if ab_gender==0
recode ab_parq_malint (8=85) (7=80) (6=74) (5=69) (4=64) (3=58) (2=53) (1=48) (0=42) if ab_gender==0
recode ab_parq_perf (8=75) (7=69) (6=63) (5=56) (4=50) (3=44) (2=38) (1=32) (0=30) if ab_gender==0
recode ab_parq_ruin (8=74) (7=69) (6=64) (5=59) (4=54) (3=48) (2=43) (1=39) (0=34) if ab_gender==0




save "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Final Data\adult baseline coded.dta", replace


