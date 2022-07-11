
use "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Final Data\allocation list_final_prep.dta", clear
gen t_datapatt=10
label define t_datapatt 0 "Baseline only" 1 "Baseline & f1" 3 "f1 only" 10 "Randomised only", 
label values t_datapatt t_datapatt
merge 1:1 id using "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Final Data\teen baseline coded.dta", gen(alloc_base_mrg)
replace t_datap=0 if alloc_base==3
rename semotion tb_semotion 
rename sconduct tb_sconduct 
rename shyper tb_shyper 
rename speer tb_speer 
rename sprosoc tb_sprosoc 
rename sebdtot tb_sebdtot 
merge 1:1 id using "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Final Data\teen follow up coded.dta", gen(base_f1_mrg)
replace t_datap=1 if base_f1_mrg==3&alloc_base_mrg==3
replace t_datap=3 if base_f1_mrg==3&alloc_base_mrg==1
recode t_datapat (10=.)
drop if id==200890
**This was a duplicate entry for 2008.

replace t_datap=1 if alloc_base==3 & base_f1==3
replace t_datap=3 if base_f1==2

gen t_baseline=0
replace t_baseline=1 if t_datapatt==0
replace t_baseline=1 if t_datapatt==1
replace t_baseline=1 if t_datapatt==2
replace t_baseline=1 if t_datapatt==6

gen t_f1=0
replace t_f1=1 if t_datapatt==1
replace t_f1=1 if t_datapatt==2
replace t_f1=1 if t_datapatt==3
replace t_f1=1 if t_datapatt==4

ta t_base 
ta t_base alloc_all, col

ta t_f1
ta t_f1 alloc_all, col

recode t_datap (1=1) (else=0), gen(t_pp_in)
recode t_datap (1=0)(else=1), gen (t_totalloss)
recode t_datap (0=1)(3=1)(else=0), gen (t_pp_in_out)

*Clinical Change indices
*Cohesion: Positive score is improvement
gen cht_parq_coh=tb_parq_coh - tf_parq_coh
gen rqd_pos_parq_coh=.
replace rqd_pos_parq_coh=0 if cht_parq_coh<10
replace rqd_pos_parq_coh=0.15 if cht_parq_coh>9&cht_parq_coh<12
replace rqd_pos_parq_coh=0.1 if cht_parq_coh>11&cht_parq_coh<14
replace rqd_pos_parq_coh=0.05 if cht_parq_coh>13&cht_parq_coh<19
replace rqd_pos_parq_coh=0.01 if cht_parq_coh>18&cht_parq_coh~=.
replace rqd_pos_parq_coh=. if base_f1_mrg~=3

gen rqd_neg_parq_coh=.
replace rqd_neg_parq_coh=0 if cht_parq_coh>-10&cht_parq_coh~=.
replace rqd_neg_parq_coh=0.15 if cht_parq_coh<-9&cht_parq_coh>-12
replace rqd_neg_parq_coh=0.1 if cht_parq_coh<-11&cht_parq_coh>-14
replace rqd_neg_parq_coh=0.05 if cht_parq_coh<-13&cht_parq_coh>-19
replace rqd_neg_parq_coh=0.01 if cht_parq_coh<-18

*Eating conflict: Negative score is improvement
gen cht_parq_eat= tb_parq_eat - tf_parq_eat 
gen rqd_pos_parq_eat=.
replace rqd_pos_parq_eat=0 if cht_parq_eat<9
replace rqd_pos_parq_eat=0.15 if cht_parq_eat==9
replace rqd_pos_parq_eat=0.1 if cht_parq_eat>9&cht_parq_eat<12
replace rqd_pos_parq_eat=0.05 if cht_parq_eat>11&cht_parq_eat<16
replace rqd_pos_parq_eat=0.01 if cht_parq_eat>15&cht_parq_eat~=.

gen rqd_neg_parq_eat=.
replace rqd_neg_parq_eat=0 if cht_parq_eat>-9&cht_parq_eat~=.
replace rqd_neg_parq_eat=0.15 if cht_parq_eat==-9
replace rqd_neg_parq_eat=0.1 if cht_parq_eat<-9&cht_parq_eat>-12
replace rqd_neg_parq_eat=0.05 if cht_parq_eat<-11&cht_parq_eat>-16
replace rqd_neg_parq_eat=0.01 if cht_parq_eat<-15

