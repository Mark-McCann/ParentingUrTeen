use "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Final Data\allocation list_final_prep.dta", clear
gen datapatt=10
label define datapatt 0 "Baseline only" 1 "Baseline & f1" 2 "Base, f1 & f2" 3 "f1 only" 4 "f1 & f2 only" 5 "f2 only" 6 "Base & f2 only" 10 "Randomised only", 
label values datapatt datapatt

merge 1:1 id using  "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Final Data\adult baseline demographics_final.dta", gen(alloc_dem_mrg) update

gen nodemogs=0
replace nodemogs=1 if alloc_dem==1

**Drop all the ids corresponding to mailed back respondents from people who dropped out 
****of the programme and had their ids 

drop if datapatt==.

merge 1:1 id using  "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Final Data\adult baseline coded.dta", gen(dem_base_mrg)

replace datapatt=0 if dem_base==3

merge 1:1 id using "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Final Data\adult follow up 1 coded.dta", gen(base_f1_mrg) 

replace datapatt=1 if base_f1==3&datapatt==0
replace datapatt=3 if base_f1==3&datapatt==10



recode af1_parq_gds (10=79) (9=75) (8=72) (7=68) (6=65) (5=61) (4=58) (3=54) (2=50) (1=47) (0=43) if ab_gender==1
recode af1_parq_com (10=80) (9=76) (8=73) (7=69) (6=65) (5=61) (4=57) (3=54) (2=50) (1=46) (0=42) if ab_gender==1
recode af1_parq_prsl (10=80) (9=76) (8=72) (7=68) (6=64) (5=60) (4=56) (3=53) (2=49) (1=45) (0=41) if ab_gender==1
recode af1_parq_coh (10=79) (9=75) (8=71) (7=68) (6=64) (5=61) (4=57) (3=53) (2=50) (1=46) (0=42) if ab_gender==1
recode af1_parq_sch (10=76) (9=73) (8=69) (7=66) (6=62) (5=59) (4=55) (3=52) (2=48) (1=45) (0=41) if ab_gender==1
recode af1_parq_cnv (10=74) (9=70) (8=66) (7=63) (6=59) (5=55) (4=52) (3=48) (2=44) (1=41) (0=37) if ab_gender==1
recode af1_parq_eat (10=92) (9=87) (8=82) (7=77) (6=72) (5=67) (4=63) (3=58) (2=53) (1=48) (0=43) if ab_gender==1
recode af1_parq_malint (8=85) (7=80) (6=74) (5=69) (4=64) (3=58) (2=53) (1=47) (0=42) if ab_gender==1
recode af1_parq_perf (8=74) (7=68) (6=63) (5=57) (4=51) (3=45) (2=40) (1=34) (0=30) if ab_gender==1
recode af1_parq_ruin (8=74) (7=69) (6=64) (5=58) (4=52) (3=47) (2=42) (1=38) (0=34) if ab_gender==1

recode af1_parq_gds (10=83) (9=79) (8=75) (7=71) (6=67) (5=63) (4=59) (3=55) (2=51) (1=47) (0=43) if ab_gender==0
recode af1_parq_com (10=80) (9=76) (8=72) (7=68) (6=64) (5=61) (4=57) (3=53) (2=49) (1=45) (0=41) if ab_gender==0
recode af1_parq_prsl (10=81) (9=77) (8=73) (7=68) (6=64) (5=60) (4=56) (3=52) (2=48) (1=44) (0=40) if ab_gender==0
recode af1_parq_coh (10=83) (9=79) (8=74) (7=70) (6=66) (5=62) (4=58) (3=54) (2=50) (1=45) (0=41) if ab_gender==0
recode af1_parq_sch (10=82) (9=78) (8=74) (7=70) (6=66) (5=62) (4=58) (3=54) (2=50) (1=46) (0=41) if ab_gender==0
recode af1_parq_cnv (10=74) (9=71) (8=67) (7=63) (6=59) (5=56) (4=52) (3=48) (2=44) (1=40) (0=37) if ab_gender==0
recode af1_parq_eat (10=95) (9=90) (8=85) (7=80) (6=74) (5=69) (4=64) (3=59) (2=53) (1=48) (0=43) if ab_gender==0
recode af1_parq_malint (8=85) (7=80) (6=74) (5=69) (4=64) (3=58) (2=53) (1=48) (0=42) if ab_gender==0
recode af1_parq_perf (8=75) (7=69) (6=63) (5=56) (4=50) (3=44) (2=38) (1=32) (0=30) if ab_gender==0
recode af1_parq_ruin (8=74) (7=69) (6=64) (5=59) (4=54) (3=48) (2=43) (1=39) (0=34) if ab_gender==0

merge 1:1 id using "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Final Data\adult follow up 2 coded.dta", gen(f1_f2_mrg) 

recode af2_parq_gds (10=79) (9=75) (8=72) (7=68) (6=65) (5=61) (4=58) (3=54) (2=50) (1=47) (0=43) if ab_gender==1
recode af2_parq_com (10=80) (9=76) (8=73) (7=69) (6=65) (5=61) (4=57) (3=54) (2=50) (1=46) (0=42) if ab_gender==1
recode af2_parq_prsl (10=80) (9=76) (8=72) (7=68) (6=64) (5=60) (4=56) (3=53) (2=49) (1=45) (0=41) if ab_gender==1
recode af2_parq_coh (10=79) (9=75) (8=71) (7=68) (6=64) (5=61) (4=57) (3=53) (2=50) (1=46) (0=42) if ab_gender==1
recode af2_parq_sch (10=76) (9=73) (8=69) (7=66) (6=62) (5=59) (4=55) (3=52) (2=48) (1=45) (0=41) if ab_gender==1
recode af2_parq_cnv (10=74) (9=70) (8=66) (7=63) (6=59) (5=55) (4=52) (3=48) (2=44) (1=41) (0=37) if ab_gender==1
recode af2_parq_eat (10=92) (9=87) (8=82) (7=77) (6=72) (5=67) (4=63) (3=58) (2=53) (1=48) (0=43) if ab_gender==1
recode af2_parq_malint (8=85) (7=80) (6=74) (5=69) (4=64) (3=58) (2=53) (1=47) (0=42) if ab_gender==1
recode af2_parq_perf (8=74) (7=68) (6=63) (5=57) (4=51) (3=45) (2=40) (1=34) (0=30) if ab_gender==1
recode af2_parq_ruin (8=74) (7=69) (6=64) (5=58) (4=52) (3=47) (2=42) (1=38) (0=34) if ab_gender==1

recode af2_parq_gds (10=83) (9=79) (8=75) (7=71) (6=67) (5=63) (4=59) (3=55) (2=51) (1=47) (0=43) if ab_gender==0
recode af2_parq_com (10=80) (9=76) (8=72) (7=68) (6=64) (5=61) (4=57) (3=53) (2=49) (1=45) (0=41) if ab_gender==0
recode af2_parq_prsl (10=81) (9=77) (8=73) (7=68) (6=64) (5=60) (4=56) (3=52) (2=48) (1=44) (0=40) if ab_gender==0
recode af2_parq_coh (10=83) (9=79) (8=74) (7=70) (6=66) (5=62) (4=58) (3=54) (2=50) (1=45) (0=41) if ab_gender==0
recode af2_parq_sch (10=82) (9=78) (8=74) (7=70) (6=66) (5=62) (4=58) (3=54) (2=50) (1=46) (0=41) if ab_gender==0
recode af2_parq_cnv (10=74) (9=71) (8=67) (7=63) (6=59) (5=56) (4=52) (3=48) (2=44) (1=40) (0=37) if ab_gender==0
recode af2_parq_eat (10=95) (9=90) (8=85) (7=80) (6=74) (5=69) (4=64) (3=59) (2=53) (1=48) (0=43) if ab_gender==0
recode af2_parq_malint (8=85) (7=80) (6=74) (5=69) (4=64) (3=58) (2=53) (1=48) (0=42) if ab_gender==0
recode af2_parq_perf (8=75) (7=69) (6=63) (5=56) (4=50) (3=44) (2=38) (1=32) (0=30) if ab_gender==0
recode af2_parq_ruin (8=74) (7=69) (6=64) (5=59) (4=54) (3=48) (2=43) (1=39) (0=34) if ab_gender==0

rename ab_gender female
label define LABB 0 "Male" 1 "Female", modify

replace datapatt=5 if f1_f2==2 & datapatt==10
replace datapatt=6 if f1_f2==3 & datapatt==0
replace datapatt=2 if f1_f2==3 & datapatt==1
replace datapatt=4 if f1_f2==3 & datapatt==3

encode group_alloc , gen(allocation)
recode alloca (2=0)
label define allocation 0 "Wait list", add

***RCT analysis variable == rct_in
recode datapatt (1=1) (2=1) (else=0), gen(rct_in)

***Couldn't wait for next prgramme, attended ahead of allocated programme
replace rct_in=0 if name=="Gregg"
***Same : Couldn't wait for next programme
replace rct_in=0 if id==87004

replace rct_in=0 if id==85013
***Same : Couldn't wait for next programme



*****Couples
*br if id==1026|id==1024|id==83008|id==83009|id==83017|id==83018|id==84008	|id==84007	|id==84008|id==86005	|id==86004|id==86005|id==86008|id==86009	|id==86015	|id==86014	|id==86015|id==86021	|id==86020|id==87015	|id==87014|id==88027	|id==88026|id==91019	|id==91020|id==92009|id==92008

**couple ID - impute sex from other completion
replace female=0 if id==83008



rename alloc_site site 
rename alloc_round round 
rename alloc_allocation alloca 
****Each run of the sessions

gen deliveryid=.
replace delivery=1 if site==8 & round==1 &alloca==0
replace delivery=2 if site==8 & round==1 &alloca==1
replace delivery=3 if site==8 & round==2 &alloca==0
replace delivery=4 if site==8 & round==4 &alloca==0
replace delivery=4 if site==8 & round==4 &alloca==0
replace delivery=4 if site==8 & round==4 &alloca==0
replace delivery=4 if site==8 & round==4 &alloca==0
replace delivery=4 if site==8 & round==4 &alloca==0
replace delivery=4 if site==8 & round==4 &alloca==0
replace delivery=4 if site==8 & round==4 &alloca==0
replace delivery=4 if site==8 & round==4 &alloca==0
replace delivery=5 if site==8 & round==4 &alloca==1
replace delivery=5 if site==8 & round==4 &alloca==1
replace delivery=5 if site==8 & round==4 &alloca==1
replace delivery=5 if site==8 & round==4 &alloca==1
replace delivery=5 if site==8 & round==4 &alloca==1
replace delivery=5 if site==8 & round==4 &alloca==1
replace delivery=6 if site==8 & round==5 &alloca==0

replace delivery=7 if site==3 & round==1 &alloca==0
replace delivery=7 if site==3 & round==1 &alloca==0
replace delivery=8 if site==3 & round==1 &alloca==1
replace delivery=8 if site==3 & round==1 &alloca==1
replace delivery=9 if site==3 & round==2 &alloca==0
replace delivery=9 if site==3 & round==2 &alloca==0
replace delivery=9 if site==3 & round==2 &alloca==0
replace delivery=10 if site==3 & round==3 &alloca==0
replace delivery=11 if site==3 & round==3 &alloca==1
replace delivery=11 if site==3 & round==3 &alloca==1
replace delivery=12 if site==3 & round==4 &alloca==1
replace delivery=12 if site==3 & round==4 &alloca==1
replace delivery=12 if site==3 & round==4 &alloca==1
replace delivery=12 if site==3 & round==4 &alloca==1
replace delivery=12 if site==3 & round==4 &alloca==1
replace delivery=12 if site==3 & round==4 &alloca==1
replace delivery=13 if site==3 & round==5 &alloca==0
replace delivery=13 if site==3 & round==5 &alloca==0
replace delivery=13 if site==3 & round==5 &alloca==0
replace delivery=14 if site==3 & round==5 &alloca==1
replace delivery=14 if site==3 & round==5 &alloca==1
replace delivery=29 if site==3 & round==2 &alloca==1

replace delivery=15 if site==4 & round==1 &alloca==0
replace delivery=16 if site==4 & round==1 &alloca==1
replace delivery=17 if site==4 & round==3 &alloca==0
replace delivery=17 if site==4 & round==3 &alloca==0
replace delivery=17 if site==4 & round==3 &alloca==0
replace delivery=18 if site==4 & round==3 &alloca==1

replace delivery=19 if site==7 & round==2 &alloca==0
replace delivery=19 if site==7 & round==2 &alloca==0
replace delivery=19 if site==7 & round==2 &alloca==0
replace delivery=19 if site==7 & round==2 &alloca==0
replace delivery=20 if site==7 & round==2 &alloca==1
replace delivery=20 if site==7 & round==2 &alloca==1

