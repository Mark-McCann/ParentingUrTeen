use "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Data Entry\Surveys\adult follow up_final_raw.dta", clear

drop if id==93307
drop if id==89104
drop if id==910240
drop if id==.

****This will be replaced with the finalised file after data collection is complete

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
egen af1_ghq=rowtotal(ghq1 ghq2 ghq3 ghq4 ghq5 ghq6 ghq7 ghq8 ghq9 ghq10 ghq11 ghq12), missing


*****PARQ - Parent Adolescent Relationship Questionnaire
*****
*****
*****
*****
***Global Distress Scale

***Count number of ones ticked
egen one_af1_parq_gds=anycount(par1 par11 par21 par31 par41 par51 par61 par71 par81 par88), values(1)
***Count number of zeros ticked
egen zero_af1_parq_gds=anycount(par1 par11 par21 par31 par41 par51 par61 par71 par81 par88), values(0)
***Count number of missing responses ticked
egen miss_af1_parq_gds=rowmiss(par1 par11 par21 par31 par41 par51 par61 par71 par81 par88), 
***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par1=1 if par1==. & one_af1_parq_gds>zero_af1_parq_gds & miss_af1_parq_gds<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par1=1 if par1==. & one_af1_parq_gds<zero_af1_parq_gds & miss_af1_parq_gds<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par11=1 if par1==. & one_af1_parq_gds>zero_af1_parq_gds & miss_af1_parq_gds<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par11=1 if par1==. & one_af1_parq_gds<zero_af1_parq_gds & miss_af1_parq_gds<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par21=1 if par1==. & one_af1_parq_gds>zero_af1_parq_gds & miss_af1_parq_gds<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par21=1 if par1==. & one_af1_parq_gds<zero_af1_parq_gds & miss_af1_parq_gds<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par31=1 if par1==. & one_af1_parq_gds>zero_af1_parq_gds & miss_af1_parq_gds<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par31=1 if par1==. & one_af1_parq_gds<zero_af1_parq_gds & miss_af1_parq_gds<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par41=1 if par1==. & one_af1_parq_gds>zero_af1_parq_gds & miss_af1_parq_gds<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par41=1 if par1==. & one_af1_parq_gds<zero_af1_parq_gds & miss_af1_parq_gds<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par51=1 if par1==. & one_af1_parq_gds>zero_af1_parq_gds & miss_af1_parq_gds<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par51=1 if par1==. & one_af1_parq_gds<zero_af1_parq_gds & miss_af1_parq_gds<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par61=1 if par1==. & one_af1_parq_gds>zero_af1_parq_gds & miss_af1_parq_gds<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par61=1 if par1==. & one_af1_parq_gds<zero_af1_parq_gds & miss_af1_parq_gds<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par71=1 if par1==. & one_af1_parq_gds>zero_af1_parq_gds & miss_af1_parq_gds<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par71=1 if par1==. & one_af1_parq_gds<zero_af1_parq_gds & miss_af1_parq_gds<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par81=1 if par1==. & one_af1_parq_gds>zero_af1_parq_gds & miss_af1_parq_gds<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par81=1 if par1==. & one_af1_parq_gds<zero_af1_parq_gds & miss_af1_parq_gds<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par88=1 if par1==. & one_af1_parq_gds>zero_af1_parq_gds & miss_af1_parq_gds<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par88=1 if par1==. & one_af1_parq_gds<zero_af1_parq_gds & miss_af1_parq_gds<3


recode par21 par41 (0=1) (1=0) (.=.) (else=.a)
egen af1_parq_gds=rowtotal(par1 par11 par21 par31 par41 par51 par61 par71 par81 par88)
replace af1_parq_gds=.b if miss_af1_parq_gds>2
replace af1_parq_gds=. if miss_af1_parq_gds==10
label variable af1_parq_gds "AB PARQ Global Distress"

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
egen one_af1_parq_com=anycount(par2	par12	par22	par32	par42	par52	par62	par72	par82	par89), values(1)

***Count number of zeros ticked
egen zero_af1_parq_com=anycount(par2	par12	par22	par32	par42	par52	par62	par72	par82	par89), values(0)

***Count number of missing responses ticked
egen miss_af1_parq_com=rowmiss(par2	par12	par22	par32	par42	par52	par62	par72	par82	par89), 

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par2=1 if par2==. & one_af1_parq_com>zero_af1_parq_com & miss_af1_parq_com<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par2=1 if par2==. & one_af1_parq_com<zero_af1_parq_com & miss_af1_parq_com<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par12=1 if par2==. & one_af1_parq_com>zero_af1_parq_com & miss_af1_parq_com<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par12=1 if par2==. & one_af1_parq_com<zero_af1_parq_com & miss_af1_parq_com<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par22=1 if par2==. & one_af1_parq_com>zero_af1_parq_com & miss_af1_parq_com<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par22=1 if par2==. & one_af1_parq_com<zero_af1_parq_com & miss_af1_parq_com<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par32=1 if par2==. & one_af1_parq_com>zero_af1_parq_com & miss_af1_parq_com<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par32=1 if par2==. & one_af1_parq_com<zero_af1_parq_com & miss_af1_parq_com<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par42=1 if par2==. & one_af1_parq_com>zero_af1_parq_com & miss_af1_parq_com<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par42=1 if par2==. & one_af1_parq_com<zero_af1_parq_com & miss_af1_parq_com<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par52=1 if par2==. & one_af1_parq_com>zero_af1_parq_com & miss_af1_parq_com<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par52=1 if par2==. & one_af1_parq_com<zero_af1_parq_com & miss_af1_parq_com<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par62=1 if par2==. & one_af1_parq_com>zero_af1_parq_com & miss_af1_parq_com<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par62=1 if par2==. & one_af1_parq_com<zero_af1_parq_com & miss_af1_parq_com<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par72=1 if par2==. & one_af1_parq_com>zero_af1_parq_com & miss_af1_parq_com<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par72=1 if par2==. & one_af1_parq_com<zero_af1_parq_com & miss_af1_parq_com<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par82=1 if par2==. & one_af1_parq_com>zero_af1_parq_com & miss_af1_parq_com<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par82=1 if par2==. & one_af1_parq_com<zero_af1_parq_com & miss_af1_parq_com<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par89=1 if par2==. & one_af1_parq_com>zero_af1_parq_com & miss_af1_parq_com<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par89=1 if par2==. & one_af1_parq_com<zero_af1_parq_com & miss_af1_parq_com<3


recode par2 par12 par32 par42 par52 par72 par89  (0=1) (1=0) (.=.) (else=.a)
egen af1_parq_com=rowtotal(par2	par12	par22	par32	par42	par52	par62	par72	par82	par89)
replace af1_parq_com=.b if miss_af1_parq_com>2
replace af1_parq_com=. if miss_af1_parq_com==10
label variable af1_parq_com "AB PARQ Communication"

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
egen one_af1_parq_prsl=anycount(par3	par13	par23	par33	par43	par53	par63	par73	par83	par90), values(1)

***Count number of zeros ticked
egen zero_af1_parq_prsl=anycount(par3	par13	par23	par33	par43	par53	par63	par73	par83	par90), values(0)