*General distress: Negative score is improvement
gen cht_parq_gds= tb_parq_gds - tf_parq_gds 
gen rqd_pos_parq_gds=.
replace rqd_pos_parq_gds=0 if cht_parq_gds<7
replace rqd_pos_parq_gds=0.15 if cht_parq_gds==7
replace rqd_pos_parq_gds=0.1 if cht_parq_gds==8
replace rqd_pos_parq_gds=0.05 if cht_parq_gds>8&cht_parq_gds<12
replace rqd_pos_parq_gds=0.01 if cht_parq_gds>11&cht_parq_gds~=.

gen rqd_neg_parq_gds=.
replace rqd_neg_parq_gds=0 if cht_parq_gds>-7&cht_parq_gds~=.
replace rqd_neg_parq_gds=0.15 if cht_parq_gds==-7
replace rqd_neg_parq_gds=0.1 if cht_parq_gds==-8
replace rqd_neg_parq_gds=0.05 if cht_parq_gds<-8&cht_parq_gds>-12
replace rqd_neg_parq_gds=0.01 if cht_parq_gds<-11

*Autonomy: Positive score-improvement
gen cht_parq_aut=tb_parq_aut - tf_parq_aut 
gen rqd_pos_parq_aut=.
replace rqd_pos_parq_aut=0 if cht_parq_aut<10
replace rqd_pos_parq_aut=0.15 if cht_parq_aut==10
replace rqd_pos_parq_aut=0.1 if cht_parq_aut>10&cht_parq_aut<13
replace rqd_pos_parq_aut=0.05 if cht_parq_aut>12&cht_parq_aut<18
replace rqd_pos_parq_aut=0.01 if cht_parq_aut>17&cht_parq_aut~=.

gen rqd_neg_parq_aut=.
replace rqd_neg_parq_aut=0 if cht_parq_aut>-10&cht_parq_aut~=.
replace rqd_neg_parq_aut=0.15 if cht_parq_aut==-10
replace rqd_neg_parq_aut=0.1 if cht_parq_aut<-10&cht_parq_aut>-13
replace rqd_neg_parq_aut=0.05 if cht_parq_aut<-12&cht_parq_aut>-18
replace rqd_neg_parq_aut=0.01 if cht_parq_aut<-17

*Ruination: Negative score- improvement
gen cht_parq_ruin= tb_parq_ruin- tf_parq_ruin
gen rqd_pos_parq_ruin=.
replace rqd_pos_parq_ruin=0 if cht_parq_ruin<10
replace rqd_pos_parq_ruin=0.15 if cht_parq_ruin>9&cht_parq_ruin<12
replace rqd_pos_parq_ruin=0.1 if cht_parq_ruin>11&cht_parq_ruin<14
replace rqd_pos_parq_ruin=0.05 if cht_parq_ruin>13&cht_parq_ruin<18
replace rqd_pos_parq_ruin=0.01 if cht_parq_ruin>17&cht_parq_ruin~=.

gen rqd_neg_parq_ruin=.
replace rqd_neg_parq_ruin=0 if cht_parq_ruin>-10&cht_parq_ruin~=.
replace rqd_neg_parq_ruin=0.15 if cht_parq_ruin==-10&cht_parq_ruin>-12
replace rqd_neg_parq_ruin=0.1 if cht_parq_ruin<-11&cht_parq_ruin>-14
replace rqd_neg_parq_ruin=0.05 if cht_parq_ruin<-13&cht_parq_ruin>-18
replace rqd_neg_parq_ruin=0.01 if cht_parq_ruin<-17

*Unfairness: Positive score- improvement
gen cht_parq_fair=tb_parq_fair - tf_parq_fair 
gen rqd_pos_parq_fair=.
replace rqd_pos_parq_fair=0 if cht_parq_fair<10
replace rqd_pos_parq_fair=0.15 if cht_parq_fair==10
replace rqd_pos_parq_fair=0.1 if cht_parq_fair>10&cht_parq_fair<14
replace rqd_pos_parq_fair=0.05 if cht_parq_fair>13&cht_parq_fair<18
replace rqd_pos_parq_fair=0.01 if cht_parq_fair>17&cht_parq_fair~=.