replace delivery=21 if site==6 & round==2 &alloca==0
replace delivery=21 if site==6 & round==2 &alloca==0
replace delivery=21 if site==6 & round==2 &alloca==0
replace delivery=21 if site==6 & round==2 &alloca==0
replace delivery=30 if site==6 & round==2 &alloca==1

replace delivery=22 if site==2 & round==5 &alloca==0
replace delivery=22 if site==2 & round==5 &alloca==0
replace delivery=22 if site==2 & round==5 &alloca==0
replace delivery=22 if site==2 & round==5 &alloca==0
replace delivery=23 if site==2 & round==5 &alloca==1
replace delivery=23 if site==2 & round==5 &alloca==1
replace delivery=23 if site==2 & round==5 &alloca==1
replace delivery=23 if site==2 & round==5 &alloca==1
replace delivery=23 if site==2 & round==5 &alloca==1

replace delivery=24 if site==5 & round==4 &alloca==0
replace delivery=24 if site==5 & round==4 &alloca==0
replace delivery=24 if site==5 & round==4 &alloca==0
replace delivery=25 if site==5 & round==4 &alloca==1
replace delivery=25 if site==5 & round==4 &alloca==1
replace delivery=25 if site==5 & round==4 &alloca==1
replace delivery=25 if site==5 & round==4 &alloca==1
replace delivery=25 if site==5 & round==4 &alloca==1
replace delivery=25 if site==5 & round==4 &alloca==1

replace delivery=26 if site==1 & round==5 &alloca==0
replace delivery=26 if site==1 & round==5 &alloca==0
replace delivery=26 if site==1 & round==5 &alloca==0
replace delivery=26 if site==1 & round==5 &alloca==0
replace delivery=26 if site==1 & round==5 &alloca==0
replace delivery=26 if site==1 & round==5 &alloca==0
replace delivery=26 if site==1 & round==5 &alloca==0
replace delivery=26 if site==1 & round==5 &alloca==0
replace delivery=27 if site==1 & round==5 &alloca==1
replace delivery=27 if site==1 & round==5 &alloca==1
replace delivery=27 if site==1 & round==5 &alloca==1
replace delivery=27 if site==1 & round==5 &alloca==1
replace delivery=27 if site==1 & round==5 &alloca==1
replace delivery=27 if site==1 & round==5 &alloca==1

replace delivery=28 if site==9 & round==5 &alloca==1
replace delivery=28 if site==9 & round==5 &alloca==1

rename site alloc_site
rename round alloc_round
rename alloca alloc_allocation


**Pre-post programme variable = pp_in

gen pp_in=0
replace pp_in=1 if alloca==0 & datapatt==2
replace pp_in=1 if alloca==0 & datapatt==4
replace pp_in=1 if alloca==1 & datapatt==1
replace pp_in=1 if alloca==1 & datapatt==1

****Balfour and Concannon got programme over 3 weeks
gen shortprog=0
replace shortprog=1 if name=="Balfour"
replace shortprog=1 if name=="Concannon"
label variable shortprog "Full programme in 3 weeks"



gen baseline=0
replace baseline=1 if datapatt==0
replace baseline=1 if datapatt==1
replace baseline=1 if datapatt==2
replace baseline=1 if datapatt==6


gen f1=0
replace f1=1 if datapatt==1
replace f1=1 if datapatt==2
replace f1=1 if datapatt==3
replace f1=1 if datapatt==4

gen f2=0
replace f2=1 if datapatt==2
replace f2=1 if datapatt==4
replace f2=1 if datapatt==6





***Showed up on night excluded from the rct analysis
**Drop them from the denominator too, so set to missing instead of 0
replace rct_in=. if not_registered_parent=="Y"

***Dropping male couples from the RCT analysis
**Drop them from the denominator too, so set to missing instead of 0
replace rct_in=. if alloc_doublet==1& female==0


replace couple=0 if id==2036
replace couple=0 if id==2037
replace couple=1 if id==83018
replace coupleid=83017 if id==83018
replace couple=0 if id==84014
replace couple=0 if id==87012
replace couple=1 if id==87014
replace coupleid=87015 if id==87014
replace couple=0 if id==88020
replace couple=0 if id==89004
replace couple=0 if id==89011
replace couple=0 if id==90017
replace couple=0 if id==90020
replace couple=0 if id==90021
replace couple=0 if id==91024
replace couple=1 if id==92008
replace coupleid=92009 if id==92008
replace couple=0 if id==93005
replace couple=0 if id==93031

replace pair=0 if id==2036
replace pair=0 if id==2037
replace pair=0 if id==83018
replace pair=0 if id==84014
replace pair=0 if id==87012
replace pair=0 if id==87014
replace pair=0 if id==88020
replace pair=0 if id==89004
replace pair=0 if id==89011
replace pair=0 if id==90017
replace pair=1 if id==90020
replace pairid=90021 if id==90020
replace pair=1 if id==90021
replace pairid=90020 if id==90021
replace pair=0 if id==91024
replace pair=0 if id==92008
replace pair=0 if id==93005
replace pair=1 if id==93031
replace pairid=90030 if id==93031

list id if nodemog==1 & datapatt~=10

****No longer need to use this file, all checked by hand in step 1 
*********merge 1:1 id using "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Data Entry\pni id to allocation list id lookup_prep.dta", update

drop bq1_returned fq1_returned fq2_returned__wl_ tbq1_returned tfq2_returned voucher parent_interview
rename alloc_site site
rename alloc_round round
drop alloc_all 

***Programme & Evaluation Characteristics

order id group round site alloca 

****Attendance characteristics

egen attend_patt=concat(attended_week_1 attended_week_2 attended_week_3 ///
 attended_week_4 attended_week_5 attended_week_6 attended_week_7 attended_week_8)

 
 list id alloca site round name if attend_patt=="........"
 list id alloca site round name if attend_patt=="000000.."
 list id alloca site round name if attend_patt=="0000000."
 list id alloca site round name if attend_patt=="011111.."
 list id alloca site round name if attend_patt=="1110...."
 list id alloca site round name if attend_patt=="11101..."
 list id alloca site round name if attend_patt=="11110..."
 list id alloca site round name if attend_patt=="111101.."
 list id alloca site round name if attend_patt=="11111..."
 list id alloca site round name if attend_patt=="111111.."
 list id alloca site round name if attend_patt=="1111111."
 
 
 
egen attend_wks=rowtotal(attended_week_1 attended_week_2 attended_week_3 ///
 attended_week_4 attended_week_5 attended_week_6 attended_week_7 attended_week_8), 
 
recode attend_wks (0=0) (else=1), gen(attend_yn)

gen attend_dropout=.
replace attend_dropout=1 if attend_wks==8
replace attend_dropout=2 if attend_wks==7 & (attended_week_8==.|attended_week_8==0)
replace attend_dropout=3 if attend_wks==6 & (attended_week_8==.|attended_week_8==0) & (attended_week_7==.|attended_week_7==0)
replace attend_dropout=4 if attend_wks==5 & (attended_week_8==.|attended_week_8==0) & (attended_week_7==.|attended_week_7==0) & (attended_week_6==.|attended_week_6==0)& (attended_week_5==.|attended_week_5==0)
replace attend_dropout=5 if attend_wks==4 & (attended_week_8==.|attended_week_8==0) & (attended_week_7==.|attended_week_7==0) & (attended_week_6==.|attended_week_6==0)& (attended_week_5==.|attended_week_5==0)& (attended_week_4==.|attended_week_4==0)
replace attend_dropout=6 if attend_wks==3 & (attended_week_8==.|attended_week_8==0) & (attended_week_7==.|attended_week_7==0) & (attended_week_6==.|attended_week_6==0)& (attended_week_5==.|attended_week_5==0)& (attended_week_4==.|attended_week_4==0)& (attended_week_3==.|attended_week_3==0)
replace attend_dropout=7 if attend_wks==2 & (attended_week_8==.|attended_week_8==0) & (attended_week_7==.|attended_week_7==0) & (attended_week_6==.|attended_week_6==0)& (attended_week_5==.|attended_week_5==0)& (attended_week_4==.|attended_week_4==0)& (attended_week_3==.|attended_week_3==0)& (attended_week_2==.|attended_week_2==0)

order id group round site alloca attend_patt attend_wks

***Demographics 

gen age=ab_age
replace age=dem_age if age==.

egen age4=cut(age), at(0,40,45,50,100) icodes
replace age4=99 if age==.
label define age4 0 "30 to 39" 1 "40 to 44" 2 "45 to 49" 3 "50 to 75" 99 "Missing"
label values age4 age4 

gen paid=ab_paid
replace paid=dem_paid if paid==.

gen nyoung=ab_nyoung
replace nyoung=dem_nyoung if nyoung==.

order id group round site alloca attend_patt attend_wks age female paid nyoung

gen relstatus=ab_relstatus
replace relstatus=dem_relstatus if relstatus==.
replace relstatus=99 if relstatus==.
label values relstatus RELSTATU
label define RELSTATU 99 "Missing",add


****Total achieved interviews table

ta baseline 
ta baseline alloca, col

ta f1
ta f1 allocat, col
ta f2
ta f2 allocat, col

ta rct
ta rct alloca, col

ta pp 
ta pp alloca, col

****Characteristics of those lost from RCT analysis

gen response_patt=.
replace response_patt=0 if datap==10
replace response_patt=1 if datap==0 & alloca==1
replace response_patt=1 if datap==3 & alloca==1
replace response_patt=3 if datap==1 & alloca==1
replace response_patt=1 if datap==0 & alloca==1
replace response_patt=1 if datap==0 & alloca==0
replace response_patt=1 if datap==3 & alloca==0
replace response_patt=1 if datap==4 & alloca==0
replace response_patt=1 if datap==6 & alloca==0
replace response_patt=3 if datap==1 & alloca==0
replace response_patt=3 if datap==2 & alloca==0
replace response_patt=2 if response_patt==3 & rct==0
replace response_patt=4 if attended_week_8==0 & alloca==1
replace response_patt=5 if attend_wks==0 

label define response_patt 0 "No response" 1 "Partial response" 2 "Excluded" 3 "Included" 4 "Week 8 absent" 5 "Attended No Weeks"
label values response_patt response_patt 



***Flow Diagramme

ta baseline if alloca==1
ta f1 if baseline==1 & alloca==1
ta rct if f1==1 & baseline==1 & alloca==1, m
list not_registered_parent alloc_doublet if  f1==1 & baseline==1 & alloca==1 & rct==.

ta baseline if alloca==0
ta f1 if baseline==1 & alloca==0, m
ta f2 if baseline==1 & alloca==0, m


ta response_patt if baseline==1 & alloca==0 & f1==0, m
ta rct if baseline==1 & alloca==0 & f1==1, m
list not_registered_parent alloc_doublet if  f1==1 & baseline==1 & alloca==0 & rct==.


*merge 1:1 id using "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Final Data\pni recruitment data_id added_prep.dta"
*ta pni_loss alloca, m col
*Numbers don't add up - refuders also attended. No use for flow chart

*ta did_not alloca, m

***table 2 Reasons for loss from analysis

*replace response_patt=. if rct_in==.

ta response_pat rct , col

ta response_pat alloca if rct==0 , col



ta attend_p if response_pat==0
**Around one third of parents never responded 
*to any surveys, all but four of this group never attended the programme. 

ta attend_p alloca if response_pat==1, row

ta datapatt alloca if response_pat==1, col






***Table 3: Programme Characteristics of those lost from RCT analysis
gen loss=0
replace loss=1 if rct==0

ta alloca rct, chi2 row
*logistic loss alloca if rct~=.

ta round rct, chi2 row
*logistic loss i.round if rct~=.

ta site rct, chi2 col exact
*logistic loss ib3.site if rct~=.


replace paid=99 if paid==.
replace nyoung=99 if nyoung==.

***Table 4: Demographic characteristics for those lost from RCT analysis

ttest age ,by(rct)
logistic loss age, or

ta age4 rct if rct==1, col
ta age4 rct if rct~=., row chi2
logistic loss i.age4 if rct~=.

recode female (0=0) (1=1) (.=2), gen(femmiss)

ta femmiss rct , col
ta femmiss rct , row chi2
logistic loss i.femmiss if rct~=., or  

ta paid rct if rct==1, col
ta paid rct if rct~=., row chi2
logistic loss i.paid if rct~=. 

ta nyoung rct if rct==1,col 
ta nyoung rct, row chi2 exact
*logistic loss nyoung if rct~=.

ta relstatus rct if rct==1, col
ta relstatus rct, row chi2 exact 
logistic loss ib1.relstatus if rct~=.

***Characteristics of RCT analysis, pre-post analysis and overall sample


**Table 5: Programme characteristics for evaluation analysis sample

ta alloca if rct==1

ta round if rct==1
ta round alloca if rct==1, col chi2

ta site if rct==1, nol
ta site  alloca if rct==1, col chi2


***Table 6: Demographics for RCT analysis sample

***imputed female for 89016 to get full numbers

replace female=1 if id==89016