***Count number of missing responses ticked
egen miss_af1_parq_prsl=rowmiss(par3	par13	par23	par33	par43	par53	par63	par73	par83	par90), 

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par3=1 if par3==. & one_af1_parq_prsl>zero_af1_parq_prsl & miss_af1_parq_prsl<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par3=1 if par3==. & one_af1_parq_prsl<zero_af1_parq_prsl & miss_af1_parq_prsl<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par13=1 if par3==. & one_af1_parq_prsl>zero_af1_parq_prsl & miss_af1_parq_prsl<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par13=1 if par3==. & one_af1_parq_prsl<zero_af1_parq_prsl & miss_af1_parq_prsl<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par23=1 if par3==. & one_af1_parq_prsl>zero_af1_parq_prsl & miss_af1_parq_prsl<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par23=1 if par3==. & one_af1_parq_prsl<zero_af1_parq_prsl & miss_af1_parq_prsl<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par33=1 if par3==. & one_af1_parq_prsl>zero_af1_parq_prsl & miss_af1_parq_prsl<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par33=1 if par3==. & one_af1_parq_prsl<zero_af1_parq_prsl & miss_af1_parq_prsl<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par43=1 if par3==. & one_af1_parq_prsl>zero_af1_parq_prsl & miss_af1_parq_prsl<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par43=1 if par3==. & one_af1_parq_prsl<zero_af1_parq_prsl & miss_af1_parq_prsl<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par53=1 if par3==. & one_af1_parq_prsl>zero_af1_parq_prsl & miss_af1_parq_prsl<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par53=1 if par3==. & one_af1_parq_prsl<zero_af1_parq_prsl & miss_af1_parq_prsl<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par63=1 if par3==. & one_af1_parq_prsl>zero_af1_parq_prsl & miss_af1_parq_prsl<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par63=1 if par3==. & one_af1_parq_prsl<zero_af1_parq_prsl & miss_af1_parq_prsl<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par73=1 if par3==. & one_af1_parq_prsl>zero_af1_parq_prsl & miss_af1_parq_prsl<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par73=1 if par3==. & one_af1_parq_prsl<zero_af1_parq_prsl & miss_af1_parq_prsl<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par83=1 if par3==. & one_af1_parq_prsl>zero_af1_parq_prsl & miss_af1_parq_prsl<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par83=1 if par3==. & one_af1_parq_prsl<zero_af1_parq_prsl & miss_af1_parq_prsl<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par90=1 if par3==. & one_af1_parq_prsl>zero_af1_parq_prsl & miss_af1_parq_prsl<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par90=1 if par3==. & one_af1_parq_prsl<zero_af1_parq_prsl & miss_af1_parq_prsl<3

recode par13 par33 par43 par53 par63 par83  (0=1) (1=0) (.=.) (else=.a)
egen af1_parq_prsl=rowtotal(par3	par13	par23	par33	par43	par53	par63	par73	par83	par90)
replace af1_parq_prsl=.b if miss_af1_parq_prsl>2
replace af1_parq_prsl=. if miss_af1_parq_prsl==10
label variable af1_parq_prsl "AB PARQ Problem Solving"


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
egen one_af1_parq_coh=anycount(par4	par14	par24	par34	par44	par54	par64	par74	par84	par91), values(1)

***Count number of zeros ticked
egen zero_af1_parq_coh=anycount(par4	par14	par24	par34	par44	par54	par64	par74	par84	par91), values(0)

***Count number of missing responses ticked
egen miss_af1_parq_coh=rowmiss(par4	par14	par24	par34	par44	par54	par64	par74	par84	par91), 

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par4=1 if par4==. & one_af1_parq_coh>zero_af1_parq_coh & miss_af1_parq_coh<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par4=1 if par4==. & one_af1_parq_coh<zero_af1_parq_coh & miss_af1_parq_coh<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par14=1 if par4==. & one_af1_parq_coh>zero_af1_parq_coh & miss_af1_parq_coh<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par14=1 if par4==. & one_af1_parq_coh<zero_af1_parq_coh & miss_af1_parq_coh<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par24=1 if par4==. & one_af1_parq_coh>zero_af1_parq_coh & miss_af1_parq_coh<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par24=1 if par4==. & one_af1_parq_coh<zero_af1_parq_coh & miss_af1_parq_coh<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par34=1 if par4==. & one_af1_parq_coh>zero_af1_parq_coh & miss_af1_parq_coh<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par34=1 if par4==. & one_af1_parq_coh<zero_af1_parq_coh & miss_af1_parq_coh<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par44=1 if par4==. & one_af1_parq_coh>zero_af1_parq_coh & miss_af1_parq_coh<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par44=1 if par4==. & one_af1_parq_coh<zero_af1_parq_coh & miss_af1_parq_coh<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par54=1 if par4==. & one_af1_parq_coh>zero_af1_parq_coh & miss_af1_parq_coh<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par54=1 if par4==. & one_af1_parq_coh<zero_af1_parq_coh & miss_af1_parq_coh<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par64=1 if par4==. & one_af1_parq_coh>zero_af1_parq_coh & miss_af1_parq_coh<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par64=1 if par4==. & one_af1_parq_coh<zero_af1_parq_coh & miss_af1_parq_coh<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par74=1 if par4==. & one_af1_parq_coh>zero_af1_parq_coh & miss_af1_parq_coh<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par74=1 if par4==. & one_af1_parq_coh<zero_af1_parq_coh & miss_af1_parq_coh<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par84=1 if par4==. & one_af1_parq_coh>zero_af1_parq_coh & miss_af1_parq_coh<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par84=1 if par4==. & one_af1_parq_coh<zero_af1_parq_coh & miss_af1_parq_coh<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par91=1 if par4==. & one_af1_parq_coh>zero_af1_parq_coh & miss_af1_parq_coh<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par91=1 if par4==. & one_af1_parq_coh<zero_af1_parq_coh & miss_af1_parq_coh<3

recode par4 par34 par44 par54 par74 par91  (0=1) (1=0) (.=.) (else=.a)
egen af1_parq_coh=rowtotal(par4	par14	par24	par34	par44	par54	par64	par74	par84	par91)
replace af1_parq_coh=.b if miss_af1_parq_coh>2
replace af1_parq_coh=. if miss_af1_parq_coh==10
label variable af1_parq_coh "AB PARQ Cohesion"


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
egen one_af1_parq_sch=anycount(par5	par15	par25	par35	par45	par55	par65	par75	par85	par92), values(1)

***Count number of zeros ticked
egen zero_af1_parq_sch=anycount(par5	par15	par25	par35	par45	par55	par65	par75	par85	par92), values(0)