gen rqd_neg_parq_fair=.
replace rqd_neg_parq_fair=0 if cht_parq_fair>-10&cht_parq_fair~=.
replace rqd_neg_parq_fair=0.15 if cht_parq_fair==-10
replace rqd_neg_parq_fair=0.1 if cht_parq_fair<-10&cht_parq_fair>-14
replace rqd_neg_parq_fair=0.05 if cht_parq_fair<-13&cht_parq_fair>-18
replace rqd_neg_parq_fair=0.01 if cht_parq_fair<-17

*Conventionalism
gen cht_parq_cnv= tb_parq_cnv - tf_parq_cnv 
gen rqd_pos_parq_cnv=.
replace rqd_pos_parq_cnv=0 if cht_parq_cnv<10
replace rqd_pos_parq_cnv=0.15 if cht_parq_cnv>9&cht_parq_cnv<12
replace rqd_pos_parq_cnv=0.1 if cht_parq_cnv>11&cht_parq_cnv<14
replace rqd_pos_parq_cnv=0.05 if cht_parq_cnv>13&cht_parq_cnv<19
replace rqd_pos_parq_cnv=0.01 if cht_parq_cnv>18&cht_parq_cnv~=.

gen rqd_neg_parq_cnv=.
replace rqd_neg_parq_cnv=0 if cht_parq_cnv>-10&cht_parq_cnv~=.
replace rqd_neg_parq_cnv=0.15 if cht_parq_cnv<-9&cht_parq_cnv>-12
replace rqd_neg_parq_cnv=0.1 if cht_parq_cnv<-11&cht_parq_cnv>-14
replace rqd_neg_parq_cnv=0.05 if cht_parq_cnv<-13&cht_parq_cnv>-19
replace rqd_neg_parq_cnv=0.01 if cht_parq_cnv<-18

*Mum communication: Positive change=improvement 
gen cht_parq_mumcom=tb_parq_mumcom - tf_parq_mumcom
gen rqd_pos_parq_mumcom=.
replace rqd_pos_parq_mumcom=0 if cht_parq_mumcom<8
replace rqd_pos_parq_mumcom=0.15 if cht_parq_mumcom==8
replace rqd_pos_parq_mumcom=0.1 if cht_parq_mumcom>8&cht_parq_mumcom<11
replace rqd_pos_parq_mumcom=0.05 if cht_parq_mumcom>10&cht_parq_mumcom<14
replace rqd_pos_parq_mumcom=0.01 if cht_parq_mumcom>13&cht_parq_mumcom~=.

gen rqd_neg_parq_mumcom=.
replace rqd_neg_parq_mumcom=0 if cht_parq_mumcom>-8&cht_parq_mumcom~=.
replace rqd_neg_parq_mumcom=0.15 if cht_parq_mumcom==-8
replace rqd_neg_parq_mumcom=0.1 if cht_parq_mumcom<-8&cht_parq_mumcom>-11
replace rqd_neg_parq_mumcom=0.05 if cht_parq_mumcom<-10&cht_parq_mumcom>-14
replace rqd_neg_parq_mumcom=0.01 if cht_parq_mumcom<-13

*Mother problem-solving: Positive change=improvement
gen cht_parq_mumprsl= tb_parq_mumprsl - tf_parq_mumprsl 
gen rqd_pos_parq_mumprsl=.
replace rqd_pos_parq_mumprsl=0 if cht_parq_mumprsl<9
replace rqd_pos_parq_mumprsl=0.15 if cht_parq_mumprsl==9
replace rqd_pos_parq_mumprsl=0.1 if cht_parq_mumprsl>9&cht_parq_mumprsl<12
replace rqd_pos_parq_mumprsl=0.05 if cht_parq_mumprsl>11&cht_parq_mumprsl<15
replace rqd_pos_parq_mumprsl=0.01 if cht_parq_mumprsl>14&cht_parq_mumprsl~=.