table alloca if rct==1, contents(mean age sd age)

ta age4 alloca if rct==1, col chi2

tab female alloca if rct==1, col exact

ta paid alloca if rct==1, col chi2

ta relstatus alloca if rct==1, col chi2

ta nyoung alloca if rct==1, col exact



**TTable 7: Outcome measures for effectiveness evaluation (Part 1 & 2)
**Before
tabstat	ab_ghq 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	ab_parq_gds 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	ab_parq_com 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	ab_parq_prsl 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	ab_parq_coh 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	ab_parq_sch 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	ab_parq_cnv 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	ab_parq_eat 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	ab_parq_malint 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	ab_parq_perf 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	ab_parq_ruin 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	ab_SIPAmel 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	ab_SIPAiso 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	ab_SIPAdel 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	ab_SIPAach 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	ab_SIPAsoc 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	ab_SIPAincwt 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	ab_SIPAaprd 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	ab_SIPAad 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	ab_SIPApd_cent 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	ab_SIPAts_cent	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	ab_monitor	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	ab_disclose	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	ab_solicit	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	ab_control	if	rct==1,	by(alloca)	statistics(mean	sd)
**After
tabstat	af1_ghq 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	af1_parq_gds 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	af1_parq_com 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	af1_parq_prsl 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	af1_parq_coh 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	af1_parq_sch 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	af1_parq_cnv 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	af1_parq_eat 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	af1_parq_malint 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	af1_parq_perf 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	af1_parq_ruin 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	af1_SIPAmel 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	af1_SIPAiso 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	af1_SIPAdel 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	af1_SIPAach 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	af1_SIPAsoc 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	af1_SIPAincwt 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	af1_SIPAaprd 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	af1_SIPAad 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	af1_SIPApd_cent 	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	af1_SIPAts_cent	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	af1_monitor	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	af1_disclose	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	af1_solicit	if	rct==1,	by(alloca)	statistics(mean	sd)
tabstat	af1_control	if	rct==1,	by(alloca)	statistics(mean	sd)

****Comparison of baseline outcome measures between two groups at baseline

sdtest	ab_ghq 	if	rct==1,	by(alloca)	
sdtest	ab_parq_gds 	if	rct==1,	by(alloca)	
sdtest	ab_parq_com 	if	rct==1,	by(alloca)	
sdtest	ab_parq_prsl 	if	rct==1,	by(alloca)	
sdtest	ab_parq_coh 	if	rct==1,	by(alloca)	
sdtest	ab_parq_sch 	if	rct==1,	by(alloca)	
sdtest	ab_parq_cnv 	if	rct==1,	by(alloca)	
sdtest	ab_parq_eat 	if	rct==1,	by(alloca)	
sdtest	ab_parq_malint 	if	rct==1,	by(alloca)	
sdtest	ab_parq_perf 	if	rct==1,	by(alloca)	
sdtest	ab_parq_ruin 	if	rct==1,	by(alloca)	
sdtest	ab_SIPAmel 	if	rct==1,	by(alloca)	
sdtest	ab_SIPAiso 	if	rct==1,	by(alloca)	
sdtest	ab_SIPAdel 	if	rct==1,	by(alloca)	
sdtest	ab_SIPAach 	if	rct==1,	by(alloca)	
sdtest	ab_SIPAsoc 	if	rct==1,	by(alloca)	
sdtest	ab_SIPAincwt 	if	rct==1,	by(alloca)	
sdtest	ab_SIPAaprd 	if	rct==1,	by(alloca)	
sdtest	ab_SIPAad 	if	rct==1,	by(alloca)	
sdtest	ab_SIPApd_cent 	if	rct==1,	by(alloca)	
sdtest	ab_SIPAts_cent	if	rct==1,	by(alloca)	
sdtest	ab_monitor	if	rct==1,	by(alloca)	
sdtest	ab_disclose	if	rct==1,	by(alloca)	
sdtest	ab_solicit	if	rct==1,	by(alloca)	
sdtest	ab_control	if	rct==1,	by(alloca)	

ttest	ab_ghq 	if	rct==1,	by(alloca)	
ttest	ab_parq_gds 	if	rct==1,	by(alloca)	
ttest	ab_parq_com 	if	rct==1,	by(alloca)	
ttest	ab_parq_prsl 	if	rct==1,	by(alloca)	
ttest	ab_parq_coh 	if	rct==1,	by(alloca)	
ttest	ab_parq_sch 	if	rct==1,	by(alloca)	
ttest	ab_parq_cnv 	if	rct==1,	by(alloca)	unequal
ttest	ab_parq_eat 	if	rct==1,	by(alloca)	
ttest	ab_parq_malint 	if	rct==1,	by(alloca)	
ttest	ab_parq_perf 	if	rct==1,	by(alloca)	
ttest	ab_parq_ruin 	if	rct==1,	by(alloca)	
ttest	ab_SIPAmel 	if	rct==1,	by(alloca)	
ttest	ab_SIPAiso 	if	rct==1,	by(alloca)	
ttest	ab_SIPAdel 	if	rct==1,	by(alloca)	
ttest	ab_SIPAach 	if	rct==1,	by(alloca)	
ttest	ab_SIPAsoc 	if	rct==1,	by(alloca)	unequal
ttest	ab_SIPAincwt 	if	rct==1,	by(alloca)	unequal
ttest	ab_SIPAaprd 	if	rct==1,	by(alloca)	unequal
ttest	ab_SIPAad 	if	rct==1,	by(alloca)	unequal
ttest	ab_SIPApd_cent 	if	rct==1,	by(alloca)	unequal
ttest	ab_SIPAts_cent	if	rct==1,	by(alloca)	unequal
ttest	ab_monitor	if	rct==1,	by(alloca)	
ttest	ab_disclose	if	rct==1,	by(alloca)	
ttest	ab_solicit	if	rct==1,	by(alloca)	
ttest	ab_control	if	rct==1,	by(alloca)	



gen ch_ghq=ab_ghq-af1_ghq
gen ch_parq_gds=ab_parq_gds-af1_parq_gds
gen ch_parq_com=ab_parq_com-af1_parq_com
gen ch_parq_prsl=ab_parq_prsl-af1_parq_prsl
gen ch_parq_coh=ab_parq_coh-af1_parq_coh
gen ch_parq_sch=ab_parq_sch-af1_parq_sch
gen ch_parq_cnv=ab_parq_cnv-af1_parq_cnv
gen ch_parq_eat=ab_parq_eat-af1_parq_eat
gen ch_parq_malint=ab_parq_malint-af1_parq_malint
gen ch_parq_perf=ab_parq_perf-af1_parq_perf
gen ch_parq_ruin=ab_parq_ruin-af1_parq_ruin
gen ch_SIPAmel=ab_SIPAmel-af1_SIPAmel
gen ch_SIPAiso=ab_SIPAiso-af1_SIPAiso
gen ch_SIPAdel=ab_SIPAdel-af1_SIPAdel
gen ch_SIPAach=ab_SIPAach-af1_SIPAach
gen ch_SIPAsoc=ab_SIPAsoc-af1_SIPAsoc
gen ch_SIPAincwt=ab_SIPAincwt-af1_SIPAincwt
gen ch_SIPAaprd=ab_SIPAaprd-af1_SIPAaprd
gen ch_SIPAad=ab_SIPAad-af1_SIPAad
gen ch_SIPApd_cent=ab_SIPApd_cent-af1_SIPApd_cent
gen ch_SIPAts_cent=ab_SIPAts_cent-af1_SIPAts_cent
gen ch_SIPA_events=ab_SIPA_events-af1_SIPA_events
gen ch_monitor=ab_monitor-af1_monitor
gen ch_disclose=ab_disclose-af1_disclose
gen ch_solicit=ab_solicit-af1_solicit
gen ch_control=ab_control-af1_control


gen improve_parq_cnv=.
replace improve_parq_cnv=0 if ch_parq_cnv<12
replace improve_parq_cnv=0.05 if ch_parq_cnv>11&ch_parq_cnv<16
replace improve_parq_cnv=0.01 if ch_parq_cnv>=16&ch_parq_cnv~=.

gen improve_parq_gds=.
replace improve_parq_gds=0 if ch_parq_gds<9
replace improve_parq_gds=0.05 if ch_parq_gds>8&ch_parq_gds<11
replace improve_parq_gds=0.01 if ch_parq_gds>=11&ch_parq_gds~=.

gen improve_parq_com=.
replace improve_parq_com=0 if ch_parq_com<10
replace improve_parq_com=0.05 if ch_parq_com>=10&ch_parq_com<13
replace improve_parq_com=0.01 if ch_parq_com>=13&ch_parq_com~=.

gen improve_parq_prsl=.
replace improve_parq_prsl=0 if ch_parq_prsl<11
replace improve_parq_prsl=0.05 if ch_parq_prsl>=11&ch_parq_prsl<15
replace improve_parq_prsl=0.01 if ch_parq_prsl>=15&ch_parq_prsl~=.

gen improve_parq_sch=.
replace improve_parq_sch=0 if ch_parq_sch<10
replace improve_parq_sch=0.05 if ch_parq_sch>=10&ch_parq_sch<12
replace improve_parq_sch=0.01 if ch_parq_sch>=13&ch_parq_sch~=.

gen improve_parq_eat=.
replace improve_parq_eat=0 if ch_parq_eat<12
replace improve_parq_eat=0.05 if ch_parq_eat>=12&ch_parq_eat<16
replace improve_parq_eat=0.01 if ch_parq_eat>=16&ch_parq_eat~=.

gen improve_parq_malint=.
replace improve_parq_malint=0 if ch_parq_malint<13
replace improve_parq_malint=0.05 if ch_parq_malint>=13&ch_parq_malint<16
replace improve_parq_malint=0.01 if ch_parq_malint>=16&ch_parq_malint~=.

gen improve_parq_perf=.
replace improve_parq_perf=0 if ch_parq_perf<15
replace improve_parq_perf=0.05 if ch_parq_perf>=15&ch_parq_perf<19
replace improve_parq_perf=0.01 if ch_parq_perf>=19&ch_parq_perf~=.

gen improve_parq_ruin=.
replace improve_parq_ruin=0 if ch_parq_ruin<15
replace improve_parq_ruin=0.05 if ch_parq_ruin>=15&ch_parq_ruin<19
replace improve_parq_ruin=0.01 if ch_parq_ruin>=19&ch_parq_ruin~=.

gen improve_parq_coh=.
replace improve_parq_coh=0 if ch_parq_coh<10
replace improve_parq_coh=0.05 if ch_parq_coh>=10&ch_parq_coh<13
replace improve_parq_coh=0.01 if ch_parq_coh>=13&ch_parq_coh~=.



***Male change scores.

replace improve_parq_cnv=0 if ch_parq_cnv<13 & female==0
replace improve_parq_cnv=0.05 if ch_parq_cnv>=13&ch_parq_cnv<17 & female==0
replace improve_parq_cnv=0.01 if ch_parq_cnv>=17&ch_parq_cnv~=. & female==0

replace improve_parq_gds=0 if ch_parq_gds<11 & female==0
replace improve_parq_gds=0.05 if ch_parq_gds>=11&ch_parq_gds<14 & female==0
replace improve_parq_gds=0.01 if ch_parq_gds>=14&ch_parq_gds~=. & female==0

replace improve_parq_com=0 if ch_parq_com<11 & female==0
replace improve_parq_com=0.05 if ch_parq_com>=11&ch_parq_com<14 & female==0
replace improve_parq_com=0.01 if ch_parq_com>=14&ch_parq_com~=. & female==0

replace improve_parq_prsl=0 if ch_parq_prsl<12 & female==0
replace improve_parq_prsl=0.05 if ch_parq_prsl>=12&ch_parq_prsl<16 & female==0
replace improve_parq_prsl=0.01 if ch_parq_prsl>=16&ch_parq_prsl~=. & female==0

replace improve_parq_sch=0 if ch_parq_sch<13 & female==0
replace improve_parq_sch=0.05 if ch_parq_sch>=13&ch_parq_sch<16 & female==0
replace improve_parq_sch=0.01 if ch_parq_sch>=16&ch_parq_sch~=. & female==0

replace improve_parq_eat=0 if ch_parq_eat<12 & female==0
replace improve_parq_eat=0.05 if ch_parq_eat>=12&ch_parq_eat<16 & female==0
replace improve_parq_eat=0.01 if ch_parq_eat>=16&ch_parq_eat~=. & female==0

replace improve_parq_malint=0 if ch_parq_malint<12 & female==0
replace improve_parq_malint=0.05 if ch_parq_malint>=12&ch_parq_malint<16 & female==0
replace improve_parq_malint=0.01 if ch_parq_malint>=16&ch_parq_malint~=. & female==0

replace improve_parq_perf=0 if ch_parq_perf<16 & female==0
replace improve_parq_perf=0.05 if ch_parq_perf>=16&ch_parq_perf<21 & female==0
replace improve_parq_perf=0.01 if ch_parq_perf>=21&ch_parq_perf~=. & female==0