***Count number of missing responses ticked
egen miss_af1_parq_sch=rowmiss(par5	par15	par25	par35	par45	par55	par65	par75	par85	par92), 

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par5=1 if par5==. & one_af1_parq_sch>zero_af1_parq_sch & miss_af1_parq_sch<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par5=1 if par5==. & one_af1_parq_sch<zero_af1_parq_sch & miss_af1_parq_sch<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par15=1 if par5==. & one_af1_parq_sch>zero_af1_parq_sch & miss_af1_parq_sch<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par15=1 if par5==. & one_af1_parq_sch<zero_af1_parq_sch & miss_af1_parq_sch<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par25=1 if par5==. & one_af1_parq_sch>zero_af1_parq_sch & miss_af1_parq_sch<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par25=1 if par5==. & one_af1_parq_sch<zero_af1_parq_sch & miss_af1_parq_sch<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par35=1 if par5==. & one_af1_parq_sch>zero_af1_parq_sch & miss_af1_parq_sch<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par35=1 if par5==. & one_af1_parq_sch<zero_af1_parq_sch & miss_af1_parq_sch<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par45=1 if par5==. & one_af1_parq_sch>zero_af1_parq_sch & miss_af1_parq_sch<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par45=1 if par5==. & one_af1_parq_sch<zero_af1_parq_sch & miss_af1_parq_sch<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par55=1 if par5==. & one_af1_parq_sch>zero_af1_parq_sch & miss_af1_parq_sch<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par55=1 if par5==. & one_af1_parq_sch<zero_af1_parq_sch & miss_af1_parq_sch<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par65=1 if par5==. & one_af1_parq_sch>zero_af1_parq_sch & miss_af1_parq_sch<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par65=1 if par5==. & one_af1_parq_sch<zero_af1_parq_sch & miss_af1_parq_sch<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par75=1 if par5==. & one_af1_parq_sch>zero_af1_parq_sch & miss_af1_parq_sch<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par75=1 if par5==. & one_af1_parq_sch<zero_af1_parq_sch & miss_af1_parq_sch<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par85=1 if par5==. & one_af1_parq_sch>zero_af1_parq_sch & miss_af1_parq_sch<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par85=1 if par5==. & one_af1_parq_sch<zero_af1_parq_sch & miss_af1_parq_sch<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par92=1 if par5==. & one_af1_parq_sch>zero_af1_parq_sch & miss_af1_parq_sch<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par92=1 if par5==. & one_af1_parq_sch<zero_af1_parq_sch & miss_af1_parq_sch<3


recode par25 par35 par75 (0=1) (1=0) (.=.) (else=.a)
egen af1_parq_sch=rowtotal(par5	par15	par25	par35	par45	par55	par65	par75	par85	par92)
replace af1_parq_sch=.b if miss_af1_parq_sch>2
replace af1_parq_sch=. if miss_af1_parq_sch==10
label variable af1_parq_sch "AB PARQ School Conflict"


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
egen one_af1_parq_cnv=anycount(par6	par16	par26	par36	par46	par56	par66	par76	par86	par93), values(1)

***Count number of zeros ticked
egen zero_af1_parq_cnv=anycount(par6	par16	par26	par36	par46	par56	par66	par76	par86	par93), values(0)

***Count number of missing responses ticked
egen miss_af1_parq_cnv=rowmiss(par6	par16	par26	par36	par46	par56	par66	par76	par86	par93), 

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par6=1 if par6==. & one_af1_parq_cnv>zero_af1_parq_cnv & miss_af1_parq_cnv<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par6=1 if par6==. & one_af1_parq_cnv<zero_af1_parq_cnv & miss_af1_parq_cnv<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par16=1 if par6==. & one_af1_parq_cnv>zero_af1_parq_cnv & miss_af1_parq_cnv<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par16=1 if par6==. & one_af1_parq_cnv<zero_af1_parq_cnv & miss_af1_parq_cnv<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par26=1 if par6==. & one_af1_parq_cnv>zero_af1_parq_cnv & miss_af1_parq_cnv<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par26=1 if par6==. & one_af1_parq_cnv<zero_af1_parq_cnv & miss_af1_parq_cnv<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par36=1 if par6==. & one_af1_parq_cnv>zero_af1_parq_cnv & miss_af1_parq_cnv<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par36=1 if par6==. & one_af1_parq_cnv<zero_af1_parq_cnv & miss_af1_parq_cnv<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par46=1 if par6==. & one_af1_parq_cnv>zero_af1_parq_cnv & miss_af1_parq_cnv<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par46=1 if par6==. & one_af1_parq_cnv<zero_af1_parq_cnv & miss_af1_parq_cnv<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par56=1 if par6==. & one_af1_parq_cnv>zero_af1_parq_cnv & miss_af1_parq_cnv<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par56=1 if par6==. & one_af1_parq_cnv<zero_af1_parq_cnv & miss_af1_parq_cnv<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par66=1 if par6==. & one_af1_parq_cnv>zero_af1_parq_cnv & miss_af1_parq_cnv<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par66=1 if par6==. & one_af1_parq_cnv<zero_af1_parq_cnv & miss_af1_parq_cnv<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par76=1 if par6==. & one_af1_parq_cnv>zero_af1_parq_cnv & miss_af1_parq_cnv<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par76=1 if par6==. & one_af1_parq_cnv<zero_af1_parq_cnv & miss_af1_parq_cnv<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par86=1 if par6==. & one_af1_parq_cnv>zero_af1_parq_cnv & miss_af1_parq_cnv<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par86=1 if par6==. & one_af1_parq_cnv<zero_af1_parq_cnv & miss_af1_parq_cnv<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par93=1 if par6==. & one_af1_parq_cnv>zero_af1_parq_cnv & miss_af1_parq_cnv<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par93=1 if par6==. & one_af1_parq_cnv<zero_af1_parq_cnv & miss_af1_parq_cnv<3


recode par26 par46 par66 par86 (0=1) (1=0) (.=.) (else=.a)
egen af1_parq_cnv=rowtotal(par6 par16	par26	par36	par46	par56	par66	par76	par86	par93)
replace af1_parq_cnv=.b if miss_af1_parq_cnv>2
replace af1_parq_cnv=. if miss_af1_parq_cnv==10
label variable af1_parq_cnv "AB PARQ Conventionalisation"


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
egen one_af1_parq_eat=anycount(par7	par17	par27	par37	par47	par57	par67	par77	par87	par94), values(1)

***Count number of zeros ticked
egen zero_af1_parq_eat=anycount(par7	par17	par27	par37	par47	par57	par67	par77	par87	par94), values(0)

***Count number of missing responses ticked
egen miss_af1_parq_eat=rowmiss(par7	par17	par27	par37	par47	par57	par67	par77	par87	par94), 

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par7=1 if par7==. & one_af1_parq_eat>zero_af1_parq_eat & miss_af1_parq_eat<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par7=1 if par7==. & one_af1_parq_eat<zero_af1_parq_eat & miss_af1_parq_eat<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par17=1 if par7==. & one_af1_parq_eat>zero_af1_parq_eat & miss_af1_parq_eat<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par17=1 if par7==. & one_af1_parq_eat<zero_af1_parq_eat & miss_af1_parq_eat<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par27=1 if par7==. & one_af1_parq_eat>zero_af1_parq_eat & miss_af1_parq_eat<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par27=1 if par7==. & one_af1_parq_eat<zero_af1_parq_eat & miss_af1_parq_eat<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par37=1 if par7==. & one_af1_parq_eat>zero_af1_parq_eat & miss_af1_parq_eat<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par37=1 if par7==. & one_af1_parq_eat<zero_af1_parq_eat & miss_af1_parq_eat<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par47=1 if par7==. & one_af1_parq_eat>zero_af1_parq_eat & miss_af1_parq_eat<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par47=1 if par7==. & one_af1_parq_eat<zero_af1_parq_eat & miss_af1_parq_eat<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par57=1 if par7==. & one_af1_parq_eat>zero_af1_parq_eat & miss_af1_parq_eat<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par57=1 if par7==. & one_af1_parq_eat<zero_af1_parq_eat & miss_af1_parq_eat<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par67=1 if par7==. & one_af1_parq_eat>zero_af1_parq_eat & miss_af1_parq_eat<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par67=1 if par7==. & one_af1_parq_eat<zero_af1_parq_eat & miss_af1_parq_eat<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par77=1 if par7==. & one_af1_parq_eat>zero_af1_parq_eat & miss_af1_parq_eat<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par77=1 if par7==. & one_af1_parq_eat<zero_af1_parq_eat & miss_af1_parq_eat<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par87=1 if par7==. & one_af1_parq_eat>zero_af1_parq_eat & miss_af1_parq_eat<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par87=1 if par7==. & one_af1_parq_eat<zero_af1_parq_eat & miss_af1_parq_eat<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par94=1 if par7==. & one_af1_parq_eat>zero_af1_parq_eat & miss_af1_parq_eat<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par94=1 if par7==. & one_af1_parq_eat<zero_af1_parq_eat & miss_af1_parq_eat<3