gen rqd_neg_parq_mumprsl=.
replace rqd_neg_parq_mumprsl=0 if cht_parq_mumprsl>-9&cht_parq_mumprsl~=.
replace rqd_neg_parq_mumprsl=0.15 if cht_parq_mumprsl==-9
replace rqd_neg_parq_mumprsl=0.1 if cht_parq_mumprsl<-9&cht_parq_mumprsl>-12
replace rqd_neg_parq_mumprsl=0.05 if cht_parq_mumprsl<-11&cht_parq_mumprsl>-15
replace rqd_neg_parq_mumprsl=0.01 if cht_parq_mumprsl<-14

*Mother school conflict: Negative change=improvement
gen cht_parq_mumsch= tb_parq_mumsch - tf_parq_mumsch  
gen rqd_pos_parq_mumsch=.
replace rqd_pos_parq_mumsch=0 if cht_parq_mumsch<9
replace rqd_pos_parq_mumsch=0.15 if cht_parq_mumsch==9
replace rqd_pos_parq_mumsch=0.1 if cht_parq_mumsch>9&cht_parq_mumsch<12
replace rqd_pos_parq_mumsch=0.05 if cht_parq_mumsch>11&cht_parq_mumsch<16
replace rqd_pos_parq_mumsch=0.01 if cht_parq_mumsch>15&cht_parq_mumsch~=.

gen rqd_neg_parq_mumsch=.
replace rqd_neg_parq_mumsch=0 if cht_parq_mumsch>-9&cht_parq_mumsch~=.
replace rqd_neg_parq_mumsch=0.15 if cht_parq_mumsch==-9
replace rqd_neg_parq_mumsch=0.1 if cht_parq_mumsch<-9&cht_parq_mumsch>-12
replace rqd_neg_parq_mumsch=0.05 if cht_parq_mumsch<-11&cht_parq_mumsch>-16
replace rqd_neg_parq_mumsch=0.01 if cht_parq_mumsch<-15

*Father communication
gen cht_parq_dadcom= tb_parq_dadcom - tf_parq_dadcom 
gen rqd_pos_parq_dadcom=.
replace rqd_pos_parq_dadcom=0 if cht_parq_dadcom<8
replace rqd_pos_parq_dadcom=0.15 if cht_parq_dadcom==8
replace rqd_pos_parq_dadcom=0.1 if cht_parq_dadcom>8&cht_parq_dadcom<11
replace rqd_pos_parq_dadcom=0.05 if cht_parq_dadcom>10&cht_parq_dadcom<14
replace rqd_pos_parq_dadcom=0.01 if cht_parq_dadcom>13&cht_parq_dadcom~=.

gen rqd_neg_parq_dadcom=.
replace rqd_neg_parq_dadcom=0 if cht_parq_dadcom>-8&cht_parq_dadcom~=.
replace rqd_neg_parq_dadcom=0.15 if cht_parq_dadcom==-8
replace rqd_neg_parq_dadcom=0.1 if cht_parq_dadcom<-8&cht_parq_dadcom>-11
replace rqd_neg_parq_dadcom=0.05 if cht_parq_dadcom<-10&cht_parq_dadcom>-14
replace rqd_neg_parq_dadcom=0.01 if cht_parq_dadcom<-13

*Father problem-solving: Positive change=improvement
gen cht_parq_dadprsl= tb_parq_dadprsl - tf_parq_dadprsl 
gen rqd_pos_parq_dadprsl=.
replace rqd_pos_parq_dadprsl=0 if cht_parq_dadprsl<9
replace rqd_pos_parq_dadprsl=0.15 if cht_parq_dadprsl==9
replace rqd_pos_parq_dadprsl=0.1 if cht_parq_dadprsl>9&cht_parq_dadprsl<12
replace rqd_pos_parq_dadprsl=0.05 if cht_parq_dadprsl>11&cht_parq_dadprsl<15
replace rqd_pos_parq_dadprsl=0.01 if cht_parq_dadprsl>14&cht_parq_dadprsl~=.