replace improve_parq_ruin=0 if ch_parq_ruin<15 & female==0
replace improve_parq_ruin=0.05 if ch_parq_ruin>=15&ch_parq_ruin<20 & female==0
replace improve_parq_ruin=0.01 if ch_parq_ruin>=20&ch_parq_ruin~=. & female==0


replace improve_parq_coh=0 if ch_parq_coh<12 & female==0
replace improve_parq_coh=0.05 if ch_parq_coh>=12&ch_parq_coh<16 & female==0
replace improve_parq_coh=0.01 if ch_parq_coh>=16&ch_parq_coh~=. & female==0



***Number of respondents

summ ch_ghq if rct==1 & alloca==0
summ ch_parq_gds  if rct==1 & alloca==0
summ ch_parq_com  if rct==1 & alloca==0
summ ch_parq_prsl  if rct==1 & alloca==0
summ ch_parq_coh  if rct==1& alloca==0
summ ch_parq_sch  if rct==1& alloca==0
summ ch_parq_cnv  if rct==1& alloca==0
summ ch_parq_eat  if rct==1& alloca==0
summ ch_parq_malint  if rct==1& alloca==0
summ ch_parq_perf  if rct==1& alloca==0
summ ch_parq_ruin  if rct==1& alloca==0


summ ch_ghq if rct==1 & alloca==1
summ ch_parq_gds  if rct==1 & alloca==1
summ ch_parq_com  if rct==1 & alloca==1
summ ch_parq_prsl  if rct==1 & alloca==1
summ ch_parq_coh  if rct==1& alloca==1
summ ch_parq_sch  if rct==1& alloca==1
summ ch_parq_cnv  if rct==1& alloca==1
summ ch_parq_eat  if rct==1& alloca==1
summ ch_parq_malint  if rct==1& alloca==1
summ ch_parq_perf  if rct==1& alloca==1
summ ch_parq_ruin  if rct==1& alloca==1




summ ch_SIPAmel  if rct==1& alloca==0
summ ch_SIPAiso  if rct==1& alloca==0
summ ch_SIPAdel  if rct==1& alloca==0
summ ch_SIPAach  if rct==1& alloca==0
summ ch_SIPAsoc  if rct==1& alloca==0
summ ch_SIPAincwt  if rct==1& alloca==0
summ ch_SIPAaprd  if rct==1& alloca==0
summ ch_SIPAad  if rct==1& alloca==0
summ ch_SIPApd_cent  if rct==1& alloca==0
summ ch_SIPAts_cent  if rct==1& alloca==0
summ ch_SIPA_events  if rct==1& alloca==0
summ ch_monitor  if rct==1& alloca==0
summ ch_disclose  if rct==1& alloca==0
summ ch_solicit  if rct==1& alloca==0
summ ch_control if rct==1& alloca==0

summ ch_SIPAmel  if rct==1& alloca==1
summ ch_SIPAiso  if rct==1& alloca==1
summ ch_SIPAdel  if rct==1& alloca==1
summ ch_SIPAach  if rct==1& alloca==1
summ ch_SIPAsoc  if rct==1& alloca==1
summ ch_SIPAincwt  if rct==1& alloca==1
summ ch_SIPAaprd  if rct==1& alloca==1
summ ch_SIPAad  if rct==1& alloca==1
summ ch_SIPApd_cent  if rct==1& alloca==1
summ ch_SIPAts_cent  if rct==1& alloca==1
summ ch_SIPA_events  if rct==1& alloca==1
summ ch_monitor  if rct==1& alloca==1
summ ch_disclose  if rct==1& alloca==1
summ ch_solicit  if rct==1& alloca==1
summ ch_control if rct==1& alloca==1





****Table 9 & 10: Outcome change scores for the effectiveness evaluation (Part 1 & 2)

tabstat	ch_ghq	if 	rct==1	,	by(alloca)	statistics(mean	sd)
sdtest ch_ghq if rct==1, by(alloca)
ttest ch_ghq if rct==1, by(alloca) unequal


tabstat	ch_parq_gds	if 	rct==1	,	by(alloca)	statistics(mean	sd)
sdtest ch_parq_gds if rct==1, by(alloca)
ttest ch_parq_gds if rct==1, by(alloca)

tabstat	ch_parq_com	if 	rct==1	,	by(alloca)	statistics(mean	sd)
sdtest ch_parq_com if rct==1, by(alloca)
ttest ch_parq_com if rct==1, by(alloca) unequal

tabstat	ch_parq_prsl	if 	rct==1	,	by(alloca)	statistics(mean	sd)
sdtest ch_parq_prsl if rct==1, by(alloca)
ttest ch_parq_prsl if rct==1, by(alloca) unequal

tabstat	ch_parq_coh	if 	rct==1	,	by(alloca)	statistics(mean	sd)
sdtest ch_parq_coh if rct==1, by(alloca)
ttest ch_parq_coh if rct==1, by(alloca)

tabstat	ch_parq_sch	if 	rct==1	,	by(alloca)	statistics(mean	sd)
sdtest ch_parq_sch if rct==1, by(alloca)
ttest ch_parq_sch if rct==1, by(alloca)

tabstat	ch_parq_cnv	if 	rct==1	,	by(alloca)	statistics(mean	sd)
sdtest ch_parq_cnv if rct==1, by(alloca)
ttest ch_parq_cnv if rct==1, by(alloca) unequal

tabstat	ch_parq_eat	if 	rct==1	,	by(alloca)	statistics(mean	sd)
sdtest ch_parq_eat if rct==1, by(alloca)
ttest ch_parq_eat if rct==1, by(alloca) unequal

tabstat	ch_parq_malint	if 	rct==1	,	by(alloca)	statistics(mean	sd)
sdtest ch_parq_malint if rct==1, by(alloca)
ttest ch_parq_malint if rct==1, by(alloca)

tabstat	ch_parq_perf	if 	rct==1	,	by(alloca)	statistics(mean	sd)
sdtest ch_parq_perf if rct==1, by(alloca)
ttest ch_parq_perf if rct==1, by(alloca)

tabstat	ch_parq_ruin	if 	rct==1	,	by(alloca)	statistics(mean	sd)
sdtest ch_parq_ruin if rct==1, by(alloca)
ttest ch_parq_ruin if rct==1, by(alloca) unequal

tabstat	ch_SIPAmel	if 	rct==1	,	by(alloca)	statistics(mean	sd)
sdtest ch_SIPAmel if rct==1, by(alloca)
ttest ch_SIPAmel if rct==1, by(alloca) unequal

tabstat	ch_SIPAiso	if 	rct==1	,	by(alloca)	statistics(mean	sd)
sdtest ch_SIPAiso if rct==1, by(alloca)
ttest ch_SIPAiso if rct==1, by(alloca)

tabstat	ch_SIPAdel	if 	rct==1	,	by(alloca)	statistics(mean	sd)
sdtest ch_SIPAdel if rct==1, by(alloca)
ttest ch_SIPAdel if rct==1, by(alloca)

tabstat	ch_SIPAach	if 	rct==1	,	by(alloca)	statistics(mean	sd)
sdtest ch_SIPAach if rct==1, by(alloca)
ttest ch_SIPAach if rct==1, by(alloca) unequal

tabstat	ch_SIPAsoc	if 	rct==1	,	by(alloca)	statistics(mean	sd)
sdtest ch_SIPAsoc if rct==1, by(alloca)
ttest ch_SIPAsoc if rct==1, by(alloca) unequal

tabstat	ch_SIPAincwt	if 	rct==1	,	by(alloca)	statistics(mean	sd)
sdtest ch_SIPAincwt if rct==1, by(alloca)
ttest ch_SIPAincwt if rct==1, by(alloca) unequal

tabstat	ch_SIPAaprd	if 	rct==1	,	by(alloca)	statistics(mean	sd)
sdtest ch_SIPAaprd if rct==1, by(alloca)
ttest ch_SIPAaprd if rct==1, by(alloca) unequal

tabstat	ch_SIPAad	if 	rct==1	,	by(alloca)	statistics(mean	sd)
sdtest ch_SIPAad if rct==1, by(alloca)
ttest ch_SIPAad if rct==1, by(alloca) unequal

tabstat	ch_SIPApd_cent	if 	rct==1	,	by(alloca)	statistics(mean	sd)
sdtest ch_SIPApd_cent if rct==1, by(alloca)
ttest ch_SIPApd_cent if rct==1, by(alloca) unequal

tabstat	ch_SIPAts_cent	if 	rct==1	,	by(alloca)	statistics(mean	sd)
sdtest ch_SIPAts_cent if rct==1, by(alloca)
ttest ch_SIPAts_cent if rct==1, by(alloca) unequal

tabstat	ch_monitor	if 	rct==1	,	by(alloca)	statistics(mean	sd)
ttest ch_monitor if rct==1, by(alloca)

tabstat	ch_disclose	if 	rct==1	,	by(alloca)	statistics(mean	sd)
ttest ch_disclose if rct==1, by(alloca)

tabstat	ch_solicit	if 	rct==1	,	by(alloca)	statistics(mean	sd)
ttest ch_solicit if rct==1, by(alloca)

tabstat	ch_control	if 	rct==1	,	by(alloca)	statistics(mean	sd)
ttest ch_control if rct==1, by(alloca)

***ttests for these tables

reg ch_ghq alloca ab_parq_cnv
reg ch_parq_gds  alloca ab_parq_cnv
reg ch_parq_com  alloca ab_parq_cnv
reg ch_parq_prsl  alloca ab_parq_cnv
reg ch_parq_coh  alloca ab_parq_cnv
reg ch_parq_sch  alloca ab_parq_cnv
reg ch_parq_eat  alloca ab_parq_cnv
reg ch_parq_malint  alloca ab_parq_cnv
reg ch_parq_perf  alloca ab_parq_cnv
reg ch_parq_ruin  alloca ab_parq_cnv
reg ch_SIPAmel  alloca ab_parq_cnv
reg ch_SIPAiso  alloca ab_parq_cnv
reg ch_SIPAdel  alloca ab_parq_cnv
reg ch_SIPAach  alloca ab_parq_cnv
reg ch_SIPAaprd  alloca ab_parq_cnv
reg ch_SIPAsoc  alloca ab_parq_cnv
reg ch_SIPAincwt  alloca ab_parq_cnv
reg ch_SIPAad  alloca ab_parq_cnv
reg ch_SIPApd  alloca ab_parq_cnv
reg ch_SIPAts  alloca ab_parq_cnv
reg ch_monitor  alloca ab_parq_cnv
reg ch_disclose  alloca ab_parq_cnv
reg ch_solicit  alloca ab_parq_cnv
reg ch_control alloca ab_parq_cnv



***Higher change score= Better

***RCT Oucomes **ch_ghq ///
*ch_parq_gds 
*ch_parq_com 
*ch_parq_prsl 
*ch_parq_coh 
*ch_parq_sch 
*ch_parq_cnv 
*ch_parq_eat 
*ch_parq_malint 
*ch_parq_perf 
*ch_parq_ruin 
*ch_SIPAmel 
*ch_SIPAiso 
*ch_SIPAdel 
*ch_SIPAach 
*ch_SIPAaprd 
*ch_SIPAsoc 
*ch_SIPAinc 
*ch_SIPAincwt 
*ch_SIPAad 
*ch_SIPApd 
*ch_SIPAts 
*ch_monitor 
*ch_disclose 
*ch_solicit 
*ch_control


**Variation in change scores with programme & demographic characteristics 

reg ch_ghq alloca if rct==1
reg ch_ghq alloca female age i.paid ib1.relstatus i.nyoung if rct==1
reg ch_ghq alloca i.site if rct==1
reg ch_ghq alloca round if rct==1
reg ch_ghq alloca female age i.paid i.nyoung round i.site if rct==1

*interactions
reg ch_ghq alloca female 
est store a
reg ch_ghq alloca##female 
est store b
lrtest a b

reg ch_ghq alloca age
est store a
reg ch_ghq alloca##c.age
est store b
lrtest a b

reg ch_ghq alloca paid
est store a
reg ch_ghq alloca##paid
est store b
lrtest a b

reg ch_ghq alloca nyoung
est store a
reg ch_ghq alloca##c.nyoung
est store b
lrtest a b

reg ch_ghq alloca round
est store a
reg ch_ghq alloca##c.round
est store b
lrtest a b

reg ch_ghq alloca i.site
est store a
reg ch_ghq alloca##i.site
est store b
lrtest a b
**None for female, age, nyoung, round, or site

reg ch_parq_gds alloca 
reg ch_parq_gds alloca female age paid nyoung
reg ch_parq_gds alloca i.site 
reg ch_parq_gds alloca round
reg ch_parq_gds alloca female age paid nyoung round i.site


reg ch_parq_gds alloca female
est store a
reg ch_parq_gds alloca##female 
est store b
lrtest a b