recode par27 par37 par57 par87 (0=1) (1=0) (.=.) (else=.a)
egen af1_parq_eat=rowtotal(par7	par17	par27	par37	par47	par57	par67	par77	par87	par94)
replace af1_parq_eat=.b if miss_af1_parq_eat>2
replace af1_parq_eat=. if miss_af1_parq_eat==10
label variable af1_parq_eat "AB PARQ Eating Conflict"

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
egen one_af1_parq_malint=anycount(par8	par18	par28	par38	par48	par58	par68	par78		), values(1)

***Count number of zeros ticked
egen zero_af1_parq_malint=anycount(par8	par18	par28	par38	par48	par58	par68	par78		), values(0)

***Count number of missing responses ticked
egen miss_af1_parq_malint=rowmiss(par8	par18	par28	par38	par48	par58	par68	par78		), 

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par8=1 if par8==. & one_af1_parq_malint>zero_af1_parq_malint & miss_af1_parq_malint<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par8=1 if par8==. & one_af1_parq_malint<zero_af1_parq_malint & miss_af1_parq_malint<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par18=1 if par8==. & one_af1_parq_malint>zero_af1_parq_malint & miss_af1_parq_malint<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par18=1 if par8==. & one_af1_parq_malint<zero_af1_parq_malint & miss_af1_parq_malint<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par28=1 if par8==. & one_af1_parq_malint>zero_af1_parq_malint & miss_af1_parq_malint<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par28=1 if par8==. & one_af1_parq_malint<zero_af1_parq_malint & miss_af1_parq_malint<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par38=1 if par8==. & one_af1_parq_malint>zero_af1_parq_malint & miss_af1_parq_malint<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par38=1 if par8==. & one_af1_parq_malint<zero_af1_parq_malint & miss_af1_parq_malint<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par48=1 if par8==. & one_af1_parq_malint>zero_af1_parq_malint & miss_af1_parq_malint<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par48=1 if par8==. & one_af1_parq_malint<zero_af1_parq_malint & miss_af1_parq_malint<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par58=1 if par8==. & one_af1_parq_malint>zero_af1_parq_malint & miss_af1_parq_malint<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par58=1 if par8==. & one_af1_parq_malint<zero_af1_parq_malint & miss_af1_parq_malint<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par68=1 if par8==. & one_af1_parq_malint>zero_af1_parq_malint & miss_af1_parq_malint<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par68=1 if par8==. & one_af1_parq_malint<zero_af1_parq_malint & miss_af1_parq_malint<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par78=1 if par8==. & one_af1_parq_malint>zero_af1_parq_malint & miss_af1_parq_malint<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par78=1 if par8==. & one_af1_parq_malint<zero_af1_parq_malint & miss_af1_parq_malint<3


egen af1_parq_malint=rowtotal(par8	par18	par28	par38	par48	par58	par68	par78	)
replace af1_parq_malint=.b if miss_af1_parq_malint>2
replace af1_parq_malint=. if miss_af1_parq_malint==10
label variable af1_parq_malint "AB PARQ Malicious Intent"


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
egen one_af1_parq_perf=anycount(par9	par19	par29	par39	par49	par59	par69	par79		), values(1)

***Count number of zeros ticked
egen zero_af1_parq_perf=anycount(par9	par19	par29	par39	par49	par59	par69	par79		), values(0)

***Count number of missing responses ticked
egen miss_af1_parq_perf=rowmiss(par9	par19	par29	par39	par49	par59	par69	par79		), 

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par9=1 if par9==. & one_af1_parq_perf>zero_af1_parq_perf & miss_af1_parq_perf<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par9=1 if par9==. & one_af1_parq_perf<zero_af1_parq_perf & miss_af1_parq_perf<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par19=1 if par9==. & one_af1_parq_perf>zero_af1_parq_perf & miss_af1_parq_perf<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par19=1 if par9==. & one_af1_parq_perf<zero_af1_parq_perf & miss_af1_parq_perf<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par29=1 if par9==. & one_af1_parq_perf>zero_af1_parq_perf & miss_af1_parq_perf<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par29=1 if par9==. & one_af1_parq_perf<zero_af1_parq_perf & miss_af1_parq_perf<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par39=1 if par9==. & one_af1_parq_perf>zero_af1_parq_perf & miss_af1_parq_perf<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par39=1 if par9==. & one_af1_parq_perf<zero_af1_parq_perf & miss_af1_parq_perf<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par49=1 if par9==. & one_af1_parq_perf>zero_af1_parq_perf & miss_af1_parq_perf<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par49=1 if par9==. & one_af1_parq_perf<zero_af1_parq_perf & miss_af1_parq_perf<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par59=1 if par9==. & one_af1_parq_perf>zero_af1_parq_perf & miss_af1_parq_perf<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par59=1 if par9==. & one_af1_parq_perf<zero_af1_parq_perf & miss_af1_parq_perf<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par69=1 if par9==. & one_af1_parq_perf>zero_af1_parq_perf & miss_af1_parq_perf<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par69=1 if par9==. & one_af1_parq_perf<zero_af1_parq_perf & miss_af1_parq_perf<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par79=1 if par9==. & one_af1_parq_perf>zero_af1_parq_perf & miss_af1_parq_perf<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par79=1 if par9==. & one_af1_parq_perf<zero_af1_parq_perf & miss_af1_parq_perf<3

recode par9	par19	par29	par39	par49	par59	par69	par79	(0=0) (1=1) (.=.) (else=.a)
egen af1_parq_perf=rowtotal(par9	par19	par29	par39	par49	par59	par69	par79		)
replace af1_parq_perf=.b if miss_af1_parq_perf>2
replace af1_parq_perf=. if miss_af1_parq_perf==10
label variable af1_parq_perf "AB PARQ Perfectionism"


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
egen one_af1_parq_ruin=anycount(par10	par20	par30	par40	par50	par60	par70	par80		), values(1)

***Count number of zeros ticked
egen zero_af1_parq_ruin=anycount(par10	par20	par30	par40	par50	par60	par70	par80		), values(0)