gen rqd_neg_parq_dadprsl=.
replace rqd_neg_parq_dadprsl=0 if cht_parq_dadprsl>-9&cht_parq_dadprsl~=.
replace rqd_neg_parq_dadprsl=0.15 if cht_parq_dadprsl==-9
replace rqd_neg_parq_dadprsl=0.1 if cht_parq_dadprsl<-9&cht_parq_dadprsl>-12
replace rqd_neg_parq_dadprsl=0.05 if cht_parq_dadprsl<-11&cht_parq_dadprsl>-15
replace rqd_neg_parq_dadprsl=0.01 if cht_parq_dadprsl<-14

*Father school conflict: Negative change=improvement
gen cht_parq_dadsch= tb_parq_dadsch - tf_parq_dadsch 
gen rqd_pos_parq_dadsch=.
replace rqd_pos_parq_dadsch=0 if cht_parq_dadsch<9
replace rqd_pos_parq_dadsch=0.15 if cht_parq_dadsch==9
replace rqd_pos_parq_dadsch=0.1 if cht_parq_dadsch>9&cht_parq_dadsch<12
replace rqd_pos_parq_dadsch=0.05 if cht_parq_dadsch>11&cht_parq_dadsch<16
replace rqd_pos_parq_dadsch=0.01 if cht_parq_dadsch>15&cht_parq_dadsch~=.

gen rqd_neg_parq_dadsch=.
replace rqd_neg_parq_dadsch=0 if cht_parq_dadsch>-9&cht_parq_dadsch~=.
replace rqd_neg_parq_dadsch=0.15 if cht_parq_dadsch==-9
replace rqd_neg_parq_dadsch=0.1 if cht_parq_dadsch<-9&cht_parq_dadsch>-12
replace rqd_neg_parq_dadsch=0.05 if cht_parq_dadsch<-11&cht_parq_dadsch>-16
replace rqd_neg_parq_dadsch=0.01 if cht_parq_dadsch<-15




*No clinically significant changes (bar one case for GDS)
*
rename male t_male
rename baseage t_baseage

gen t_loss=0
replace t_loss=1 if t_pp_in==0

*Table 1: Number of surveys collected from teenagers

ta t_baseline, m
ta t_f1, m
ta t_baseline t_f1, cell
ta t_pp_in_out
ta t_pp_in, m
ta t_totalloss, m

***Table 2: Programme characteristics and loss from analysis
ta  alloc_round if t_pp_in==1
**Put this in the 'Included (% of variable)' column

ta alloc_round t_pp_in, row

*Put this in the 'Lost from analysis (% of group)' column
ta alloc_round t_totalloss, row
ta alloc_round t_pp_in_out, row
ta alloc_round t_datapat, row m

logistic t_pp_in i.alloc_round

logistic t_totalloss alloc_round 
***Put this as Linear trend in the row with 'Round' written on it
logistic t_loss i.alloc_round

*ta alloc_site if t_pp_in==1, m
ta alloc_site t_pp_in, row m
ta alloc_site t_totalloss, row
ta alloc_site t_pp_in_out, row
ta alloc_site t_datapat, row m
logistic t_pp_in i.alloc_site

***Table 3: Demographic characteristics related to loss from analysis
ta t_baseage if t_pp_in==1, m
ta t_baseage t_datapat, col m
ta t_baseage t_pp_in, row m
logistic t_pp_in i.t_baseage


ta t_male if t_pp_in==1, m
ta t_male t_datapat, col m
ta t_male t_pp_in, row m
logistic t_pp_in i.t_male

           
merge 1:1 id using "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Final Data\June 25th 2012 Coded Adult Data.dta"

****Table 4: Parent Characteristics related to loss from analysis
ta age4 t_pp_in_out, col
ta age4 t_datapat, col m
logistic t_pp_in ib0.age4
order id t_datapatt male baseage tb_semotion tb_sconduct tb_shyper tb_speer tb_sprosoc tb_sebdtot tb_parq_coh tb_parq_eat tb_parq_gds tb_parq_aut tb_parq_ruin tb_parq_fair tb_parq_cnv tb_parq_mumcom tb_parq_mumprsl tb_parq_mumsch tb_parq_dadcom tb_parq_dadprsl tb_parq_dadsch tb_monitor tb_disclose tb_solic tb_control tf_parq_coh tf_parq_eat tf_parq_gds tf_parq_aut tf_parq_ruin tf_parq_fair tf_parq_cnv tf_parq_mumcom tf_parq_mumprsl tf_parq_mumsch tf_parq_dadcom tf_parq_dadprsl tf_parq_dadsch tf_monitor tf_disclose tf_solic tf_control