reg ch_parq_gds alloca age
est store a
reg ch_parq_gds alloca##c.age
est store b
lrtest a b

reg ch_parq_gds alloca paid
est store a
reg ch_parq_gds alloca##paid
est store b
lrtest a b

reg ch_parq_gds alloca nyoung
est store a
reg ch_parq_gds alloca##c.nyoung
est store b
lrtest a b

reg ch_parq_gds alloca round
est store a
reg ch_parq_gds alloca##c.round
est store b
lrtest a b

reg ch_parq_gds alloca i.site
est store a
reg ch_parq_gds alloca##i.site
est store b
lrtest a b
**None for female, age, nyoung, round, or site

**************
*************
************
*************


reg ch_parq_com alloca 
reg ch_parq_com alloca female age paid nyoung
reg ch_parq_com alloca i.site 
reg ch_parq_com alloca round
reg ch_parq_com alloca female age paid nyoung round i.site


reg ch_parq_com alloca female
est store a
reg ch_parq_com alloca##female 
est store b
lrtest a b

reg ch_parq_com alloca age
est store a
reg ch_parq_com alloca##c.age
est store b
lrtest a b

reg ch_parq_com alloca paid
est store a
reg ch_parq_com alloca##paid
est store b
lrtest a b

reg ch_parq_com alloca nyoung
est store a
reg ch_parq_com alloca##c.nyoung
est store b
lrtest a b

reg ch_parq_com alloca round
est store a
reg ch_parq_com alloca##c.round
est store b
lrtest a b

reg ch_parq_com alloca i.site
est store a
reg ch_parq_com alloca##i.site
est store b
lrtest a b
**None for female, age, nyoung, round, or site


**************
*************
************
*************


reg ch_parq_prsl alloca 
reg ch_parq_prsl alloca female age paid nyoung
reg ch_parq_prsl alloca i.site 
reg ch_parq_prsl alloca round
reg ch_parq_prsl alloca female age paid nyoung round i.site


reg ch_parq_prsl alloca female
est store a
reg ch_parq_prsl alloca##female 
est store b
lrtest a b

reg ch_parq_prsl alloca age
est store a
reg ch_parq_prsl alloca##c.age
est store b
lrtest a b

reg ch_parq_prsl alloca paid
est store a
reg ch_parq_prsl alloca##paid
est store b
lrtest a b

reg ch_parq_prsl alloca nyoung
est store a
reg ch_parq_prsl alloca##c.nyoung
est store b
lrtest a b

reg ch_parq_prsl alloca round
est store a
reg ch_parq_prsl alloca##c.round
est store b
lrtest a b

reg ch_parq_prsl alloca i.site
est store a
reg ch_parq_prsl alloca##i.site
est store b
lrtest a b
**None for female, age, nyoung, round, or site

**************
*************
************
*************



reg ch_parq_coh alloca 
reg ch_parq_coh alloca female age paid nyoung
reg ch_parq_coh alloca i.site 
reg ch_parq_coh alloca round
reg ch_parq_coh alloca female age paid nyoung round i.site

reg ch_parq_coh alloca female
est store a
reg ch_parq_coh alloca##female 
est store b
lrtest a b

reg ch_parq_coh alloca age
est store a
reg ch_parq_coh alloca##c.age
est store b
lrtest a b
**!!!!
reg ch_parq_coh age if alloca==1
reg ch_parq_coh age if alloca==0


reg ch_parq_coh alloca paid
est store a
reg ch_parq_coh alloca##paid
est store b
lrtest a b

reg ch_parq_coh alloca nyoung
est store a
reg ch_parq_coh alloca##c.nyoung
est store b
lrtest a b

reg ch_parq_coh alloca round
est store a
reg ch_parq_coh alloca##c.round
est store b
lrtest a b
**!*
reg ch_parq_coh round if alloca==0
reg ch_parq_coh round if alloca==1


reg ch_parq_coh alloca i.site
est store a
reg ch_parq_coh alloca##i.site
est store b
lrtest a b
**None for female, age, nyoung, round, or site

**************
*************
************
*************

reg ch_parq_sch alloca 
reg ch_parq_sch alloca female age paid nyoung
reg ch_parq_sch alloca i.site 
reg ch_parq_sch alloca round
reg ch_parq_sch alloca female age paid nyoung round i.site

reg ch_parq_sch alloca female
est store a
reg ch_parq_sch alloca##female 
est store b
lrtest a b

reg ch_parq_sch alloca age
est store a
reg ch_parq_sch alloca##c.age
est store b
lrtest a b

reg ch_parq_sch alloca paid
est store a
reg ch_parq_sch alloca##paid
est store b
lrtest a b

reg ch_parq_sch alloca nyoung
est store a
reg ch_parq_sch alloca##c.nyoung
est store b
lrtest a b

reg ch_parq_sch alloca round
est store a
reg ch_parq_sch alloca##c.round
est store b
lrtest a b

reg ch_parq_sch alloca i.site
est store a
reg ch_parq_sch alloca##i.site
est store b
lrtest a b
**None for female, age, nyoung, round, or site

**************
*************
************
*************

reg ch_parq_cnv alloca 
reg ch_parq_cnv alloca female age paid nyoung
reg ch_parq_cnv alloca i.site 
reg ch_parq_cnv alloca round
reg ch_parq_cnv alloca female age paid nyoung round i.site

reg ch_parq_cnv alloca female
est store a
reg ch_parq_cnv alloca##female 
est store b
lrtest a b

reg ch_parq_cnv alloca age
est store a
reg ch_parq_cnv alloca##c.age
est store b
lrtest a b

reg ch_parq_cnv alloca paid
est store a
reg ch_parq_cnv alloca##paid
est store b
lrtest a b

reg ch_parq_cnv alloca nyoung
est store a
reg ch_parq_cnv alloca##c.nyoung
est store b
lrtest a b

reg ch_parq_cnv alloca round
est store a
reg ch_parq_cnv alloca##c.round
est store b
lrtest a b

reg ch_parq_cnv alloca i.site
est store a
reg ch_parq_cnv alloca##i.site
est store b
lrtest a b
**None for female, age, nyoung, round, or site

**************
*************
************
*************

reg ch_parq_eat alloca 
reg ch_parq_eat alloca female age paid nyoung
reg ch_parq_eat alloca i.site 
reg ch_parq_eat alloca round
reg ch_parq_eat alloca female age paid nyoung round i.site

reg ch_parq_eat alloca female
est store a
reg ch_parq_eat alloca##female 
est store b
lrtest a b

reg ch_parq_eat alloca age
est store a
reg ch_parq_eat alloca##c.age
est store b
lrtest a b

reg ch_parq_eat alloca paid
est store a
reg ch_parq_eat alloca##paid
est store b
lrtest a b

reg ch_parq_eat alloca nyoung
est store a
reg ch_parq_eat alloca##c.nyoung
est store b
lrtest a b

reg ch_parq_eat alloca round
est store a
reg ch_parq_eat alloca##c.round
est store b
lrtest a b

reg ch_parq_eat alloca i.site
est store a
reg ch_parq_eat alloca##i.site
est store b
lrtest a b
**None for female, age, nyoung, round, or site

**************
*************
************
*************

reg ch_parq_malint alloca 
reg ch_parq_malint alloca female age paid nyoung
reg ch_parq_malint alloca i.site 
reg ch_parq_malint alloca round
reg ch_parq_malint alloca female age paid nyoung round i.site

reg ch_parq_malint alloca female
est store a
reg ch_parq_malint alloca##female 
est store b
lrtest a b

reg ch_parq_malint alloca age
est store a
reg ch_parq_malint alloca##c.age
est store b
lrtest a b

reg ch_parq_malint alloca paid
est store a
reg ch_parq_malint alloca##paid
est store b
lrtest a b

reg ch_parq_malint alloca nyoung
est store a
reg ch_parq_malint alloca##c.nyoung
est store b
lrtest a b

reg ch_parq_malint alloca round
est store a
reg ch_parq_malint alloca##c.round
est store b
lrtest a b

reg ch_parq_malint alloca i.site
est store a
reg ch_parq_malint  alloca##i.site
est store b
lrtest a b
**None for female, age, nyoung, round, or site

**************
*************
************
*************


reg ch_parq_perf alloca 
reg ch_parq_perf alloca female age paid nyoung
reg ch_parq_perf alloca i.site 
reg ch_parq_perf alloca round
reg ch_parq_perf alloca female age paid nyoung round i.site

reg ch_parq_perf alloca female
est store a
reg ch_parq_perf alloca##female 
est store b
lrtest a b

reg ch_parq_perf alloca age
est store a
reg ch_parq_perf alloca##c.age
est store b
lrtest a b

reg ch_parq_perf alloca paid
est store a
reg ch_parq_perf alloca##paid
est store b
lrtest a b

reg ch_parq_perf alloca nyoung
est store a
reg ch_parq_perf alloca##c.nyoung
est store b
lrtest a b

reg ch_parq_perf alloca round
est store a
reg ch_parq_perf alloca##c.round
est store b
lrtest a b

reg ch_parq_perf alloca i.site
est store a
reg ch_parq_perf alloca##i.site
est store b
lrtest a b
**None for female, age, nyoung, round, or site

**************
*************
************
*************

reg ch_parq_ruin alloca 
reg ch_parq_ruin alloca female age paid nyoung
reg ch_parq_ruin alloca i.site 
reg ch_parq_ruin alloca round
reg ch_parq_ruin alloca female age paid nyoung round i.site

reg ch_parq_ruin alloca female
est store a
reg ch_parq_ruin alloca##female 
est store b
lrtest a b

reg ch_parq_ruin alloca age
est store a
reg ch_parq_ruin alloca##c.age
est store b
lrtest a b

reg ch_parq_ruin alloca paid
est store a
reg ch_parq_ruin alloca##paid
est store b
lrtest a b

reg ch_parq_ruin alloca nyoung
est store a
reg ch_parq_ruin alloca##c.nyoung
est store b
lrtest a b

reg ch_parq_ruin alloca round
est store a
reg ch_parq_ruin alloca##c.round
est store b
lrtest a b

reg ch_parq_ruin alloca i.site
est store a
reg ch_parq_ruin alloca##i.site
est store b
lrtest a b
**None for female, age, nyoung, round, or site

**************
*************
************
*************

reg ch_SIPAmel  alloca 
reg ch_SIPAmel  alloca female age paid nyoung
reg ch_SIPAmel  alloca i.site 
reg ch_SIPAmel alloca round
reg ch_SIPAmel  alloca female age paid nyoung round i.site

reg ch_SIPAmel  alloca female
est store a
reg ch_SIPAmel  alloca##female 
est store b
lrtest a b

reg ch_SIPAmel alloca age
est store a
reg ch_SIPAmel  alloca##c.age
est store b
lrtest a b

reg ch_SIPAmel  alloca paid
est store a
reg ch_SIPAmel  alloca##paid
est store b
lrtest a b

reg ch_SIPAmel  alloca nyoung
est store a
reg ch_SIPAmel  alloca##c.nyoung
est store b
lrtest a b

reg ch_SIPAmel  alloca round
est store a
reg ch_SIPAmel  alloca##c.round
est store b
lrtest a b

reg ch_SIPAmel alloca i.site
est store a
reg ch_SIPAmel alloca##i.site
est store b
lrtest a b
**None for female, age, nyoung, round, or site


**************
*************
************
*************


reg ch_SIPAiso  alloca 
reg ch_SIPAiso  alloca female age paid nyoung
reg ch_SIPAiso  alloca i.site 
reg ch_SIPAiso  alloca round 
reg ch_SIPAiso  alloca female age paid nyoung round i.site

reg ch_SIPAiso  alloca female
est store a
reg ch_SIPAiso  alloca##female 
est store b
lrtest a b

reg ch_SIPAiso  alloca age
est store a
reg ch_SIPAiso  alloca##c.age
est store b
lrtest a b

reg ch_SIPAiso alloca paid
est store a
reg ch_SIPAiso  alloca##paid
est store b
lrtest a b

reg ch_SIPAiso  alloca nyoung
est store a
reg ch_SIPAiso  alloca##c.nyoung
est store b
lrtest a b

reg ch_SIPAiso  alloca round
est store a
reg ch_SIPAiso  alloca##c.round
est store b
lrtest a b

reg ch_SIPAiso  alloca i.site
est store a
reg ch_SIPAiso alloca##i.site
est store b
lrtest a b
**None for female, age, nyoung, round, or site

**************
*************
************
*************

reg ch_SIPAdel  alloca 
reg ch_SIPAdel  alloca female age paid nyoung
reg ch_SIPAdel  alloca i.site 
reg ch_SIPAdel  alloca round
reg ch_SIPAdel  alloca female age paid nyoung round i.site

reg ch_SIPAdel  alloca female
est store a
reg ch_SIPAdel  alloca##female 
est store b
lrtest a b