***Count number of missing responses ticked
egen miss_af1_parq_ruin=rowmiss(par10	par20	par30	par40	par50	par60	par70	par80		), 

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par10=1 if par10==. & one_af1_parq_ruin>zero_af1_parq_ruin & miss_af1_parq_ruin<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par10=1 if par10==. & one_af1_parq_ruin<zero_af1_parq_ruin & miss_af1_parq_ruin<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par20=1 if par10==. & one_af1_parq_ruin>zero_af1_parq_ruin & miss_af1_parq_ruin<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par20=1 if par10==. & one_af1_parq_ruin<zero_af1_parq_ruin & miss_af1_parq_ruin<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par30=1 if par10==. & one_af1_parq_ruin>zero_af1_parq_ruin & miss_af1_parq_ruin<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par30=1 if par10==. & one_af1_parq_ruin<zero_af1_parq_ruin & miss_af1_parq_ruin<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par40=1 if par10==. & one_af1_parq_ruin>zero_af1_parq_ruin & miss_af1_parq_ruin<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par40=1 if par10==. & one_af1_parq_ruin<zero_af1_parq_ruin & miss_af1_parq_ruin<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par50=1 if par10==. & one_af1_parq_ruin>zero_af1_parq_ruin & miss_af1_parq_ruin<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par50=1 if par10==. & one_af1_parq_ruin<zero_af1_parq_ruin & miss_af1_parq_ruin<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par60=1 if par10==. & one_af1_parq_ruin>zero_af1_parq_ruin & miss_af1_parq_ruin<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par60=1 if par10==. & one_af1_parq_ruin<zero_af1_parq_ruin & miss_af1_parq_ruin<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par70=1 if par10==. & one_af1_parq_ruin>zero_af1_parq_ruin & miss_af1_parq_ruin<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par70=1 if par10==. & one_af1_parq_ruin<zero_af1_parq_ruin & miss_af1_parq_ruin<3

***Impute missing to one if there are more ones than zeros and there are less than 2 missing items from scale
replace par80=1 if par10==. & one_af1_parq_ruin>zero_af1_parq_ruin & miss_af1_parq_ruin<3
***Impute missing to zero if there are more zeros than ones and there are less than 2 missing items from scale
replace par80=1 if par10==. & one_af1_parq_ruin<zero_af1_parq_ruin & miss_af1_parq_ruin<3

recode par10	par20	par30	par40	par50	par60	par70	par80	(0=0) (1=1) (.=.) (else=.a)
egen af1_parq_ruin=rowtotal(par10	par20	par30	par40	par50	par60	par70	par80		)
replace af1_parq_ruin=.b if miss_af1_parq_ruin>2
replace af1_parq_ruin=. if miss_af1_parq_ruin==10
label variable af1_parq_ruin "AB PARQ Ruination"


*****af1_SIPA Scale Syntax***

****This syntax runs correctly on My Documents\Parenting Teens\Oct 19th Adult Completed.dta
***1st scale
****Moodiness/Emotional Liability**
***straight summation, no reverse coding

gen af1_SIPArawmel= sipa1+sipa6+sipa11+sipa16+sipa21+sipa26+sipa31+sipa36+sipa41+sipa46
label variable af1_SIPArawmel "Raw Moodiness/Emotional Liability"

****1st scale end
***Scale 1 Missing Value Syntax
gen af1_SIPA1miss=0
replace af1_SIPA1miss=af1_SIPA1miss+1 if sipa1==.
replace af1_SIPA1miss=af1_SIPA1miss+1 if sipa6==.
replace af1_SIPA1miss=af1_SIPA1miss+1 if sipa11==.
replace af1_SIPA1miss=af1_SIPA1miss+1 if sipa16==.
replace af1_SIPA1miss=af1_SIPA1miss+1 if sipa21==.
replace af1_SIPA1miss=af1_SIPA1miss+1 if sipa26==.
replace af1_SIPA1miss=af1_SIPA1miss+1 if sipa31==.
replace af1_SIPA1miss=af1_SIPA1miss+1 if sipa36==.
replace af1_SIPA1miss=af1_SIPA1miss+1 if sipa41==.
replace af1_SIPA1miss=af1_SIPA1miss+1 if sipa46==.

label variable af1_SIPA1miss "Missing Moodiness/Emotional Liability"

gen af1_SIPA1a=sipa1+sipa6+sipa11+sipa16+sipa21+sipa26+sipa31+sipa36+sipa41+sipa46 if af1_SIPA1miss==1
gen af1_SIPA1b=round(af1_SIPA1a/9)
gen af1_SIPAmel=af1_SIPArawmel

replace af1_SIPAmel=af1_SIPA1a+af1_SIPA1b if af1_SIPA1miss==1
replace af1_SIPAmel=. if af1_SIPA1miss>1
label variable af1_SIPAmel "Moodiness/Emotional Liability inc missing"

*****2nd Scale
****Isolation
***reverse code

recode sipa2 (1=5) (2=4) (3=3) (4=2) (5=1) (miss=0), generate(friend2)

gen af1_SIPArawiso= friend2+ sipa7+ sipa12+ sipa17+ sipa22+ sipa27+ sipa32+ sipa37+ sipa42+ sipa47

label variable af1_SIPArawiso "Raw Social Isolation/Withdrawal"

***Scale 2 Missing Value Syntax
gen af1_SIPA2miss=0
replace af1_SIPA2miss=af1_SIPA2miss+1 if sipa2==.
replace af1_SIPA2miss=af1_SIPA2miss+1 if sipa7==.
replace af1_SIPA2miss=af1_SIPA2miss+1 if sipa12==.
replace af1_SIPA2miss=af1_SIPA2miss+1 if sipa17==.
replace af1_SIPA2miss=af1_SIPA2miss+1 if sipa22==.
replace af1_SIPA2miss=af1_SIPA2miss+1 if sipa27==.
replace af1_SIPA2miss=af1_SIPA2miss+1 if sipa32==.
replace af1_SIPA2miss=af1_SIPA2miss+1 if sipa37==.
replace af1_SIPA2miss=af1_SIPA2miss+1 if sipa42==.
replace af1_SIPA2miss=af1_SIPA2miss+1 if sipa47==.

label variable af1_SIPA2miss "Missing Isolation"

gen af1_SIPA2a=friend2+ sipa7+ sipa12+ sipa17+ sipa22+ sipa27+ sipa32+ sipa37+ sipa42+ sipa47 if af1_SIPA2miss==1
gen af1_SIPA2b=round(af1_SIPA2a/9)

gen af1_SIPAiso=af1_SIPArawiso
replace af1_SIPAiso=af1_SIPA2a+af1_SIPA2b if af1_SIPA2miss==1
replace af1_SIPAiso=. if af1_SIPA2miss>1
label variable af1_SIPAiso "Social Isolation/Withdrawal inc Miss"
***2nd scale end

*******3rd Scale
*******Delinquency
*******reverse code

recode  sipa3 (1=5) (2=4) (3=3) (4=2) (5=1) (miss=0), generate(police2)
recode  sipa28 (1=5) (2=4) (3=3) (4=2) (5=1) (miss=0), generate(property2)

gen af1_SIPArawdel= police2+ sipa8+ sipa13+ sipa18+ sipa23+ property2+ sipa33+ sipa38+ sipa43+ sipa48
label variable af1_SIPArawdel "Raw Delinquincy/Antisocial"

***3rd scale end


***Scale 3 Missing Value Syntax
gen af1_SIPA3miss=0
replace af1_SIPA3miss=af1_SIPA3miss+1 if sipa3==.
replace af1_SIPA3miss=af1_SIPA3miss+1 if sipa8==.
replace af1_SIPA3miss=af1_SIPA3miss+1 if sipa13==.
replace af1_SIPA3miss=af1_SIPA3miss+1 if sipa18==.
replace af1_SIPA3miss=af1_SIPA3miss+1 if sipa23==.
replace af1_SIPA3miss=af1_SIPA3miss+1 if sipa28==.
replace af1_SIPA3miss=af1_SIPA3miss+1 if sipa33==.
replace af1_SIPA3miss=af1_SIPA3miss+1 if sipa38==.
replace af1_SIPA3miss=af1_SIPA3miss+1 if sipa43==.
replace af1_SIPA3miss=af1_SIPA3miss+1 if sipa48==.