replace female=99 if female==.
ta female if t_loss==1 
ta female t_pp_in, col
ta female t_pp_in_out, col
ta female t_datapat, col m
logistic t_loss ib0.female 

ta paid if t_pp_in==1 
ta paid t_pp_in, col
ta paid t_pp_in_out, col
ta paid t_datapat, col m
logistic t_pp_in ib0.paid 

gen relstatus=dem_relstatus
replace relstatus=ab_relstatus if relstatus==.
replace relstatus=99 if relstatus==.

ta relstatus if t_loss==1 
ta relstatus t_pp_in, col
ta relstatus t_pp_in_out, col
ta relstatus t_datapat, col m
logistic t_pp_in ib1.relstatus 

ta nyoung if t_loss==1 
ta nyoung t_loss, row
logistic t_loss nyoung if nyoung~=99
logistic t_loss i.nyoung

logistic t_loss ab_ghq
logistic t_loss ab_parq_gds 
logistic t_loss ab_parq_com 
logistic t_loss ab_parq_prsl 
logistic t_loss ab_parq_coh 
logistic t_loss ab_parq_sch 
logistic t_loss ab_parq_cnv 
logistic t_loss ab_parq_eat 
logistic t_loss ab_parq_malint 
logistic t_loss ab_parq_perf 
logistic t_loss ab_parq_ruin 
logistic t_loss ab_SIPAmel 
logistic t_loss ab_SIPAiso 

logistic t_loss ab_SIPAdel 
**
xtile del5=ab_SIPAdel , nquantile(5)

logistic t_loss i.del5


logistic t_loss ab_SIPAach 
logistic t_loss ab_SIPAaprd 
logistic t_loss ab_SIPAsoc 
logistic t_loss ab_SIPAincwt 
logistic t_loss ab_SIPAad 
logistic t_loss ab_SIPApd 
logistic t_loss ab_SIPAts 
logistic t_loss ab_disclose 
logistic t_loss ab_solicit 
logistic t_loss ab_control 
logistic t_loss ab_monitor

*Table : Pre and Post Programme Teen Outcomes
tabstat tb_semotion if t_pp_in==1, statistics(mean sd count)
tabstat tb_sconduct if t_pp_in==1, statistics(mean sd count)
tabstat tb_shyper if t_pp_in==1, statistics(mean sd count)
tabstat tb_speer if t_pp_in==1, statistics(mean sd count)
tabstat tb_sprosoc if t_pp_in==1,	statistics(mean	sd count)
tabstat tb_sebdtot if t_pp_in==1,	statistics(mean	sd count)
tabstat	tb_parq_coh if t_pp_in==1, statistics(mean sd count)
tabstat	tb_parq_eat if t_pp_in==1, statistics(mean sd count)
tabstat	tb_parq_gds if t_pp_in==1, statistics(mean sd count)
tabstat	tb_parq_aut if t_pp_in==1, statistics(mean sd count)
tabstat	tb_parq_ruin if t_pp_in==1, statistics(mean sd count)
tabstat	tb_parq_fair if t_pp_in==1, statistics(mean sd count)
tabstat	tb_parq_cnv if t_pp_in==1, statistics(mean sd count)
tabstat	tb_parq_mumcom if t_pp_in==1, statistics(mean	sd count)
tabstat	tb_parq_mumprsl if t_pp_in==1, statistics(mean sd count)
tabstat	tb_parq_mumsch if t_pp_in==1, statistics(mean	sd count)
tabstat	tb_parq_dadcom if t_pp_in==1,	statistics(mean	sd count)
tabstat	tb_parq_dadprsl if t_pp_in==1, statistics(mean sd count)
tabstat	tb_parq_dadsch if t_pp_in==1,	statistics(mean	sd count)