reg ch_SIPAdel  alloca age
est store a
reg ch_SIPAdel  alloca##c.age
est store b
lrtest a b

reg ch_SIPAdel  alloca paid
est store a
reg ch_SIPAdel  alloca##paid
est store b
lrtest a b

reg ch_SIPAdel  alloca nyoung
est store a
reg ch_SIPAdel  alloca##c.nyoung
est store b
lrtest a b

reg ch_SIPAdel  alloca round
est store a
reg ch_SIPAdel  alloca##c.round
est store b
lrtest a b

reg ch_SIPAdel  alloca i.site
est store a
reg ch_SIPAdel alloca##i.site
est store b
lrtest a b
**None for female, age, nyoung, round, or site


**************
*************
************
*************

reg ch_SIPAach  alloca 
reg ch_SIPAach  alloca female age paid nyoung
reg ch_SIPAach  alloca i.site 
reg ch_SIPAach  alloca round
reg ch_SIPAach  alloca female age paid nyoung round i.site

reg ch_SIPAach  alloca female
est store a
reg ch_SIPAach  alloca##female 
est store b
lrtest a b

reg ch_SIPAach  alloca age
est store a
reg ch_SIPAach  alloca##c.age
est store b
lrtest a b

reg ch_SIPAach  alloca paid
est store a
reg ch_SIPAach  alloca##paid
est store b
lrtest a b

reg ch_SIPAach  alloca nyoung
est store a
reg ch_SIPAach  alloca##c.nyoung
est store b
lrtest a b

reg ch_SIPAach  alloca round
est store a
reg ch_SIPAach  alloca##c.round
est store b
lrtest a b

reg ch_SIPAach alloca i.site
est store a
reg ch_SIPAach alloca##i.site
est store b
lrtest a b
**None for female, age, nyoung, round, or site

**************
*************
************
*************

reg ch_SIPAaprd alloca 
reg ch_SIPAaprd alloca female age paid nyoung
reg ch_SIPAaprd alloca i.site 
reg ch_SIPAaprd alloca round
reg ch_SIPAaprd alloca female age paid nyoung round i.site

reg ch_SIPAaprd alloca female
est store a
reg ch_SIPAaprd alloca##female 
est store b
lrtest a b

reg ch_SIPAaprd alloca age
est store a
reg ch_SIPAaprd alloca##c.age
est store b
lrtest a b

reg ch_SIPAaprd alloca paid
est store a
reg ch_SIPAaprd alloca##paid
est store b
lrtest a b

reg ch_SIPAaprd alloca nyoung
est store a
reg ch_SIPAaprd alloca##c.nyoung
est store b
lrtest a b

reg ch_SIPAaprd alloca round
est store a
reg ch_SIPAaprd alloca##c.round
est store b
lrtest a b

reg ch_SIPAaprd alloca i.site
est store a
reg ch_SIPAaprd alloca##i.site
est store b
lrtest a b
**None for female, age, nyoung, round, or site

**************
*************
************
*************


reg ch_SIPAsoc  alloca 
reg ch_SIPAsoc  alloca female age paid nyoung
reg ch_SIPAsoc  alloca i.site 
reg ch_SIPAsoc  alloca round
reg ch_SIPAsoc  alloca female age paid nyoung round i.site


reg ch_SIPAsoc  alloca female
est store a
reg ch_SIPAsoc  alloca##female 
est store b
lrtest a b

reg ch_SIPAsoc  alloca age
est store a
reg ch_SIPAsoc  alloca##c.age
est store b
lrtest a b

reg ch_SIPAsoc  alloca paid
est store a
reg ch_SIPAsoc  alloca##paid
est store b
lrtest a b

reg ch_SIPAsoc  alloca nyoung
est store a
reg ch_SIPAsoc  alloca##c.nyoung
est store b
lrtest a b

reg ch_SIPAsoc  alloca round
est store a
reg ch_SIPAsoc  alloca##c.round
est store b
lrtest a b

reg ch_SIPAsoc  alloca i.site
est store a
reg ch_SIPAsoc alloca##i.site
est store b
lrtest a b
**None for female, age, nyoung, round, or site

**************
*************
************
*************


reg ch_SIPAincwt alloca 
reg ch_SIPAincwt alloca female age paid nyoung
reg ch_SIPAincwt alloca i.site 
reg ch_SIPAincwt alloca round
reg ch_SIPAincwt alloca female age paid nyoung round i.site


reg ch_SIPAincwt alloca female
est store a
reg ch_SIPAincwt alloca##female 
est store b
lrtest a b

reg ch_SIPAincwt alloca age
est store a
reg ch_SIPAincwt alloca##c.age
est store b
lrtest a b

reg ch_SIPAincwt alloca paid
est store a
reg ch_SIPAincwt alloca##paid
est store b
lrtest a b

reg ch_SIPAincwt alloca nyoung
est store a
reg ch_SIPAincwt alloca##c.nyoung
est store b
lrtest a b

reg ch_SIPAincwt alloca round
est store a
reg ch_SIPAincwt alloca##c.round
est store b
lrtest a b

reg ch_SIPAincwt alloca i.site
est store a
reg ch_SIPAincwt alloca##i.site
est store b
lrtest a b
**None for female, age, nyoung, round, or site

**************
*************
************
*************

reg ch_SIPAad  alloca 
reg ch_SIPAad  alloca female age paid nyoung
reg ch_SIPAad  alloca i.site 
reg ch_SIPAad  alloca round
reg ch_SIPAad  alloca female age paid nyoung round i.site

reg ch_SIPAad  alloca female
est store a
reg ch_SIPAad  alloca##female 
est store b
lrtest a b

reg ch_SIPAad  alloca age
est store a
reg ch_SIPAad  alloca##c.age
est store b
lrtest a b

reg ch_SIPAad  alloca paid
est store a
reg ch_SIPAad  alloca##paid
est store b
lrtest a b

reg ch_SIPAad  alloca nyoung
est store a
reg ch_SIPAad  alloca##c.nyoung
est store b
lrtest a b

reg ch_SIPAad  alloca round
est store a
reg ch_SIPAad  alloca##c.round
est store b
lrtest a b

reg ch_SIPAad alloca i.site
est store a
reg ch_SIPAad alloca##i.site
est store b
lrtest a b



**************
*************
************
*************


reg ch_SIPApd  alloca 
reg ch_SIPApd  alloca female age paid nyoung
reg ch_SIPApd  alloca i.site 
reg ch_SIPApd  alloca round
reg ch_SIPApd  alloca female age paid nyoung round i.site

reg ch_SIPApd  alloca female
est store a
reg ch_SIPApd  alloca##female 
est store b
lrtest a b

reg ch_SIPApd alloca age
est store a
reg ch_SIPApd alloca##c.age
est store b
lrtest a b

reg ch_SIPApd  alloca paid
est store a
reg ch_SIPApd alloca##paid
est store b
lrtest a b

reg ch_SIPApd alloca nyoung
est store a
reg ch_SIPApd  alloca##c.nyoung
est store b
lrtest a b

reg ch_SIPApd  alloca round
est store a
reg ch_SIPApd  alloca##c.round
est store b
lrtest a b

reg ch_SIPApd  alloca i.site
est store a
reg ch_SIPApd alloca##i.site
est store b
lrtest a b

**************
*************
************
*************


reg ch_SIPAts  alloca 
reg ch_SIPAts  alloca female age paid nyoung
reg ch_SIPAts  alloca i.site 
reg ch_SIPAts  alloca round
reg ch_SIPAts  alloca female age paid nyoung round i.site


reg ch_SIPAts alloca female
est store a
reg ch_SIPAts  alloca##female 
est store b
lrtest a b

reg ch_SIPAts  alloca age
est store a
reg ch_SIPAts  alloca##c.age
est store b
lrtest a b

reg ch_SIPAts  alloca paid
est store a
reg ch_SIPAts alloca##paid
est store b
lrtest a b

reg ch_SIPAts alloca nyoung
est store a
reg ch_SIPAts alloca##c.nyoung
est store b
lrtest a b

reg ch_SIPAts  alloca round
est store a
reg ch_SIPAts alloca##c.round
est store b
lrtest a b

reg ch_SIPAts alloca i.site
est store a
reg ch_SIPAts alloca##i.site
est store b
lrtest a b


**************
*************
************
*************

reg ch_monitor  alloca 
reg ch_monitor  alloca female age paid nyoung
reg ch_monitor  alloca i.site 
reg ch_monitor  alloca round
reg ch_monitor  alloca female age paid nyoung round i.site

reg ch_monitor  alloca female
est store a
reg ch_monitor  alloca##female 
est store b
lrtest a b

reg ch_monitor  alloca age
est store a
reg ch_monitor  alloca##c.age
est store b
lrtest a b


reg ch_monitor  alloca paid
est store a
reg ch_monitor  alloca##paid
est store b
lrtest a b

reg ch_monitor  alloca nyoung
est store a
reg ch_monitor  alloca##c.nyoung
est store b
lrtest a b

reg ch_monitor  alloca round
est store a
reg ch_monitor  alloca##c.round
est store b
lrtest a b

reg ch_monitor  alloca i.site
est store a
reg ch_monitor alloca##i.site
est store b
lrtest a b

**************
*************
************
*************


reg ch_disclose alloca 
reg ch_disclose alloca female age paid nyoung
reg ch_disclose alloca i.site 
reg ch_disclose alloca round
reg ch_disclose alloca female age paid nyoung round i.site


reg ch_disclose alloca female
est store a
reg ch_disclose alloca##female 
est store b
lrtest a b

reg ch_disclose alloca age
est store a
reg ch_disclose alloca##c.age
est store b
lrtest a b

reg ch_disclose alloca paid
est store a
reg ch_disclose alloca##paid
est store b
lrtest a b

reg ch_disclose alloca nyoung
est store a
reg ch_disclose alloca##c.nyoung
est store b
lrtest a b

reg ch_disclose alloca round
est store a
reg ch_disclose alloca##c.round
est store b
lrtest a b

reg ch_disclose alloca i.site
est store a
reg ch_disclose alloca##i.site
est store b
lrtest a b

**************
*************
************
*************


reg ch_solicit  alloca 
reg ch_solicit  alloca female age paid nyoung
reg ch_solicit  alloca i.site 
reg ch_solicit  alloca round
reg ch_solicit  alloca female age paid nyoung round i.site


reg ch_solicit  alloca female
est store a
reg ch_solicit  alloca##female 
est store b
lrtest a b

reg ch_solicit  alloca age
est store a
reg ch_solicit  alloca##c.age
est store b
lrtest a b
*!*

reg ch_solicit  alloca i.paid
est store a
reg ch_solicit  alloca##paid
est store b
lrtest a b

reg ch_solicit  alloca nyoung
est store a
reg ch_solicit  alloca##c.nyoung
est store b
lrtest a b

reg ch_solicit  alloca round
est store a
reg ch_solicit  alloca##c.round
est store b
lrtest a b

reg ch_solicit  alloca i.site
est store a
reg ch_solicit alloca##i.site
est store b
lrtest a b


**************
*************
************
*************


reg ch_control  alloca 
reg ch_control  alloca female age paid nyoung
reg ch_control  alloca i.site 
reg ch_control  alloca round
reg ch_control  alloca female age paid nyoung round i.site


reg ch_control  alloca female
est store a
reg ch_control  alloca##female 
est store b
lrtest a b

reg ch_control alloca age
est store a
reg ch_control  alloca##c.age
est store b
lrtest a b
*!*

reg ch_control  alloca paid
est store a
reg ch_control  alloca##paid
est store b
lrtest a b

reg ch_control  alloca nyoung
est store a
reg ch_control  alloca##c.nyoung
est store b
lrtest a b

reg ch_control  alloca round
est store a
reg ch_control  alloca##c.round
est store b
lrtest a b

reg ch_control  alloca i.site
est store a
reg ch_control alloca##i.site
est store b
lrtest a b




**************
***************
****************


****Pre-post analysis