label variable af1_SIPA3miss "Missing Delinquency"

gen af1_SIPA3a=police2+ sipa8+ sipa13+ sipa18+ sipa23+ property2+ sipa33+ sipa38+ sipa43+ sipa48 if af1_SIPA3miss==1
gen af1_SIPA3b=round(af1_SIPA3a/9)
gen af1_SIPAdel=af1_SIPArawdel
replace af1_SIPAdel=af1_SIPA3a+af1_SIPA3b if af1_SIPA3miss==1
replace af1_SIPAdel=. if af1_SIPA3miss>1
label variable af1_SIPAdel "Delinquincy/Antisocial Inc Missing"


****4th Scale
***Failure to Achieve

****Reverse code
recode sipa4 (1=5) (2=4) (3=3) (4=2) (5=1) (miss=0), generate(bestsch2)
recode  sipa9 (1=5) (2=4) (3=3) (4=2) (5=1) (miss=0), generate(motivate2)
recode sipa34 (1=5) (2=4) (3=3) (4=2) (5=1) (miss=0), generate(task2)
recode  sipa49 (1=5) (2=4) (3=3) (4=2) (5=1) (miss=0), generate(effort2)

gen af1_SIPArawach=bestsch2+motivate2+task2+effort2+sipa4+sipa9+sipa34+sipa14+sipa19+sipa24+sipa29+sipa39+sipa44
label variable af1_SIPArawach "Raw Failure to achieve or perservere"


***Scale 4 Missing Value Syntax
gen af1_SIPA4miss=0
replace af1_SIPA4miss=af1_SIPA4miss+1 if sipa4==.
replace af1_SIPA4miss=af1_SIPA4miss+1 if sipa9 ==.
replace af1_SIPA4miss=af1_SIPA4miss+1 if sipa14==.
replace af1_SIPA4miss=af1_SIPA4miss+1 if sipa19==.
replace af1_SIPA4miss=af1_SIPA4miss+1 if sipa24==.
replace af1_SIPA4miss=af1_SIPA4miss+1 if sipa29==.
replace af1_SIPA4miss=af1_SIPA4miss+1 if sipa34 ==.
replace af1_SIPA4miss=af1_SIPA4miss+1 if sipa49==. 
replace af1_SIPA4miss=af1_SIPA4miss+1 if sipa39==.
replace af1_SIPA4miss=af1_SIPA4miss+1 if sipa44==.

label variable af1_SIPA4miss "Missing Achievement"

gen af1_SIPA4a=bestsch2+motivate2+task2+effort2+sipa4+sipa9+sipa34+sipa49+sipa14+sipa19+sipa24+sipa29+sipa39+sipa44 if af1_SIPA4miss==1
gen af1_SIPA4b=round(af1_SIPA4a/9)
gen af1_SIPAach=af1_SIPArawach
replace af1_SIPAach=af1_SIPA4a+af1_SIPA4b if af1_SIPA4miss==1
replace af1_SIPAach=. if af1_SIPA4miss>1

label variable af1_SIPAach "Failure to achieve or perservere Inc Missing"

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


gen af1_SIPArawaprd=affect2+tlkprob2+tellgo2+sipa20+morals2+sipa30+sipa35+whfam2 ///
+gdthings2+sipa50+undrstnd2+sipa82+askhlp2+getchlddo2+enjyprnt2+sipa87

label variable af1_SIPArawaprd "Raw Adolescent-Parent relationship domain"
***5th raw scale end

***Scale 5 Missing Value Syntax
gen af1_SIPA5miss=0
replace af1_SIPA5miss=af1_SIPA5miss+1 if sipa5==.
replace af1_SIPA5miss=af1_SIPA5miss+1 if sipa10==.
replace af1_SIPA5miss=af1_SIPA5miss+1 if sipa15==.
replace af1_SIPA5miss=af1_SIPA5miss+1 if sipa20==.
replace af1_SIPA5miss=af1_SIPA5miss+1 if sipa25==.
replace af1_SIPA5miss=af1_SIPA5miss+1 if sipa30==.
replace af1_SIPA5miss=af1_SIPA5miss+1 if sipa35==.
replace af1_SIPA5miss=af1_SIPA5miss+1 if sipa40==.
replace af1_SIPA5miss=af1_SIPA5miss+1 if sipa45==.
replace af1_SIPA5miss=af1_SIPA5miss+1 if sipa50==.
replace af1_SIPA5miss=af1_SIPA5miss+1 if sipa81==.
replace af1_SIPA5miss=af1_SIPA5miss+1 if sipa82==.
replace af1_SIPA5miss=af1_SIPA5miss+1 if sipa83==.
replace af1_SIPA5miss=af1_SIPA5miss+1 if sipa85==.
replace af1_SIPA5miss=af1_SIPA5miss+1 if sipa86==.
replace af1_SIPA5miss=af1_SIPA5miss+1 if sipa87==.

label variable af1_SIPA5miss "Missing Adolescent/Parent Relationship"

gen af1_SIPA5a=affect2+tlkprob2+tellgo2+sipa20+morals2+sipa30+sipa35+whfam2 ///
+gdthings2+sipa50+undrstnd2+sipa82+askhlp2+getchlddo2+enjyprnt2+sipa87 if af1_SIPA5miss==1
gen af1_SIPA5b=round(af1_SIPA5a/15)

gen af1_SIPAaprd=af1_SIPArawaprd
replace af1_SIPAaprd=af1_SIPA5a+af1_SIPA5b if af1_SIPA5miss==1
replace af1_SIPAaprd=. if af1_SIPA5miss>1

label variable af1_SIPAaprd "Adolescent-Parent relationship domain inc missing"
***5th Scale End



***8th Scale
***Social Alienation

***Reverse code

recode sipa54 (1=5) (2=4) (3=3) (4=2) (5=1) (miss=0), generate(pstve2)
recode sipa69 (1=5) (2=4) (3=3) (4=2) (5=1) (miss=0), generate(capble2)

gen af1_SIPArawsoc=sipa53+pstve2+sipa57+sipa58+sipa61+sipa65+capble2

label variable af1_SIPArawsoc "Social Alienation"

gen af1_SIPA8miss=0
replace af1_SIPA8miss=af1_SIPA8miss+1 if sipa53==.
replace af1_SIPA8miss=af1_SIPA8miss+1 if sipa54==.
replace af1_SIPA8miss=af1_SIPA8miss+1 if sipa57==. 
replace af1_SIPA8miss=af1_SIPA8miss+1 if sipa58==.
replace af1_SIPA8miss=af1_SIPA8miss+1 if sipa61==.
replace af1_SIPA8miss=af1_SIPA8miss+1 if sipa65==.
replace af1_SIPA8miss=af1_SIPA8miss+1 if sipa69==.

label variable af1_SIPA8miss "Missing Social Alienation"

gen af1_SIPA8a=sipa53+pstve2+sipa57+sipa58+sipa61+sipa65+capble2 if af1_SIPA8miss==1
gen af1_SIPA8b=round(af1_SIPA8a/6)

gen af1_SIPAsoc=af1_SIPArawsoc
replace af1_SIPAsoc=af1_SIPA8a+af1_SIPA8b if af1_SIPA8miss==1
replace af1_SIPAsoc=. if af1_SIPA8miss>1