tabstat tf_semotion if t_pp_in==1,	statistics(mean	sd count)
tabstat tf_sconduct if t_pp_in==1,	statistics(mean	sd count)
tabstat tf_shyper if t_pp_in==1,	statistics(mean	sd count)
tabstat tf_speer if t_pp_in==1,	statistics(mean	sd count)
tabstat tf_sprosoc if t_pp_in==1,	statistics(mean	sd count)
tabstat tf_sebdtot if t_pp_in==1,	statistics(mean	sd count)
tabstat	tf_parq_coh if t_pp_in==1,	statistics(mean	sd count)
tabstat	tf_parq_eat if t_pp_in==1,	statistics(mean	sd count)
tabstat	tf_parq_gds if t_pp_in==1,	statistics(mean	sd count)
tabstat	tf_parq_aut if t_pp_in==1,	statistics(mean	sd count)
tabstat	tf_parq_ruin if t_pp_in==1,		statistics(mean	sd count)
tabstat	tf_parq_fair if t_pp_in==1,	statistics(mean	sd count)
tabstat	tf_parq_cnv if t_pp_in==1,	statistics(mean	sd count)
tabstat	tf_parq_mumcom  if t_pp_in==1,		statistics(mean	sd count)
tabstat	tf_parq_mumprsl if t_pp_in==1,		statistics(mean	sd count)
tabstat	tf_parq_mumsch 	if t_pp_in==1,		statistics(mean	sd count)
tabstat	tf_parq_dadcom 	if t_pp_in==1,	statistics(mean	sd count)
tabstat	tf_parq_dadprsl  if t_pp_in==1,	statistics(mean	sd count)
tabstat	tf_parq_dadsch if t_pp_in==1,	statistics(mean	sd count)


ttest tb_semot ==tf_semot
ttest tb_scond ==tf_scond
ttest tb_shyp ==tf_shyp
ttest tb_speer ==tf_speer
ttest tb_sprosoc ==tf_sprosoc
ttest tb_sebdtot ==tf_sebdtot

ttest tb_parq_gds ==tf_parq_gds
ttest tb_parq_mumsch ==tf_parq_mumsch
ttest tb_parq_dadsch ==tf_parq_dadsch
ttest tb_parq_eat ==tf_parq_eat

ttest tb_parq_mumcom ==tf_parq_mumcom
ttest tb_parq_mumprsl ==tf_parq_mumprsl
ttest tb_parq_dadcom ==tf_parq_dadcom
ttest tb_parq_dadprsl ==tf_parq_dadprsl
ttest tb_parq_coh ==tf_parq_coh

ttest tb_parq_ruin ==tf_parq_ruin
ttest tb_parq_cnv ==tf_parq_cnv
ttest tb_parq_aut ==tf_parq_aut
ttest tb_parq_fair==tf_parq_fair


*order id ab_ghq tb_sebdtot tb_semotion tb_sconduct tb_shyper tb_speer tb_sprosoc 

*ab_parq_gds 
*tb_parq_gds 

*ab_parq_com 
*tb_parq_mumcom 
*tb_parq_dadcom 

*ab_parq_prsl 
*tb_parq_mumprsl 
*tb_parq_dadprsl 

*ab_parq_coh 
*tb_parq_coh 

*ab_parq_sch 
*tb_parq_mumsch 
*tb_parq_dadsch 

*ab_parq_cnv 
*tb_parq_cnv 

*ab_parq_eat 
*ab_parq_malint 
*ab_parq_perf 

*ab_parq_ruin 
*tb_parq_ruin 

*tb_parq_eat 
*tb_parq_aut 

*tb_parq_fair 

*ab_SIPAmel 
*ab_SIPAiso 
*ab_SIPAdel 
*ab_SIPAach 
*ab_SIPAaprd 
*ab_SIPAsoc 
*ab_SIPArawincwt 
*ab_SIPAincwt 
*ab_SIPAad 
*ab_SIPApd 
*ab_SIPAts 

*ab_monitor 
*tb_monitor 

*ab_disclose 
*tb_disclose 

*ab_solicit 
*tb_solic 

*ab_control
*tb_control