gen pp_ch_ghq=af1_ghq-af2_ghq
gen pp_ch_parq_gds=af1_parq_gds-af2_parq_gds
gen pp_ch_parq_com=af1_parq_com-af2_parq_com
gen pp_ch_parq_prsl=af1_parq_prsl-af2_parq_prsl
gen pp_ch_parq_coh=af1_parq_coh-af2_parq_coh
gen pp_ch_parq_sch=af1_parq_sch-af2_parq_sch
gen pp_ch_parq_cnv=af1_parq_cnv-af2_parq_cnv
gen pp_ch_parq_eat=af1_parq_eat-af2_parq_eat
gen pp_ch_parq_malint=af1_parq_malint-af2_parq_malint
gen pp_ch_parq_perf=af1_parq_perf-af2_parq_perf
gen pp_ch_parq_ruin=af1_parq_ruin-af2_parq_ruin
gen pp_ch_SIPArawmel=af1_SIPArawmel-af2_SIPArawmel
gen pp_ch_SIPAmel=af1_SIPAmel-af2_SIPAmel
gen pp_ch_SIPArawiso=af1_SIPArawiso-af2_SIPArawiso
gen pp_ch_SIPAiso=af1_SIPAiso-af2_SIPAiso
gen pp_ch_SIPArawdel=af1_SIPArawdel-af2_SIPArawdel
gen pp_ch_SIPAdel=af1_SIPAdel-af2_SIPAdel
gen pp_ch_SIPArawach=af1_SIPArawach-af2_SIPArawach
gen pp_ch_SIPAach=af1_SIPAach-af2_SIPAach
gen pp_ch_SIPArawaprd=af1_SIPArawaprd-af2_SIPArawaprd
gen pp_ch_SIPAaprd=af1_SIPAaprd-af2_SIPAaprd
gen pp_ch_SIPArawsoc=af1_SIPArawsoc-af2_SIPArawsoc
gen pp_ch_SIPAsoc=af1_SIPAsoc-af2_SIPAsoc
gen pp_ch_SIPArawinc=af1_SIPArawinc-af2_SIPArawinc
gen pp_ch_SIPArawincwt=af1_SIPArawincwt-af2_SIPArawincwt
gen pp_ch_SIPAinc=af1_SIPAinc-af2_SIPAinc
gen pp_ch_SIPAincwt=af1_SIPAincwt-af2_SIPAincwt
gen pp_ch_SIPArawad=af1_SIPArawad-af2_SIPArawad
gen pp_ch_SIPAad=af1_SIPAad-af2_SIPAad
gen pp_ch_SIPArawpd=af1_SIPArawpd-af2_SIPArawpd
gen pp_ch_SIPApd=af1_SIPApd-af2_SIPApd
gen pp_ch_SIPArawts=af1_SIPArawts-af2_SIPArawts
gen pp_ch_SIPAts=af1_SIPAts-af2_SIPAts
gen pp_ch_SIPAtsrating=af1_SIPAtsrating-af2_SIPAtsrating
gen pp_ch_SIPAaprdrating=af1_SIPAaprdrating-af2_SIPAaprdrating
gen pp_ch_SIPApdrating=af1_SIPApdrating-af2_SIPApdrating
gen pp_ch_SIPAadrating=af1_SIPAadrating-af2_SIPAadrating
gen pp_ch_SIPA_events=af1_SIPA_events-af2_SIPA_events
gen pp_ch_monitor=af1_monitor-af2_monitor
gen pp_ch_disclose=af1_disclose-af2_disclose
gen pp_ch_solicit=af1_solicit-af2_solicit
gen pp_ch_control=af1_control-af2_control



replace pp_ch_ghq= ch_ghq if alloca==1
replace pp_ch_parq_gds= ch_parq_gds if alloca==1
replace pp_ch_parq_com= ch_parq_com if alloca==1
replace pp_ch_parq_prsl= ch_parq_prsl if alloca==1
replace pp_ch_parq_coh= ch_parq_coh if alloca==1
replace pp_ch_parq_sch= ch_parq_sch if alloca==1
replace pp_ch_parq_cnv= ch_parq_cnv if alloca==1
replace pp_ch_parq_eat= ch_parq_eat if alloca==1
replace pp_ch_parq_malint= ch_parq_malint if alloca==1
replace pp_ch_parq_perf= ch_parq_perf if alloca==1
replace pp_ch_parq_ruin= ch_parq_ruin if alloca==1
replace pp_ch_SIPAmel= ch_SIPAmel if alloca==1
replace pp_ch_SIPAiso= ch_SIPAiso if alloca==1
replace pp_ch_SIPAdel= ch_SIPAdel if alloca==1
replace pp_ch_SIPAach= ch_SIPAach if alloca==1
replace pp_ch_SIPAaprd= ch_SIPAaprd if alloca==1
replace pp_ch_SIPAsoc= ch_SIPAsoc if alloca==1
replace pp_ch_SIPAincwt= ch_SIPAincwt if alloca==1
replace pp_ch_SIPAad= ch_SIPAad if alloca==1
replace pp_ch_SIPApd= ch_SIPApd if alloca==1
replace pp_ch_SIPAts= ch_SIPAts if alloca==1
replace pp_ch_SIPA_events= ch_SIPA_events if alloca==1
replace pp_ch_monitor= ch_monitor if alloca==1
replace pp_ch_disclose= ch_disclose if alloca==1
replace pp_ch_solicit= ch_solicit if alloca==1
replace pp_ch_control= ch_control if alloca==1



****************************
*****Pre-post analysis******

*Variation with Programme attendance
*Session plan adherence
*Leader Observation tool
*Group size

ta attend_patt
ta attend_wk

recode attend_wk (0=0) (1/4=1) (5/7=2) (8=3),gen(attend_group)
label define attend_group 0 "None" 1 "1 to 4" 2 "5 to 7" 3 "All 8"
label values attend_group attend_group
 
 
reg pp_ch_ghq attend_wk
reg pp_ch_ghq i.attend_group

table attend_gr , contents(mean pp_ch_parq_gds count pp_ch_parq_gds )
reg pp_ch_parq_gds attend_wk, b
reg pp_ch_parq_gds i.attend_group

table attend_gr , contents(mean pp_ch_parq_com count pp_ch_parq_com )
reg pp_ch_parq_com attend_wk, b
reg pp_ch_parq_com i.attend_group

table attend_gr , contents(mean pp_ch_parq_prsl count pp_ch_parq_prsl )
reg pp_ch_parq_prsl attend_wk, b
reg pp_ch_parq_prsl i.attend_group

table attend_gr , contents(mean pp_ch_parq_coh count pp_ch_parq_coh )
reg pp_ch_parq_coh attend_wk, b
reg pp_ch_parq_coh i.attend_group

table attend_gr , contents(mean pp_ch_parq_sch count pp_ch_parq_sch )
reg pp_ch_parq_sch attend_wk, b
reg pp_ch_parq_sch i.attend_group

table attend_gr , contents(mean pp_ch_parq_cnv count pp_ch_parq_cnv )
reg pp_ch_parq_cnv attend_wk, b
reg pp_ch_parq_cnv i.attend_group

table attend_gr , contents(mean pp_ch_parq_eat count pp_ch_parq_eat )
reg pp_ch_parq_eat attend_wk, b
reg pp_ch_parq_eat i.attend_group

table attend_gr , contents(mean pp_ch_parq_malint count pp_ch_parq_malint )
reg pp_ch_parq_malint attend_wk, b
reg pp_ch_parq_malint i.attend_group

table attend_gr , contents(mean pp_ch_parq_perf count pp_ch_parq_perf )
reg pp_ch_parq_perf attend_wk, b
reg pp_ch_parq_perf i.attend_group

table attend_gr , contents(mean pp_ch_parq_ruin count pp_ch_parq_ruin )
reg pp_ch_parq_ruin attend_wk, b
reg pp_ch_parq_ruin i.attend_group

table attend_gr , contents(mean pp_ch_SIPAmel count pp_ch_SIPAmel )
reg pp_ch_SIPAmel attend_wk, b
reg pp_ch_SIPAmel i.attend_group

table attend_gr , contents(mean pp_ch_SIPAiso count pp_ch_SIPAiso )
reg pp_ch_SIPAiso attend_wk, b
reg pp_ch_SIPAiso i.attend_group

table attend_gr , contents(mean pp_ch_SIPAdel count pp_ch_SIPAdel )
reg pp_ch_SIPAdel attend_wk,b
reg pp_ch_SIPAdel i.attend_group

table attend_gr , contents(mean pp_ch_SIPAach count pp_ch_SIPAach )
reg pp_ch_SIPAach attend_wk, b
reg pp_ch_SIPAach i.attend_group

table attend_gr , contents(mean pp_ch_SIPAaprd count pp_ch_SIPAaprd )
reg pp_ch_SIPAaprd attend_wk, b
reg pp_ch_SIPAaprd i.attend_group

table attend_gr , contents(mean pp_ch_SIPAsoc count pp_ch_SIPAsoc )
reg pp_ch_SIPAsoc attend_wk, b
reg pp_ch_SIPAsoc i.attend_group

table attend_gr , contents(mean pp_ch_SIPAincwt count pp_ch_SIPAincwt )
reg pp_ch_SIPAincwt attend_wk, b
reg pp_ch_SIPAincwt i.attend_group

table attend_gr , contents(mean pp_ch_SIPAad count pp_ch_SIPAad )
reg pp_ch_SIPAad attend_wk, b
reg pp_ch_SIPAad i.attend_group

table attend_gr , contents(mean pp_ch_SIPApd count pp_ch_SIPApd )
reg pp_ch_SIPApd attend_wk, b
reg pp_ch_SIPApd i.attend_group

table attend_gr , contents(mean pp_ch_SIPAts count pp_ch_SIPAts )
reg pp_ch_SIPAts attend_wk, b
reg pp_ch_SIPAts i.attend_group

table attend_gr , contents(mean pp_ch_monitor count pp_ch_monitor )
reg pp_ch_monitor attend_wk, b
reg pp_ch_monitor i.attend_group

table attend_gr , contents(mean pp_ch_disclose count pp_ch_disclose )
reg pp_ch_disclose attend_wk, b
reg pp_ch_disclose i.attend_group

table attend_gr , contents(mean pp_ch_solicit count pp_ch_solicit )
reg pp_ch_solicit attend_wk, b
reg pp_ch_solicit i.attend_group

table attend_gr , contents(mean pp_ch_control count pp_ch_control )
reg pp_ch_control attend_wk, b
reg pp_ch_control i.attend_group

table attend_gr , contents(mean pp_ch_SIPA_events count pp_ch_SIPA_events )
reg pp_ch_SIPA_events attend_wk, b
reg pp_ch_SIPA_events i.attend_group


***tables for public health agency (PHA) summary

*************Cohen's D table

**Parent

cohend af1_ghq alloca if rct==1
cohend af1_SIPAsoc alloca if rct==1
cohend af1_SIPAinc alloca if rct==1
cohend af1_SIPApd alloca if rct==1
cohend af1_SIPAts alloca if rct==1
cohend af1_control alloca if rct==1
cohend af1_monitor alloca if rct==1
cohend af1_solicit alloca if rct==1

reg af1_ghq alloca if rct==1, b 
reg af1_SIPAsoc alloca if rct==1, b
reg af1_SIPAinc alloca if rct==1, b
reg af1_SIPApd alloca if rct==1, b
reg af1_SIPAts alloca if rct==1, b
reg af1_control alloca if rct==1, b
reg af1_monitor alloca if rct==1, b
reg af1_solicit alloca if rct==1, b

***Family

cohend af1_parq_gds alloca if rct==1
cohend af1_parq_sch alloca if rct==1
cohend af1_parq_eat alloca if rct==1
cohend af1_SIPAaprd alloca if rct==1
cohend af1_parq_com alloca if rct==1
cohend af1_parq_prsl alloca if rct==1
cohend af1_parq_coh alloca if rct==1
cohend af1_parq_malint alloca if rct==1
cohend af1_parq_ruin alloca if rct==1
cohend af1_parq_perf alloca if rct==1
cohend af1_parq_cnv alloca if rct==1

reg af1_parq_gds alloca  if rct==1, b
reg af1_parq_sch alloca if rct==1, b
reg af1_parq_eat alloca if rct==1, b
reg af1_SIPAaprd alloca if rct==1, b
reg af1_parq_com alloca if rct==1, b
reg af1_parq_prsl alloca if rct==1, b
reg af1_parq_coh alloca if rct==1, b
reg af1_parq_malint alloca if rct==1, b
reg af1_parq_ruin alloca if rct==1, b
reg af1_parq_perf alloca if rct==1, b
reg af1_parq_cnv alloca if rct==1, b


***Teen

cohend af1_SIPAmel alloca if rct==1
cohend af1_SIPAiso alloca if rct==1
cohend af1_SIPAdel alloca if rct==1
cohend af1_SIPAach alloca if rct==1
cohend af1_SIPAad alloca if rct==1
cohend af1_disclos alloca if rct==1

reg af1_SIPAmel alloca if rct==1, b 
reg af1_SIPAiso alloca if rct==1, b 
reg af1_SIPAdel alloca if rct==1, b 
reg af1_SIPAach alloca if rct==1, b 
reg af1_SIPAad alloca if rct==1, b 
reg af1_disclos alloca if rct==1, b


recode improve_parq_cnv ///
improve_parq_gds ///
improve_parq_com ///
improve_parq_prsl ///
improve_parq_sch ///
improve_parq_eat ///
improve_parq_malint ///
improve_parq_perf ///
improve_parq_ruin ///
improve_parq_coh (0=0) (0.01=1) (0.05=1)


***NNT = 1 / Absolute risk reduction
***NNT = 1 / Control group Event rate - Programme event rate

ta improve_parq_gds alloca if rct==1 , col

dis 1 / (0.8852 - 0.6)