label variable af1_SIPAsoc "Social Alienation inc missing"
***8th scale end


***9th scale
***Incompetence/Guilt scale
****1 item missing from the original questionnaire

***Reverse code

recode sipa66 (1=5) (2=4) (3=3) (4=2) (5=1) (miss=0), generate(xprnt2)
recode sipa70 (1=5) (2=4) (3=3) (4=2) (5=1) (miss=0), gen(hndany2)

gen af1_SIPArawinc=sipa62+xprnt2+hndany2+sipa76+sipa80+sipa84+sipa88
label variable af1_SIPArawinc "Incompetence/Guilt"

gen af1_SIPArawinca=round(af1_SIPArawinc/7)
gen af1_SIPArawincwt=af1_SIPArawinc+af1_SIPArawinca
label variable af1_SIPArawincwt "Incompetence/Guilt weighted for missing Q"

gen af1_SIPA9miss=0
replace af1_SIPA9miss=af1_SIPA9miss+1 if sipa62==.
replace af1_SIPA9miss=af1_SIPA9miss+1 if sipa66==.
replace af1_SIPA9miss=af1_SIPA9miss+1 if sipa70==. 
replace af1_SIPA9miss=af1_SIPA9miss+1 if sipa76==. 
replace af1_SIPA9miss=af1_SIPA9miss+1 if sipa80==.
replace af1_SIPA9miss=af1_SIPA9miss+1 if sipa84==.
replace af1_SIPA9miss=af1_SIPA9miss+1 if sipa88==.

label variable af1_SIPA9miss "Missing Items Incompetence/Guilt"

gen af1_SIPA9a=sipa62+xprnt2+hndany2+sipa70+sipa76+sipa80+sipa84+sipa88 if af1_SIPA9miss==1
gen af1_SIPA9b=round(af1_SIPA9a/6)

gen af1_SIPAinc=af1_SIPArawinc
replace af1_SIPAinc=af1_SIPA9a+af1_SIPA9b if af1_SIPA9miss==1
replace af1_SIPAinc=. if af1_SIPA9miss>1

label variable af1_SIPAinc "Incompetence/Guilt inc missing"

gen af1_SIPA9wta=round(af1_SIPAinc/7)
gen af1_SIPAincwt=af1_SIPAinc+af1_SIPA9wta
label variable af1_SIPAincwt "Incompetence/Guilt inc miss weighted for missing Q"

***9th Scale End


gen af1_SIPAtotalmiss=af1_SIPA1miss+af1_SIPA2miss+af1_SIPA3miss+af1_SIPA4miss+af1_SIPA5miss+af1_SIPA8miss+af1_SIPA9miss

label variable af1_SIPAtotalmiss "Missing Items Total"



***Adolescent Domain

gen af1_SIPArawad=af1_SIPArawmel+af1_SIPArawiso+af1_SIPArawdel+af1_SIPArawach
label variable af1_SIPArawad "Raw af1_SIPA Adolescent Domain"

gen af1_SIPAad=.
replace af1_SIPAad=af1_SIPAmel+af1_SIPAiso+af1_SIPAdel+af1_SIPAach if af1_SIPAtotalmiss<5
label variable af1_SIPAad "af1_SIPA Adolescent Domain inc missing"

***End Adolescent domain


***Parent domain

gen af1_SIPArawpd=af1_SIPArawsoc+af1_SIPArawincwt
label variable af1_SIPArawpd "Raw af1_SIPA Parent Domain"

gen af1_SIPApd=.
replace af1_SIPApd=af1_SIPAsoc+af1_SIPAincwt if af1_SIPAtotalmiss<5
label variable af1_SIPApd "af1_SIPA Parent Domain inc missing"

***End parent domain


***Total parenting stress

gen af1_SIPArawts=af1_SIPArawad+af1_SIPArawpd+af1_SIPArawaprd

label variable af1_SIPArawts "Raw af1_SIPA Total Stress"

gen af1_SIPAts=.
replace af1_SIPAts=af1_SIPAad+af1_SIPApd+af1_SIPAaprd if af1_SIPAtotalmiss<5
label variable af1_SIPAts "af1_SIPA Total Stress inc missing"

***End Total parenting stress

gen af1_SIPAtsrating=0
replace af1_SIPAtsrating=1 if af1_SIPAts>(239-21-19)
replace af1_SIPAtsrating=2 if af1_SIPAts>(259-21-19)
replace af1_SIPAtsrating=3 if af1_SIPAts>(281-21-19)
replace af1_SIPAtsrating=. if af1_SIPAts==.

*Minus 21 minus 19 is subtracting the 50th percentile score 
***for the two excluded sub scales: Life restrictions and Relationship with partner

label variable af1_SIPAtsrating "af1_SIPA total score rating bands"
label define af1_SIPAtsrating 0 "Normal" 1 "Borderline" 2 "Clinically Sig." 3 "Severe"
label values af1_SIPAtsrating af1_SIPAtsrating 

*****

gen af1_SIPAaprdrating=0
replace af1_SIPAaprdrating=1 if af1_SIPAaprd>43
replace af1_SIPAaprdrating=2 if af1_SIPAaprd>47
replace af1_SIPAaprdrating=3 if af1_SIPAaprd>54
replace af1_SIPAaprdrating=. if af1_SIPAaprd==.
label variable af1_SIPAaprdrating "af1_SIPA APRD rating"
label values af1_SIPAaprdrating af1_SIPAtsrating 

gen af1_SIPApdrating=0
replace af1_SIPApdrating=1 if af1_SIPApd>(94-21-19)
replace af1_SIPApdrating=2 if af1_SIPApd>(100-21-19)
replace af1_SIPApdrating=3 if af1_SIPApd>(109-21-19)
replace af1_SIPApdrating=. if af1_SIPApd==.

label variable af1_SIPApdrating "af1_SIPA Parental rating"
label values af1_SIPApdrating af1_SIPAtsrating 



*Minus 21 minus 19 is subtracting the 50th percentile score 
***for the two excluded sub scales: Life restrictions and Relationship with partner


gen af1_SIPAadrating=0
replace af1_SIPAadrating=1 if af1_SIPAad>111
replace af1_SIPAadrating=2 if af1_SIPAad>120
replace af1_SIPAadrating=3 if af1_SIPAad>131
replace af1_SIPAadrating=. if af1_SIPAad==.

label variable af1_SIPAadrating "af1_SIPA Adolescent rating"
label values af1_SIPAadrating af1_SIPAtsrating 


 
**SIPA - Stress Index for Parents of Adolescents, stressful events

egen af1_SIPA_events=rowtotal(events1 events2 events3 ///
events4 events5 events6 events7 events8 events9 ///
events10 events11 events12 events13 events14 events15 ///
events16 events17 events18 events19 events20 events21 events22), missing

label variable af1_SIPA_events "SIPA events 0 min  22 max"
 

 
 
 
recode af1_SIPAmel (10/19=17) (20=37) (21=41) (22=45) (23=50) (24=55) (25=58) (26=63) (27=66) (28=69) (29=72) (30=75) (31=76) (32=78) (33=80) (34=83) (35=85) (36=87) (37=89) (38=91) (39=92) (40=94) (41=96) (42/43=97) (44/46=98) (47=99) (48/50=100)

recode af1_SIPAiso (10/15=17) (16=38) (17=43) (18=50) (19=56) (20=64) (21=68) (22=73) (23=77) (24=81) (25=83) (26=85) (27=87) (28=90) (29=91) (30=92) (31=93) (32=95) (33/35=97) (36/37=98) (38/42=99) (43/50=100)

recode af1_SIPAdel (10/12=17) (13=40) (14=49) (15=56) (16=62) (17=67) (18=71) (19=74) (20=72) (21=80) (22=82) (23=85) (24=82) (25=83) (26=90) (27=91) (28=92) (29=93) (30/31=94) (32/33=95) (34/35=96) (36/37=97) (38/44=98) (45/47=99) (48/50=100)

recode af1_SIPAach (10/18=17) (19=35) (20=40) (21=46) (22=51) (23=55) (24=68) (25=62) (26=65) (27=67) (28=70) (29=73) (30=77) (31=78) (32=82) (33=84) (34=86) (35=88) (36=90) (37=91) (38=93) (39=94) (40/41=96) (42=97) (43=98) (44/45=99) (46/50=100) 

recode af1_SIPAaprd (16/27=17) (28=37) (29=42) (30=48) (31=52) (32=57) (33=62) (34=65) (35=68) (36=72) (37=75) (38=77) (39=79) (40=81) (41=82) (42=84) (43=85) (44=87) (45=88) (46=89) (47=90) (48/49=91) (50=92) (52/53=94) (54/56=95) (57=96) (58/60=97) (61/65=98) (66/71=99) (72/80=100)

recode af1_SIPAsoc (7/11=17) (12=37) (13=47) (14=63) (15=71) (16=78) (17=83) (18=87) (19=89) (20=92) (21=94) (22=95) (23=96) (24/25=97) (26/27=98) (28/31=99) (32/35=100)

recode af1_SIPAincwt (8/16=17) (17=37) (18=47) (19=56) (20=65) (21=72) (22=77) (23=82) (24=86) (25=88) (26=90) (27=92) (28=93) (29=95) (30=96) (31=97) (32=98) (33/34=99) (35/40=100)

recode af1_SIPAad (40/71=17) (72=35) (73=37) (74=40) (75=41) (76=43) (77=44) (78=46) (79=48) (80=51) (81=53) (82=54) (83=55) (84=56) (85=58) (86=60) (87=62) (88=63) (89=64) (90=66) (91=67) (92/93=69) (94=70) (95=71) (96/97=72) (98/99=74) (100=75) (101=76) (102/103=77) (104=79) (105=80) (106/107=81) (108=82) (109/110=83) (111=84) (112/113=85) (114=86) (115/116=87) (117/118=88) (119/120=89) (121=90) (122/124=91) (125/126=92) (127/128=93) (129/131=94) (132/134=95) (135/139=96) (140/144=97) (145/151=98) (152/166=99) (167/200=100)


**recode ab_SIPApd 
**ab_SIPAts 

***Sub scales missing so can't create percentiles based on raw scores
****Use average centile scores instead?

***USe this for comparison as we do have all subscales here
egen af1_SIPAad_cent=rowmean(af1_SIPAmel af1_SIPAiso af1_SIPAdel af1_SIPAach)

*corr af1_SIPAad_cent af1_SIPAad
***High correlation so computing on percentile score seems legit.

egen af1_SIPApd_cent=rowmean(af1_SIPAsoc af1_SIPAincwt)
egen af1_SIPAts_cent=rowmean(af1_SIPAad af1_SIPApd af1_SIPAaprd)
 
 
 
 
************Parental Monitoring next

drop ghq1 ghq2 ghq3 ghq4 ghq5 ghq6 ghq7 ghq8 ghq9 ghq10 ghq11 ghq12 ///
events1 events2 events3 events4 events5 events6 events7 events8 events9 ///
events10 events11 events12 events13 events14 events15 events16 events17 ///
events18 events19 events20 events21 events22 ghqalt2 ghqalt3 ghqalt4 ghqalt5 ///
ghqalt6 ghqalt7 ghqalt8 ghqalt9 ghqalt10 ghqalt11 ghqalt12 ghqalt13 ghqalt14 ///
ghqalt15 ghqalt16 ghqalt17 ghqalt18 ghqalt19 ghqalt20 ghqalt21 ghqalt22 ghqalt23 ///
 ghqalt24 ghqalt25 ghqalt26 ghqalt27 ghqalt28 one_af1_parq_gds zero_af1_parq_gds ///
miss_af1_parq_gds one_af1_parq_com zero_af1_parq_com miss_af1_parq_com one_af1_parq_prsl ///
 zero_af1_parq_prsl miss_af1_parq_prsl one_af1_parq_coh zero_af1_parq_coh miss_af1_parq_coh ///
 one_af1_parq_sch zero_af1_parq_sch miss_af1_parq_sch one_af1_parq_cnv zero_af1_parq_cnv ///
miss_af1_parq_cnv one_af1_parq_eat zero_af1_parq_eat miss_af1_parq_eat one_af1_parq_malint ///
zero_af1_parq_malint miss_af1_parq_malint one_af1_parq_perf zero_af1_parq_perf miss_af1_parq_perf ///
one_af1_parq_ruin zero_af1_parq_ruin miss_af1_parq_ruin par1 par2 par3 par4 par5 par6 par7 par8 ///
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
af1_SIPA1miss af1_SIPA1a af1_SIPA1b friend2 af1_SIPA2miss af1_SIPA2a af1_SIPA2b police2 property2  ///
af1_SIPA3miss af1_SIPA3a af1_SIPA3b bestsch2 motivate2 task2 effort2 af1_SIPA4miss af1_SIPA4a  ///
af1_SIPA4b affect2 tlkprob2 tellgo2 morals2 whfam2 gdthings2 undrstnd2 askhlp2  ///
getchlddo2 enjyprnt2 af1_SIPA5miss af1_SIPA5a af1_SIPA5b pstve2 capble2 af1_SIPA8miss af1_SIPA8a  ///
af1_SIPA8b xprnt2 hndany2 af1_SIPArawinca af1_SIPA9miss af1_SIPA9a af1_SIPA9b af1_SIPA9wta af1_SIPAtotalmiss
 
***Parental Monitoring

recode  mon9 (4=1) (3=2) (2=3) (1=4), gen(rmon9)
egen af1_monitor=rowtotal(mon1 mon2 mon3 mon4 mon5 mon6 mon7 mon8 rmon9), missing
label variable af1_monitor "Parental Monitoring"

***Child disclosure

recode  mon12 mon13 (4=1) (3=2) (2=3) (1=4), gen(rmon12 rmon13)
egen af1_disclose=rowtotal(mon10 mon11 rmon12 rmon13 mon14), missing
label variable af1_disclose "Child Disclosure"

***Parental Solicitation - Missing an item
egen af1_solicit=rowtotal(mon15 mon16 mon17 mon18 mon19), missing
label variable af1_solicit "Parental Solicitation"

***Parental Control
recode mon20 (4=1) (3=2) (2=3) (1=4), gen(rmon20)
egen af1_control=rowtotal (rmon20 mon21 mon22 mon23 mon24 mon25 mon26)
label variable af1_control "Parental Control"

drop mon1-mon26 rmon9 rmon12 rmon13 rmon20

drop checked followupcompleted time ghqalt1







****Once final File is ready
save "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Final Data\adult follow up 1 coded.dta", replace