ta improve_parq_sch alloca if rct==1 , col

dis 1 / (0.9167 - 0.7927)

ta improve_parq_eat alloca if rct==1 , col

dis 1 / (0.8833 - 0.7215)

ta improve_parq_com alloca if rct==1 , col

dis 1 / (0.8525 - 0.5385)

ta improve_parq_prsl alloca if rct==1 , col

dis 1 / (0.8689 - 0.6667)

ta improve_parq_coh alloca if rct==1 , col

dis 1 / (0.8525 - 0.8125)

ta improve_parq_malint alloca if rct==1 , col

dis 1 / (1 - 0.9024)

ta improve_parq_ruin alloca if rct==1 , col

dis 1 / (0.9833 - 0.9146)

ta improve_parq_perf alloca if rct==1 , col

dis 1 / (0.9677 - 0.9390)


ta improve_parq_cnv alloca if rct==1 , col







*ch_parq_com ch_parq_prsl ch_parq_coh ch_parq_sch ch_parq_cnv ch_parq_eat ch_parq_malint ch_parq_perf ch_parq_ruin ch_SIPAmel ch_SIPAiso ch_SIPAdel ch_SIPAach ch_SIPAaprd ch_SIPAsoc ch_SIPAinc ch_SIPAincwt ch_SIPAad ch_SIPApd ch_SIPAts ch_monitor ch_disclose ch_solicit ch_control


*****Not used


recode ab_SIPAtsrating af1_SIPAtsrating ab_SIPAaprdrating af1_SIPAaprdrating (3=1) (.=.) (else=0), gen(ab_SIPAsevere af1_SIPAsevere ab_SIPAaprdsevere af1_SIPAaprdsevere)

ta ab_SIPAsevere af1_SIPAsevere,row
ta ab_SIPAsevere af1_SIPAsevere if alloca==0,row
ta ab_SIPAsevere af1_SIPAsevere if alloca==1,row


**Outcomes

ta ab_SIPAsevere af1_SIPAsevere ,row
ta ab_SIPAsevere af1_SIPAsevere if alloca==0,row
ta ab_SIPAsevere af1_SIPAsevere if alloca==1,row




summ age if rct==1
ttest age,by(rct)
summ age if pp_in==1
ttest age, by(pp_in)
summ age 

ta female if rct==1
ta female rct, chi2 exact
ta female if pp_in==1
ta female pp_in, chi2 exact
ta female 

ta paid if rct==1
ta paid rct, chi2 
ta paid if pp_in==1
ta paid pp_in, chi2
ta paid 

ta nyoung if rct==1
ta nyoung rct, exact
ta nyoung if pp_in==1
ta nyoung pp_in, exact
ta nyoung 


label variable group_allocation "randomisation group"
label variable round "Round of programme delivery"
label variable site "Location of programme"
label variable allocation "Randomisation group"
label variable attend_patt "Attendance pattern"
label variable attend_wks "Number of weeks attended"
label variable age 
label variable female 
label variable paid "Employed Y/N"
label variable nyoung "Number of children"
drop name 

label variable alloc_notes "Notes"
label variable alloc_doublet "Couple/pair randomisation"
label variable datapatt "Data response Pattern"

label variable alloc_dem_mrg "Merge allocation list to demographics"
label variable coupleid "ID of pair randomisation"
label variable pairid "ID of pair randomisation"


stop 
*****RCT Paper new tables

gen sem_in=1

replace sem_in=0 if not_registered_parent=="Y"

***Dropping male couples from the RCT analysis
**Drop them from the denominator too, so set to missing instead of 0
replace sem_in=0 if alloc_doublet==1& female==0



Table: Total number of surveys by respondent group and collection phase

ta baseline alloca
ta f1 alloca

ta baseline alloca if sem_in==1, col
ta f1 alloca if sem_in==1 , col
ta rct_in alloca, col


reg af1_ghq alloca ab_ghq 
sem (af1_ghq <- ab_ghq alloca), method(mlmv) nocapslatent
sem (af1_ghq <- ab_ghq alloca ab_parq_cnv), method(mlmv) nocapslatent



reg af1_SIPAsoc alloca ab_SIPAsoc
sem (af1_SIPAsoc <- alloca ab_SIPAsoc), method(mlmv) nocapslatent
sem (af1_SIPAsoc <- alloca ab_SIPAsoc ab_parq_cnv), method(mlmv) nocapslatent

reg af1_SIPAincwt alloca ab_SIPAincwt 
sem (af1_SIPAincwt <- alloca ab_SIPAincwt ), method(mlmv) nocapslatent 
sem (af1_SIPAincwt <- alloca ab_SIPAincwt ab_parq_cnv), method(mlmv) nocapslatent 


reg af1_SIPApd_cent alloca ab_SIPApd_cent
sem (af1_SIPApd_cent <- alloca ab_SIPApd_cent ), method(mlmv) nocapslatent
sem (af1_SIPApd_cent <- alloca ab_SIPApd_cent ab_parq_cnv), method(mlmv) nocapslatent

reg af1_SIPAts alloca ab_SIPAts
sem (af1_SIPAts <- alloca ab_SIPAts ), method(mlmv) nocapslatent
sem (af1_SIPAts <- alloca ab_SIPAts ab_parq_cnv), method(mlmv) nocapslatent

reg af1_control alloca ab_control
sem (af1_control <- alloca ab_control ), method(mlmv) nocapslatent
sem (af1_control <- alloca ab_control ab_parq_cnv), method(mlmv) nocapslatent

reg af1_monitor alloca ab_monitor
sem (af1_monitor <-  alloca ab_monitor), method(mlmv) nocapslatent
sem (af1_monitor <-  alloca ab_monitor ab_parq_cnv), method(mlmv) nocapslatent

reg af1_solicit alloca ab_solicit 
sem (af1_solicit <- alloca ab_solicit ), method(mlmv) nocapslatent
sem (af1_solicit <- alloca ab_solicit ab_parq_cnv), method(mlmv) nocapslatent

cohend af1_ghq alloca if rct_in==1
cohend af1_SIPAsoc alloca if rct_in==1
cohend af1_SIPAincwt alloca if rct_in==1
cohend af1_SIPApd_cent alloca if rct_in==1
cohend af1_SIPAts alloca if rct_in==1
cohend af1_control alloca if rct_in==1
cohend af1_monitor alloca if rct_in==1
cohend af1_solicit alloca if rct_in==1


****family outcomes

reg af1_parq_gds alloca ab_parq_gds
sem (af1_parq_gds <- alloca ab_parq_gds), method(mlmv) nocapslatent
sem (af1_parq_gds <- alloca ab_parq_gds ab_parq_cnv), method(mlmv) nocapslatent

reg af1_parq_sch alloca ab_parq_sch
sem (af1_parq_sch <- alloca ab_parq_sch), method(mlmv) nocapslatent
sem (af1_parq_sch <- alloca ab_parq_sch ab_parq_cnv), method(mlmv) nocapslatent

reg af1_parq_eat alloca ab_parq_eat
sem (af1_parq_eat <- alloca ab_parq_eat ), method(mlmv) nocapslatent
sem (af1_parq_eat <- alloca ab_parq_eat ab_parq_cnv), method(mlmv) nocapslatent

reg af1_SIPAaprd alloca ab_SIPAaprd
sem (af1_SIPAaprd <- alloca ab_SIPAaprd), method(mlmv) nocapslatent
sem (af1_SIPAaprd <- alloca ab_SIPAaprd ab_parq_cnv), method(mlmv) nocapslatent

reg af1_parq_com alloca ab_parq_com
sem (af1_parq_com <- alloca ab_parq_com), method(mlmv) nocapslatent
sem (af1_parq_com <- alloca ab_parq_com ab_parq_cnv), method(mlmv) nocapslatent

reg af1_parq_prsl alloca ab_parq_prsl
sem (af1_parq_prsl <- alloca ab_parq_prsl), method(mlmv) nocapslatent
sem (af1_parq_prsl <- alloca ab_parq_prsl ab_parq_cnv), method(mlmv) nocapslatent

reg af1_parq_coh alloca ab_parq_coh
sem (af1_parq_coh <- alloca ab_parq_coh ), method(mlmv) nocapslatent
sem (af1_parq_coh <- alloca ab_parq_coh ab_parq_cnv), method(mlmv) nocapslatent

reg af1_parq_malint alloca ab_parq_malint
sem (af1_parq_malint <- alloca ab_parq_malint), method(mlmv) nocapslatent
sem (af1_parq_malint <- alloca ab_parq_malint ab_parq_cnv), method(mlmv) nocapslatent

reg af1_parq_ruin alloca ab_parq_ruin
sem (af1_parq_ruin <- alloca ab_parq_ruin), method(mlmv) nocapslatent
sem (af1_parq_ruin <- alloca ab_parq_ruin ab_parq_cnv), method(mlmv) nocapslatent

reg af1_parq_perf alloca ab_parq_perf
sem (af1_parq_perf <- alloca ab_parq_perf), method(mlmv) nocapslatent
sem (af1_parq_perf <- alloca ab_parq_perf ab_parq_cnv), method(mlmv) nocapslatent

reg af1_parq_cnv alloca ab_parq_cnv
sem (af1_parq_cnv <- alloca ab_parq_cnv), method(mlmv) nocapslatent
sem (af1_parq_cnv <- alloca ab_parq_cnv ab_parq_cnv), method(mlmv) nocapslatent

cohend af1_parq_gds alloca if rct_in==1
cohend af1_parq_sch alloca if rct_in==1
cohend af1_parq_eat alloca if rct_in==1
cohend af1_SIPAaprd alloca if rct_in==1
cohend af1_parq_com alloca if rct_in==1
cohend af1_parq_prsl alloca if rct_in==1
cohend af1_parq_coh alloca if rct_in==1
cohend af1_parq_malint alloca if rct_in==1
cohend af1_parq_ruin alloca if rct_in==1
cohend af1_parq_perf alloca if rct_in==1
	



****Teenager outcomes

reg af1_SIPAmel alloca ab_SIPAmel
sem (af1_SIPAmel <- alloca ab_SIPAmel), method(mlmv) nocapslatent
sem (af1_SIPAmel <- alloca ab_SIPAmel ab_parq_cnv), method(mlmv) nocapslatent

reg af1_SIPAiso alloca ab_SIPAiso
sem (af1_SIPAiso <- alloca ab_SIPAiso), method(mlmv) nocapslatent
sem (af1_SIPAiso <- alloca ab_SIPAiso ab_parq_cnv), method(mlmv) nocapslatent

reg af1_SIPAdel alloca ab_SIPAdel
sem (af1_SIPAdel <- alloca ab_SIPAdel), method(mlmv) nocapslatent
sem (af1_SIPAdel <- alloca ab_SIPAdel ab_parq_cnv), method(mlmv) nocapslatent

reg af1_SIPAach alloca ab_SIPAach
sem (af1_SIPAach <- alloca ab_SIPAach), method(mlmv) nocapslatent
sem (af1_SIPAach <- alloca ab_SIPAach ab_parq_cnv), method(mlmv) nocapslatent

reg af1_SIPAad alloca ab_SIPAad
sem (af1_SIPAad <- alloca ab_SIPAad), method(mlmv) nocapslatent
sem (af1_SIPAad <- alloca ab_SIPAad ab_parq_cnv), method(mlmv) nocapslatent

reg af1_disclose alloca ab_disclose
sem (af1_disclose <- alloca ab_disclose), method(mlmv) nocapslatent
sem (af1_disclose <- alloca ab_disclose ab_parq_cnv), method(mlmv) nocapslatent


cohend af1_SIPAmel alloca if rct_in==1
cohend af1_SIPAiso alloca if rct_in==1
cohend af1_SIPAdel alloca if rct_in==1
cohend af1_SIPAach alloca if rct_in==1
cohend af1_SIPAad alloca if rct_in==1
cohend af1_disclose alloca if rct_in==1


***

cohend af1_SIPAsoc alloca 
cohend af1_SIPAincwt alloca 
cohend af1_SIPApd_cent alloca 

cohend af1_parq_gds alloca 

cohend af1_parq_sch alloca 

cohend af1_parq_eat alloca 

cohend af1_SIPAaprd alloca 

cohend af1_monitor alloca 

cohend af1_solicit alloca 
cohend af1_control alloca 


cohend af1_parq_com alloca 

cohend af1_parq_prsl alloca 

cohend af1_parq_coh alloca 

cohend af1_parq_malint alloca 

cohend af1_parq_ruin alloca 

cohend af1_parq_perf alloca 

cohend af1_parq_cnv alloca 

cohend af1_SIPAmel alloca 

cohend af1_SIPAiso alloca 
cohend af1_SIPAdel alloca 

cohend af1_SIPAach alloca 

cohend af1_SIPAad alloca 

cohend af1_disclose alloca 







*save "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\Final Analytical Datasets\Main RCT Analysis.dta", replace
