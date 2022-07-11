**Tables marked with bookmarks beside the appropriate file.

***********Begin analysis

run "S:\PTP\PAC 2011\Syntax & Analysis\Step 6 survey analysis.do"

*gen deliveryid=.
*replace delivery=1 if site==8 & round==1 &alloca==0
*replace delivery=2 if site==8 & round==1 &alloca==1
*replace delivery=3 if site==8 & round==2 &alloca==0
*replace delivery=4 if site==8 & round==4 &alloca==0
*replace delivery=4 if site==8 & round==4 &alloca==0
*replace delivery=4 if site==8 & round==4 &alloca==0
*replace delivery=4 if site==8 & round==4 &alloca==0
*replace delivery=4 if site==8 & round==4 &alloca==0
*replace delivery=4 if site==8 & round==4 &alloca==0
*replace delivery=4 if site==8 & round==4 &alloca==0
*replace delivery=4 if site==8 & round==4 &alloca==0
*replace delivery=5 if site==8 & round==4 &alloca==1
*replace delivery=5 if site==8 & round==4 &alloca==1
*replace delivery=5 if site==8 & round==4 &alloca==1
*replace delivery=5 if site==8 & round==4 &alloca==1
*replace delivery=5 if site==8 & round==4 &alloca==1
*replace delivery=5 if site==8 & round==4 &alloca==1
*replace delivery=6 if site==8 & round==5 &alloca==0**

*replace delivery=7 if site==3 & round==1 &alloca==0
*replace delivery=7 if site==3 & round==1 &alloca==0
*replace delivery=8 if site==3 & round==1 &alloca==1
*replace delivery=8 if site==3 & round==1 &alloca==1
*replace delivery=9 if site==3 & round==2 &alloca==0
*replace delivery=9 if site==3 & round==2 &alloca==0
*replace delivery=9 if site==3 & round==2 &alloca==0
*replace delivery=10 if site==3 & round==3 &alloca==0
*replace delivery=11 if site==3 & round==3 &alloca==1
*replace delivery=11 if site==3 & round==3 &alloca==1
*replace delivery=12 if site==3 & round==4 &alloca==1
*replace delivery=12 if site==3 & round==4 &alloca==1
*replace delivery=12 if site==3 & round==4 &alloca==1
*replace delivery=12 if site==3 & round==4 &alloca==1
*replace delivery=12 if site==3 & round==4 &alloca==1
*replace delivery=12 if site==3 & round==4 &alloca==1
*replace delivery=13 if site==3 & round==5 &alloca==0
*replace delivery=13 if site==3 & round==5 &alloca==0
*replace delivery=13 if site==3 & round==5 &alloca==0
*replace delivery=14 if site==3 & round==5 &alloca==1
*replace delivery=14 if site==3 & round==5 &alloca==1
*replace delivery=29 if site==3 & round==2 &alloca==1*

*replace delivery=15 if site==4 & round==1 &alloca==0
*replace delivery=16 if site==4 & round==1 &alloca==1
*replace delivery=17 if site==4 & round==3 &alloca==0
*replace delivery=17 if site==4 & round==3 &alloca==0
*replace delivery=17 if site==4 & round==3 &alloca==0
*replace delivery=18 if site==4 & round==3 &alloca==1*

*replace delivery=19 if site==7 & round==2 &alloca==0
*replace delivery=19 if site==7 & round==2 &alloca==0
*replace delivery=19 if site==7 & round==2 &alloca==0
*replace delivery=19 if site==7 & round==2 &alloca==0
*replace delivery=20 if site==7 & round==2 &alloca==1
*replace delivery=20 if site==7 & round==2 &alloca==1*

*replace delivery=21 if site==6 & round==2 &alloca==0
*replace delivery=21 if site==6 & round==2 &alloca==0
*replace delivery=21 if site==6 & round==2 &alloca==0
*replace delivery=21 if site==6 & round==2 &alloca==0
*replace delivery=30 if site==6 & round==2 &alloca==1*

*replace delivery=22 if site==2 & round==5 &alloca==0
*replace delivery=22 if site==2 & round==5 &alloca==0
*replace delivery=22 if site==2 & round==5 &alloca==0
*replace delivery=22 if site==2 & round==5 &alloca==0
*replace delivery=23 if site==2 & round==5 &alloca==1
*replace delivery=23 if site==2 & round==5 &alloca==1
*replace delivery=23 if site==2 & round==5 &alloca==1
*replace delivery=23 if site==2 & round==5 &alloca==1
*replace delivery=23 if site==2 & round==5 &alloca==1

*replace delivery=24 if site==5 & round==4 &alloca==0
*replace delivery=24 if site==5 & round==4 &alloca==0
*replace delivery=24 if site==5 & round==4 &alloca==0
*replace delivery=25 if site==5 & round==4 &alloca==1
*replace delivery=25 if site==5 & round==4 &alloca==1
*replace delivery=25 if site==5 & round==4 &alloca==1
*replace delivery=25 if site==5 & round==4 &alloca==1
*replace delivery=25 if site==5 & round==4 &alloca==1
*replace delivery=25 if site==5 & round==4 &alloca==1

*replace delivery=26 if site==1 & round==5 &alloca==0
*replace delivery=26 if site==1 & round==5 &alloca==0
*replace delivery=26 if site==1 & round==5 &alloca==0
*replace delivery=26 if site==1 & round==5 &alloca==0
*replace delivery=26 if site==1 & round==5 &alloca==0
*replace delivery=26 if site==1 & round==5 &alloca==0
*replace delivery=26 if site==1 & round==5 &alloca==0
*replace delivery=26 if site==1 & round==5 &alloca==0
*replace delivery=27 if site==1 & round==5 &alloca==1
*replace delivery=27 if site==1 & round==5 &alloca==1
*replace delivery=27 if site==1 & round==5 &alloca==1
*replace delivery=27 if site==1 & round==5 &alloca==1
*replace delivery=27 if site==1 & round==5 &alloca==1
*replace delivery=27 if site==1 & round==5 &alloca==1

*replace delivery=28 if site==9 & round==5 &alloca==1
*replace delivery=28 if site==9 & round==5 &alloca==1


rename delivery sess_deliveryid

merge m:1 sess_deliveryid using "S:\PTP\PAC 2011\DATA\PAC Data Sets 2011\Final Data\session_plan_scores.dta", gen(data_sess_mrg)


gen pre_ghq=ab_ghq if alloca==1
replace pre_ghq=af1_ghq if alloca==0
gen post_ghq=af1_ghq if alloca==1
replace post_ghq=af2_ghq if alloca==0

gen pre_SIPAsoc=ab_SIPAsoc if alloca==1
replace pre_SIPAsoc=af1_SIPAsoc if alloca==0
gen post_SIPAsoc=af1_SIPAsoc if alloca==1
replace post_SIPAsoc=af2_SIPAsoc if alloca==0

gen pre_SIPAincwt=ab_SIPAincwt if alloca==1
replace pre_SIPAincwt=af1_SIPAincwt if alloca==0
gen post_SIPAincwt=af1_SIPAincwt if alloca==1
replace post_SIPAincwt=af2_SIPAincwt if alloca==0

gen pre_SIPApd=ab_SIPApd if alloca==1
replace pre_SIPApd=af1_SIPApd if alloca==0
gen post_SIPApd=af1_SIPApd if alloca==1
replace post_SIPApd=af2_SIPApd if alloca==0

gen pre_SIPAts=ab_SIPAts if alloca==1
replace pre_SIPAts=af1_SIPAts if alloca==0
gen post_SIPAts=af1_SIPAts if alloca==1
replace post_SIPAts=af2_SIPAts if alloca==0

gen pre_control=ab_control if alloca==1
replace pre_control=af1_control if alloca==0
gen post_control=af1_control if alloca==1
replace post_control=af2_control if alloca==0

gen pre_monitor=ab_monitor if alloca==1
replace pre_monitor=af1_monitor if alloca==0
gen post_monitor=af1_monitor if alloca==1
replace post_monitor=af2_monitor if alloca==0
gen pre_solicit=ab_solicit if alloca==1
replace pre_solicit=af1_solicit if alloca==0
gen post_solicit=af1_solicit if alloca==1
replace post_solicit=af2_solicit if alloca==0
gen pre_parq_gds=ab_parq_gds if alloca==1
replace pre_parq_gds=af1_parq_gds if alloca==0
gen post_parq_gds=af1_parq_gds if alloca==1
replace post_parq_gds=af2_parq_gds if alloca==0
gen pre_parq_sch=ab_parq_sch if alloca==1
replace pre_parq_sch=af1_parq_sch if alloca==0
gen post_parq_sch=af1_parq_sch if alloca==1
replace post_parq_sch=af2_parq_sch if alloca==0
gen pre_parq_eat=ab_parq_eat if alloca==1
replace pre_parq_eat=af1_parq_eat if alloca==0
gen post_parq_eat=af1_parq_eat if alloca==1
replace post_parq_eat=af2_parq_eat if alloca==0
gen pre_SIPAaprd=ab_SIPAaprd if alloca==1
replace pre_SIPAaprd=af1_SIPAaprd if alloca==0
gen post_SIPAaprd=af1_SIPAaprd if alloca==1
replace post_SIPAaprd=af2_SIPAaprd if alloca==0
gen pre_parq_com=ab_parq_com if alloca==1
replace pre_parq_com=af1_parq_com if alloca==0
gen post_parq_com=af1_parq_com if alloca==1
replace post_parq_com=af2_parq_com if alloca==0
gen pre_parq_prsl=ab_parq_prsl if alloca==1
replace pre_parq_prsl=af1_parq_prsl if alloca==0
gen post_parq_prsl=af1_parq_prsl if alloca==1
replace post_parq_prsl=af2_parq_prsl if alloca==0
gen pre_parq_coh=ab_parq_coh if alloca==1
replace pre_parq_coh=af1_parq_coh if alloca==0
gen post_parq_coh=af1_parq_coh if alloca==1
replace post_parq_coh=af2_parq_coh if alloca==0
gen pre_parq_malint=ab_parq_malint if alloca==1
replace pre_parq_malint=af1_parq_malint if alloca==0
gen post_parq_malint=af1_parq_malint if alloca==1
replace post_parq_malint=af2_parq_malint if alloca==0
gen pre_parq_ruin=ab_parq_ruin if alloca==1
replace pre_parq_ruin=af1_parq_ruin if alloca==0
gen post_parq_ruin=af1_parq_ruin if alloca==1
replace post_parq_ruin=af2_parq_ruin if alloca==0
gen pre_parq_perf=ab_parq_perf if alloca==1
replace pre_parq_perf=af1_parq_perf if alloca==0
gen post_parq_perf=af1_parq_perf if alloca==1
replace post_parq_perf=af2_parq_perf if alloca==0
gen pre_parq_cnv=ab_parq_cnv if alloca==1
replace pre_parq_cnv=af1_parq_cnv if alloca==0
gen post_parq_cnv=af1_parq_cnv if alloca==1
replace post_parq_cnv=af2_parq_cnv if alloca==0
gen pre_SIPAmel=ab_SIPAmel if alloca==1
replace pre_SIPAmel=af1_SIPAmel if alloca==0
gen post_SIPAmel=af1_SIPAmel if alloca==1
replace post_SIPAmel=af2_SIPAmel if alloca==0
gen pre_SIPAiso=ab_SIPAiso if alloca==1
replace pre_SIPAiso=af1_SIPAiso if alloca==0
gen post_SIPAiso=af1_SIPAiso if alloca==1
replace post_SIPAiso=af2_SIPAiso if alloca==0
gen pre_SIPAdel=ab_SIPAdel if alloca==1
replace pre_SIPAdel=af1_SIPAdel if alloca==0
gen post_SIPAdel=af1_SIPAdel if alloca==1
replace post_SIPAdel=af2_SIPAdel if alloca==0
gen pre_SIPAach=ab_SIPAach if alloca==1
replace pre_SIPAach=af1_SIPAach if alloca==0
gen post_SIPAach=af1_SIPAach if alloca==1
replace post_SIPAach=af2_SIPAach if alloca==0
gen pre_SIPAad=ab_SIPAad if alloca==1
replace pre_SIPAad=af1_SIPAad if alloca==0
gen post_SIPAad=af1_SIPAad if alloca==1
replace post_SIPAad=af2_SIPAad if alloca==0
gen pre_disclose=ab_disclose if alloca==1
replace pre_disclose=af1_disclose if alloca==0
gen post_disclose=af1_disclose if alloca==1
replace post_disclose=af2_disclose if alloca==0

rename sess_del delivery

order id group_allocation round site allocation attend_patt ///
attend_wks age female paid nyoung av_s1 av_s2 av_s3 av_s4 ///
av_s5 av_s6 av_s7 av_s8 av_overall count_overall



**Parent
xtmixed post_ghq pre_ghq || delivery:, mle var
icc
**No variation

xtmixed post_SIPAsoc pre_SIPAsoc || delivery:, mle var
icc
xtmixed post_SIPAincwt pre_SIPAincwt || delivery:, mle var
icc
xtmixed post_SIPApd pre_SIPApd || delivery:, mle var
icc
xtmixed post_SIPAts pre_SIPAts || delivery:, mle var
icc
xtmixed post_control pre_control || delivery:, mle var
icc
xtmixed post_monitor pre_monitor || delivery:, mle var
icc
xtmixed post_solicit pre_solicit || delivery:, mle var
icc

**Family
xtmixed post_parq_gds pre_parq_gds || delivery:, mle var
icc
xtmixed post_parq_sch pre_parq_sch || delivery:, mle var
icc
xtmixed post_parq_eat pre_parq_eat || delivery:, mle var
icc
xtmixed post_SIPAaprd pre_SIPAaprd || delivery:, mle var
icc

xtmixed post_parq_com pre_parq_com || delivery:, mle var
icc
xtmixed post_parq_prsl pre_parq_prsl || delivery:, mle var
icc
xtmixed post_parq_coh pre_parq_coh || delivery:, mle var
icc

xtmixed post_parq_malint pre_parq_malint || delivery:, mle var
icc
xtmixed post_parq_ruin pre_parq_ruin || delivery:, mle var
icc
xtmixed post_parq_perf pre_parq_perf || delivery:, mle var
icc
xtmixed post_parq_cnv pre_parq_cnv || delivery:, mle var
icc


***Teenager

xtmixed post_SIPAmel pre_SIPAmel || delivery:, mle var
icc
xtmixed post_SIPAiso pre_SIPAiso || delivery:, mle var
icc
xtmixed post_SIPAdel pre_SIPAdel || delivery:, mle var
icc
xtmixed post_SIPAach pre_SIPAach || delivery:, mle var
icc
xtmixed post_SIPAad pre_SIPAad || delivery:, mle var
icc
xtmixed post_disclose pre_disclose || delivery:, mle var
icc


****New adherence tables
**Looking only at eating conflict as it's the only thing that varied

xtmixed post_parq_eat pre_parq_eat || deliver: , mle var
icc
xtmixed post_parq_eat pre_parq_eat av_overall || deliver: , mle var
icc
xtmixed post_parq_eat pre_parq_eat av_s1 || deliver: , mle var
icc
xtmixed post_parq_eat pre_parq_eat av_s2 || deliver: , mle var
icc
xtmixed post_parq_eat pre_parq_eat av_s3 || deliver: , mle var
icc
xtmixed post_parq_eat pre_parq_eat av_s4 || deliver: , mle var
icc
xtmixed post_parq_eat pre_parq_eat av_s5 || deliver: , mle var
icc
xtmixed post_parq_eat pre_parq_eat av_s6 || deliver: , mle var
icc
xtmixed post_parq_eat pre_parq_eat av_s7 || deliver: , mle var
icc
xtmixed post_parq_eat pre_parq_eat av_s8 || deliver: , mle var
icc

*Pre-post table 2: Regression coefficients showing the association between programme adherence and outcome measures

*reg pp_ch_ghq av_overall , cluster(sess_deliv)
*reg pp_ch_ghq av_overall age female paid nyoung, cluster(sess_deliv)
*reg pp_ch_parq_gds av_overall , cluster(sess_deliv)
*reg pp_ch_parq_gds av_overall age female paid nyoung, cluster(sess_deliv)
*reg pp_ch_parq_com av_overall , cluster(sess_deliv)
*reg pp_ch_parq_com av_overall age female paid nyoung, cluster(sess_deliv)
*reg pp_ch_parq_prsl av_overall , cluster(sess_deliv)
*reg pp_ch_parq_prsl av_overall age female paid nyoung, cluster(sess_deliv)
*reg pp_ch_parq_coh av_overall , cluster(sess_deliv)
*reg pp_ch_parq_coh av_overall age female paid nyoung, cluster(sess_deliv)
*reg pp_ch_parq_sch av_overall , cluster(sess_deliv)
*reg pp_ch_parq_sch av_overall age female paid nyoung, cluster(sess_deliv)
*reg pp_ch_parq_cnv av_overall , cluster(sess_deliv)
*reg pp_ch_parq_cnv av_overall age female paid nyoung, cluster(sess_deliv)
*reg pp_ch_parq_eat av_overall , cluster(sess_deliv)
*reg pp_ch_parq_eat av_overall age female paid nyoung, cluster(sess_deliv)
*reg pp_ch_parq_malint av_overall , cluster(sess_deliv)
*reg pp_ch_parq_malint av_overall age female paid nyoung, cluster(sess_deliv)
*reg pp_ch_parq_perf av_overall , cluster(sess_deliv)
*reg pp_ch_parq_perf av_overall age female paid nyoung, cluster(sess_deliv)
*reg pp_ch_parq_ruin av_overall , cluster(sess_deliv)
*reg pp_ch_parq_ruin av_overall age female paid nyoung, cluster(sess_deliv)
*reg pp_ch_SIPAmel av_overall , cluster(sess_deliv)
*reg pp_ch_SIPAmel av_overall age female paid nyoung, cluster(sess_deliv)
*reg pp_ch_SIPAiso av_overall , cluster(sess_deliv)
*reg pp_ch_SIPAiso av_overall age female paid nyoung, cluster(sess_deliv)
*reg pp_ch_SIPAdel av_overall , cluster(sess_deliv)
*reg pp_ch_SIPAdel av_overall age female paid nyoung, cluster(sess_deliv)
*reg pp_ch_SIPAach av_overall , cluster(sess_deliv)
*reg pp_ch_SIPAach av_overall age female paid nyoung, cluster(sess_deliv)
*reg pp_ch_SIPAaprd av_overall , cluster(sess_deliv)
*reg pp_ch_SIPAaprd av_overall age female paid nyoung, cluster(sess_deliv)
*reg pp_ch_SIPAsoc av_overall , cluster(sess_deliv)
*reg pp_ch_SIPAsoc av_overall age female paid nyoung, cluster(sess_deliv)
*reg pp_ch_SIPAincwt av_overall , cluster(sess_deliv)
*reg pp_ch_SIPAincwt av_overall age female paid nyoung, cluster(sess_deliv)
*reg pp_ch_SIPAad av_overall , cluster(sess_deliv)
*reg pp_ch_SIPAad av_overall age female paid nyoung, cluster(sess_deliv)
*reg pp_ch_SIPApd av_overall , cluster(sess_deliv)
*reg pp_ch_SIPApd av_overall age female paid nyoung, cluster(sess_deliv)
*reg pp_ch_SIPAts av_overall , cluster(sess_deliv)
*reg pp_ch_SIPAts av_overall age female paid nyoung, cluster(sess_deliv)
*reg pp_ch_SIPA_events av_overall , cluster(sess_deliv)
*reg pp_ch_SIPA_events av_overall age female paid nyoung, cluster(sess_deliv)
*reg pp_ch_monitor av_overall , cluster(sess_deliv)
*reg pp_ch_monitor av_overall age female paid nyoung, cluster(sess_deliv)
*reg pp_ch_disclose av_overall , cluster(sess_deliv)
*reg pp_ch_disclose av_overall age female paid nyoung, cluster(sess_deliv)
*reg pp_ch_solicit av_overall , cluster(sess_deliv)
*reg pp_ch_solicit av_overall age female paid nyoung, cluster(sess_deliv)
*reg pp_ch_control av_overall , cluster(sess_deliv)
*reg pp_ch_control av_overall age female paid nyoung, cluster(sess_deliv)

	****non-linked becuase of lost early rounds and the fact the session plans hadn't started at first wave
	rename deliver lot_deliveryid
	merge m:1 lot_deliveryid using "S:\PTP\PAC 2011\DATA\PAC Data Sets 2011\Final Data\lot_scores.dta",gen(datasess_lot_mrg)

	order allocation attend_patt attend_wks age female paid nyoung ///
	name late_entrant not_registered_parent rct_in pp_in attend_yn ///
	response_patt av_s1 av_s2 av_s3 av_s4 av_s5 av_s6 av_s7 av_s8 ///
	av_overall count_overall avlot_totscore avlot_listen avlot_empathy ///
	avlot_physicalenc avlot_posbeh avlot_parentposbeh avlot_other ///
	avlot_tot_noparent std_avlot_totscore std_avlot_tot_noparent ///
	std_avlot_listen std_avlot_empathy std_avlot_physicalenc ///
	std_avlot_posbeh std_avlot_parentposbeh std_avlot_other

rename lot_deliveryid delivery
f
****Dose-response

**Parent
xtmixed post_ghq pre_ghq attend_wks || delivery:, mle var
xtmixed post_SIPAsoc pre_SIPAsoc attend_wks || delivery:, mle var
xtmixed post_SIPAincwt pre_SIPAincwt attend_wks || delivery:, mle var
xtmixed post_SIPApd pre_SIPApd attend_wks || delivery:, mle var
xtmixed post_SIPAts pre_SIPAts attend_wks || delivery:, mle var
xtmixed post_control pre_control attend_wks || delivery:, mle var
xtmixed post_monitor pre_monitor attend_wks || delivery:, mle var
xtmixed post_solicit pre_solicit attend_wks || delivery:, mle var

**Family
xtmixed post_parq_gds pre_parq_gds attend_wks || delivery:, mle var
xtmixed post_parq_sch pre_parq_sch attend_wks || delivery:, mle var
xtmixed post_parq_eat pre_parq_eat attend_wks || delivery:, mle var
xtmixed post_SIPAaprd pre_SIPAaprd attend_wks || delivery:, mle var
xtmixed post_parq_com pre_parq_com attend_wks || delivery:, mle var
xtmixed post_parq_prsl pre_parq_prsl attend_wks || delivery:, mle var
xtmixed post_parq_coh pre_parq_coh attend_wks || delivery:, mle var
xtmixed post_parq_malint pre_parq_malint attend_wks || delivery:, mle var
xtmixed post_parq_ruin pre_parq_ruin attend_wks || delivery:, mle var
xtmixed post_parq_perf pre_parq_perf attend_wks || delivery:, mle var
xtmixed post_parq_cnv pre_parq_cnv attend_wks || delivery:, mle var


***Teenager
xtmixed post_SIPAmel pre_SIPAmel attend_wks || delivery:, mle var
xtmixed post_SIPAiso pre_SIPAiso attend_wks || delivery:, mle var
xtmixed post_SIPAdel pre_SIPAdel attend_wks || delivery:, mle var
xtmixed post_SIPAach pre_SIPAach attend_wks || delivery:, mle var
xtmixed post_SIPAad pre_SIPAad attend_wks || delivery:, mle var
xtmixed post_disclose pre_disclose attend_wks || delivery:, mle var
	
*reg pp_ch_ghq attend_wks, cluster(lot_deliver)
*reg pp_ch_parq_gds attend_wks, cluster(lot_deliver)
*reg pp_ch_parq_com attend_wks, cluster(lot_deliver)
*reg pp_ch_parq_prsl attend_wks, cluster(lot_deliver)
*reg pp_ch_parq_coh attend_wks, cluster(lot_deliver)
*reg pp_ch_parq_sch attend_wks, cluster(lot_deliver)
*reg pp_ch_parq_cnv attend_wks, cluster(lot_deliver)
*reg pp_ch_parq_eat attend_wks, cluster(lot_deliver)
*reg pp_ch_parq_malint attend_wks, cluster(lot_deliver)
*reg pp_ch_parq_perf attend_wks, cluster(lot_deliver)
*reg pp_ch_parq_ruin attend_wks, cluster(lot_deliver)
*reg pp_ch_SIPAmel attend_wks, cluster(lot_deliver)
*reg pp_ch_SIPAiso attend_wks, cluster(lot_deliver)
*reg pp_ch_SIPAdel attend_wks, cluster(lot_deliver)
**reg pp_ch_SIPAach attend_wks, cluster(lot_deliver)
*reg pp_ch_SIPAaprd attend_wks, cluster(lot_deliver)
*reg pp_ch_SIPAsoc attend_wks, cluster(lot_deliver)
*reg pp_ch_SIPAincwt attend_wks, cluster(lot_deliver)
*reg pp_ch_SIPAad attend_wks, cluster(lot_deliver)
*reg pp_ch_SIPApd attend_wks, cluster(lot_deliver)
*reg pp_ch_SIPAts attend_wks, cluster(lot_deliver)
*reg pp_ch_monitor attend_wks, cluster(lot_deliver)
*reg pp_ch_disclose attend_wks, cluster(lot_deliver)
*reg pp_ch_solicit attend_wks, cluster(lot_deliver)
*reg pp_ch_control attend_wks, cluster(lot_deliver)***

*reg pp_ch_ghq attend_wks age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_parq_gds attend_wks age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_parq_com attend_wks age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_parq_prsl attend_wks age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_parq_coh attend_wks age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_parq_sch attend_wks age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_parq_cnv attend_wks age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_parq_eat attend_wks age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_parq_malint attend_wks age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_parq_perf attend_wks age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_parq_ruin attend_wks age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_SIPAmel attend_wks age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_SIPAiso attend_wks age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_SIPAdel attend_wks age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_SIPAach attend_wks age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_SIPAaprd attend_wks age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_SIPAsoc attend_wks age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_SIPAincwt attend_wks age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_SIPAad attend_wks age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_SIPApd attend_wks age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_SIPAts attend_wks age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_monitor attend_wks age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_disclose attend_wks age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_solicit attend_wks age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_control attend_wks age female paid nyoung, cluster(lot_deliver)*



*Regression coefficients showing the association between Total LOT score and outcome measures

**Parent
xtmixed post_ghq pre_ghq std_avlot_tot_noparent  || delivery:, mle var
xtmixed post_SIPAsoc pre_SIPAsoc std_avlot_tot_noparent  || delivery:, mle var
xtmixed post_SIPAincwt pre_SIPAincwt std_avlot_tot_noparent  || delivery:, mle var
xtmixed post_SIPApd pre_SIPApd std_avlot_tot_noparent  || delivery:, mle var
xtmixed post_SIPAts pre_SIPAts std_avlot_tot_noparent  || delivery:, mle var
xtmixed post_control pre_control std_avlot_tot_noparent  || delivery:, mle var
xtmixed post_monitor pre_monitor std_avlot_tot_noparent  || delivery:, mle var
xtmixed post_solicit pre_solicit std_avlot_tot_noparent  || delivery:, mle var

**Family
xtmixed post_parq_gds pre_parq_gds std_avlot_tot_noparent  || delivery:, mle var
xtmixed post_parq_sch pre_parq_sch std_avlot_tot_noparent  || delivery:, mle var
xtmixed post_parq_eat pre_parq_eat std_avlot_tot_noparent  || delivery:, mle var
xtmixed post_SIPAaprd pre_SIPAaprd std_avlot_tot_noparent  || delivery:, mle var
xtmixed post_parq_com pre_parq_com std_avlot_tot_noparent  || delivery:, mle var
xtmixed post_parq_prsl pre_parq_prsl std_avlot_tot_noparent  || delivery:, mle var
xtmixed post_parq_coh pre_parq_coh std_avlot_tot_noparent  || delivery:, mle var
xtmixed post_parq_malint pre_parq_malint std_avlot_tot_noparent  || delivery:, mle var
xtmixed post_parq_ruin pre_parq_ruin std_avlot_tot_noparent  || delivery:, mle var
xtmixed post_parq_perf pre_parq_perf std_avlot_tot_noparent  || delivery:, mle var
xtmixed post_parq_cnv pre_parq_cnv std_avlot_tot_noparent  || delivery:, mle var


***Teenager
xtmixed post_SIPAmel pre_SIPAmel std_avlot_tot_noparent  || delivery:, mle var
xtmixed post_SIPAiso pre_SIPAiso std_avlot_tot_noparent  || delivery:, mle var
xtmixed post_SIPAdel pre_SIPAdel std_avlot_tot_noparent  || delivery:, mle var
xtmixed post_SIPAach pre_SIPAach std_avlot_tot_noparent  || delivery:, mle var
xtmixed post_SIPAad pre_SIPAad std_avlot_tot_noparent  || delivery:, mle var
xtmixed post_disclose pre_disclose std_avlot_tot_noparent  || delivery:, mle var
	

	
*****Parent participant responsiveness	

	
**Parent
xtmixed post_ghq pre_ghq std_avlot_parentposbeh  || delivery:, mle var
xtmixed post_SIPAsoc pre_SIPAsoc std_avlot_parentposbeh  || delivery:, mle var
xtmixed post_SIPAincwt pre_SIPAincwt std_avlot_parentposbeh  || delivery:, mle var
xtmixed post_SIPApd pre_SIPApd std_avlot_parentposbeh  || delivery:, mle var
xtmixed post_SIPAts pre_SIPAts std_avlot_parentposbeh  || delivery:, mle var
xtmixed post_control pre_control std_avlot_parentposbeh  || delivery:, mle var
xtmixed post_monitor pre_monitor std_avlot_parentposbeh  || delivery:, mle var
xtmixed post_solicit pre_solicit std_avlot_parentposbeh  || delivery:, mle var

**Family
xtmixed post_parq_gds pre_parq_gds std_avlot_parentposbeh  || delivery:, mle var
xtmixed post_parq_sch pre_parq_sch std_avlot_parentposbeh  || delivery:, mle var
xtmixed post_parq_eat pre_parq_eat std_avlot_parentposbeh  || delivery:, mle var
xtmixed post_SIPAaprd pre_SIPAaprd std_avlot_parentposbeh  || delivery:, mle var
xtmixed post_parq_com pre_parq_com std_avlot_parentposbeh  || delivery:, mle var
xtmixed post_parq_prsl pre_parq_prsl std_avlot_parentposbeh  || delivery:, mle var
xtmixed post_parq_coh pre_parq_coh std_avlot_parentposbeh  || delivery:, mle var
xtmixed post_parq_malint pre_parq_malint std_avlot_parentposbeh  || delivery:, mle var
xtmixed post_parq_ruin pre_parq_ruin std_avlot_parentposbeh  || delivery:, mle var
xtmixed post_parq_perf pre_parq_perf std_avlot_parentposbeh  || delivery:, mle var
xtmixed post_parq_cnv pre_parq_cnv std_avlot_parentposbeh  || delivery:, mle var


***Teenager
xtmixed post_SIPAmel pre_SIPAmel std_avlot_parentposbeh  || delivery:, mle var
xtmixed post_SIPAiso pre_SIPAiso std_avlot_parentposbeh  || delivery:, mle var
xtmixed post_SIPAdel pre_SIPAdel std_avlot_parentposbeh  || delivery:, mle var
xtmixed post_SIPAach pre_SIPAach std_avlot_parentposbeh  || delivery:, mle var
xtmixed post_SIPAad pre_SIPAad std_avlot_parentposbeh  || delivery:, mle var
xtmixed post_disclose pre_disclose std_avlot_parentposbeh  || delivery:, mle var
		
****With quintiles	
xtile prnt5=std_avlot_parentposbeh, nq(5)

xtmixed post_ghq pre_ghq i.prnt5|| delivery:, mle var
xtmixed post_SIPAsoc pre_SIPAsoc i.prnt5|| delivery:, mle var
xtmixed post_SIPAincwt pre_SIPAincwt i.prnt5|| delivery:, mle var
xtmixed post_SIPApd pre_SIPApd i.prnt5 || delivery:, mle var
xtmixed post_SIPAts pre_SIPAts i.prnt5  || delivery:, mle var
xtmixed post_control pre_control i.prnt5  || delivery:, mle var
xtmixed post_monitor pre_monitor i.prnt5  || delivery:, mle var
xtmixed post_solicit pre_solicit i.prnt5|| delivery:, mle var

**Family
xtmixed post_parq_gds pre_parq_gds i.prnt5|| delivery:, mle var
xtmixed post_parq_sch pre_parq_sch i.prnt5|| delivery:, mle var
xtmixed post_parq_eat pre_parq_eat i.prnt5|| delivery:, mle var
xtmixed post_SIPAaprd pre_SIPAaprd i.prnt5|| delivery:, mle var
xtmixed post_parq_com pre_parq_com i.prnt5|| delivery:, mle var
xtmixed post_parq_prsl pre_parq_prsl i.prnt5|| delivery:, mle var
xtmixed post_parq_coh pre_parq_coh i.prnt5|| delivery:, mle var
xtmixed post_parq_malint pre_parq_malint i.prnt5|| delivery:, mle var
xtmixed post_parq_ruin pre_parq_ruin i.prnt5 || delivery:, mle var
xtmixed post_parq_perf pre_parq_perf i.prnt5|| delivery:, mle var
xtmixed post_parq_cnv pre_parq_cnv i.prnt5|| delivery:, mle var


***Teenager
xtmixed post_SIPAmel pre_SIPAmel i.prnt5|| delivery:, mle var
xtmixed post_SIPAiso pre_SIPAiso i.prnt5|| delivery:, mle var
xtmixed post_SIPAdel pre_SIPAdel i.prnt5|| delivery:, mle var
xtmixed post_SIPAach pre_SIPAach i.prnt5|| delivery:, mle var
xtmixed post_SIPAad pre_SIPAad i.prnt5|| delivery:, mle var
xtmixed post_disclose pre_disclose i.prnt5|| delivery:, mle var
		

	
	
	
	
***effect of attending as a couple 

recode alloc_doublet (1=1) (else=0), gen(coup)



**Parent
xtmixed post_ghq pre_ghq coup || delivery:, mle var
icc2
**No variation

xtmixed post_SIPAsoc pre_SIPAsoc coup || delivery:, mle var
icc2
xtmixed post_SIPAincwt pre_SIPAincwt coup || delivery:, mle var
icc2
xtmixed post_SIPApd pre_SIPApd coup || delivery:, mle var
icc2
xtmixed post_SIPAts pre_SIPAts coup || delivery:, mle var
icc2
xtmixed post_control pre_control coup || delivery:, mle var
icc2
xtmixed post_monitor pre_monitor coup || delivery:, mle var
icc2
xtmixed post_solicit pre_solicit coup || delivery:, mle var
icc2

**Family
xtmixed post_parq_gds pre_parq_gds coup || delivery:, mle var
icc
xtmixed post_parq_sch pre_parq_sch coup || delivery:, mle var
icc
xtmixed post_parq_eat pre_parq_eat coup || delivery:, mle var
icc
xtmixed post_SIPAaprd pre_SIPAaprd coup || delivery:, mle var
icc

xtmixed post_parq_com pre_parq_com coup || delivery:, mle var
icc
xtmixed post_parq_prsl pre_parq_prsl coup || delivery:, mle var
icc
xtmixed post_parq_coh pre_parq_coh coup || delivery:, mle var
icc

xtmixed post_parq_malint pre_parq_malint coup || delivery:, mle var
icc
xtmixed post_parq_ruin pre_parq_ruin coup || delivery:, mle var
icc
xtmixed post_parq_perf pre_parq_perf coup || delivery:, mle var
icc
xtmixed post_parq_cnv pre_parq_cnv coup || delivery:, mle var
icc


***Teenager

xtmixed post_SIPAmel pre_SIPAmel coup || delivery:, mle var
icc
xtmixed post_SIPAiso pre_SIPAiso coup || delivery:, mle var
icc
xtmixed post_SIPAdel pre_SIPAdel coup || delivery:, mle var
icc
xtmixed post_SIPAach pre_SIPAach coup || delivery:, mle var
icc
xtmixed post_SIPAad pre_SIPAad coup || delivery:, mle var
icc
xtmixed post_disclose pre_disclose coup || delivery:, mle var
icc

	
***File saved to link for teen data based on what's been run above.

order id delivery allocation round site ///
age female paid nyoung attend_yn response_patt datapatt ///
av_overall std_avlot_tot_noparent std_avlot_parentposbeh ///
pp_ch_ghq pp_ch_parq_gds pp_ch_parq_com pp_ch_parq_prsl ///
pp_ch_parq_coh pp_ch_parq_sch pp_ch_parq_cnv pp_ch_parq_eat ///
pp_ch_parq_malint pp_ch_parq_perf pp_ch_parq_ruin pp_ch_SIPArawmel ///
pp_ch_SIPAmel pp_ch_SIPArawiso pp_ch_SIPAiso pp_ch_SIPArawdel ///
pp_ch_SIPAdel pp_ch_SIPArawach pp_ch_SIPAach pp_ch_SIPArawaprd ///
pp_ch_SIPAaprd pp_ch_SIPArawsoc pp_ch_SIPAsoc pp_ch_SIPArawinc ///
pp_ch_SIPArawincwt pp_ch_SIPAinc pp_ch_SIPAincwt pp_ch_SIPArawad ///
pp_ch_SIPAad pp_ch_SIPArawpd pp_ch_SIPApd pp_ch_SIPArawts pp_ch_SIPAts ///
pp_ch_SIPAtsrating pp_ch_SIPAaprdrating pp_ch_SIPApdrating pp_ch_SIPAadrating ///
pp_ch_SIPA_events pp_ch_monitor pp_ch_disclose pp_ch_solicit pp_ch_control ///
pre_ghq post_ghq pre_SIPAsoc post_SIPAsoc pre_SIPAincwt post_SIPAincwt ///
pre_SIPApd post_SIPApd pre_SIPAts post_SIPAts pre_control post_control ///
pre_monitor post_monitor pre_solicit post_solicit pre_parq_gds post_parq_gds ///
pre_parq_sch post_parq_sch pre_parq_eat post_parq_eat pre_SIPAaprd ///
post_SIPAaprd pre_parq_com post_parq_com pre_parq_prsl post_parq_prsl ///
pre_parq_coh post_parq_coh pre_parq_malint post_parq_malint pre_parq_ruin ///
post_parq_ruin pre_parq_perf post_parq_perf pre_parq_cnv post_parq_cnv ///
pre_SIPAmel post_SIPAmel pre_SIPAiso post_SIPAiso pre_SIPAdel ///
post_SIPAdel pre_SIPAach post_SIPAach pre_SIPAad post_SIPAad pre_disclose post_disclose
	
*save "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Final Data\June 25th 2012 Coded Adult Data.dta"





	
*reg pp_ch_ghq std_avlot_tot_noparent , cluster(lot_deliver)
*reg pp_ch_parq_gds std_avlot_tot_noparent, cluster(lot_deliver)
*reg pp_ch_parq_com std_avlot_tot_noparent, cluster(lot_deliver)
*reg pp_ch_parq_prsl std_avlot_tot_noparent, cluster(lot_deliver)
*reg pp_ch_parq_coh std_avlot_tot_noparent, cluster(lot_deliver)
*reg pp_ch_parq_sch std_avlot_tot_noparent, cluster(lot_deliver)
*reg pp_ch_parq_cnv std_avlot_tot_noparent, cluster(lot_deliver)
*reg pp_ch_parq_eat std_avlot_tot_noparent, cluster(lot_deliver)
*reg pp_ch_parq_malint std_avlot_tot_noparent, cluster(lot_deliver)
*reg pp_ch_parq_perf std_avlot_tot_noparent, cluster(lot_deliver)
*reg pp_ch_parq_ruin std_avlot_tot_noparent, cluster(lot_deliver)
*reg pp_ch_SIPAmel std_avlot_tot_noparent, cluster(lot_deliver)
*reg pp_ch_SIPAiso std_avlot_tot_noparent, cluster(lot_deliver)
*reg pp_ch_SIPAdel std_avlot_tot_noparent, cluster(lot_deliver)
*reg pp_ch_SIPAach std_avlot_tot_noparent, cluster(lot_deliver)
*reg pp_ch_SIPAaprd std_avlot_tot_noparent, cluster(lot_deliver)
*reg pp_ch_SIPAsoc std_avlot_tot_noparent, cluster(lot_deliver)
*reg pp_ch_SIPAincwt std_avlot_tot_noparent, cluster(lot_deliver)
*reg pp_ch_SIPAad std_avlot_tot_noparent, cluster(lot_deliver)
*reg pp_ch_SIPApd std_avlot_tot_noparent, cluster(lot_deliver)
*reg pp_ch_SIPAts std_avlot_tot_noparent, cluster(lot_deliver)
*reg pp_ch_monitor std_avlot_tot_noparent, cluster(lot_deliver)
*reg pp_ch_disclose std_avlot_tot_noparent, cluster(lot_deliver)
*reg pp_ch_solicit std_avlot_tot_noparent, cluster(lot_deliver)
*reg pp_ch_control std_avlot_tot_noparent, cluster(lot_deliver)*

*reg pp_ch_ghq std_avlot_tot_noparent age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_parq_gds std_avlot_tot_noparent age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_parq_com std_avlot_tot_noparent age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_parq_prsl std_avlot_tot_noparent age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_parq_coh std_avlot_tot_noparent age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_parq_sch std_avlot_tot_noparent age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_parq_cnv std_avlot_tot_noparent age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_parq_eat std_avlot_tot_noparent age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_parq_malint std_avlot_tot_noparent age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_parq_perf std_avlot_tot_noparent age female paid nyoung, cluster(lot_deliver)
**reg pp_ch_parq_ruin std_avlot_tot_noparent age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_SIPAmel std_avlot_tot_noparent age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_SIPAiso std_avlot_tot_noparent age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_SIPAdel std_avlot_tot_noparent age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_SIPAach std_avlot_tot_noparent age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_SIPAaprd std_avlot_tot_noparent age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_SIPAsoc std_avlot_tot_noparent age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_SIPAincwt std_avlot_tot_noparent age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_SIPAad std_avlot_tot_noparent age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_SIPApd std_avlot_tot_noparent age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_SIPAts std_avlot_tot_noparent age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_monitor std_avlot_tot_noparent age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_disclose std_avlot_tot_noparent age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_solicit std_avlot_tot_noparent age female paid nyoung, cluster(lot_deliver)
*reg pp_ch_control std_avlot_tot_noparent age female paid nyoung, cluster(lot_deliver)

**LOT Listening


reg pp_ch_ghq std_avlot_listen , cluster(lot_deliver)
reg pp_ch_parq_gds std_avlot_listen, cluster(lot_deliver)
reg pp_ch_parq_com std_avlot_listen, cluster(lot_deliver)
reg pp_ch_parq_prsl std_avlot_listen, cluster(lot_deliver)
reg pp_ch_parq_coh std_avlot_listen, cluster(lot_deliver)
reg pp_ch_parq_sch std_avlot_listen, cluster(lot_deliver)
reg pp_ch_parq_cnv std_avlot_listen, cluster(lot_deliver)
reg pp_ch_parq_eat std_avlot_listen, cluster(lot_deliver)
reg pp_ch_parq_malint std_avlot_listen, cluster(lot_deliver)
reg pp_ch_parq_perf std_avlot_listen, cluster(lot_deliver)
reg pp_ch_parq_ruin std_avlot_listen, cluster(lot_deliver)
reg pp_ch_SIPAmel std_avlot_listen, cluster(lot_deliver)
reg pp_ch_SIPAiso std_avlot_listen, cluster(lot_deliver)
reg pp_ch_SIPAdel std_avlot_listen, cluster(lot_deliver)
reg pp_ch_SIPAach std_avlot_listen, cluster(lot_deliver)
reg pp_ch_SIPAaprd std_avlot_listen, cluster(lot_deliver)
reg pp_ch_SIPAsoc std_avlot_listen, cluster(lot_deliver)
reg pp_ch_SIPAincwt std_avlot_listen, cluster(lot_deliver)
reg pp_ch_SIPAad std_avlot_listen, cluster(lot_deliver)
reg pp_ch_SIPApd std_avlot_listen, cluster(lot_deliver)
reg pp_ch_SIPAts std_avlot_listen, cluster(lot_deliver)
reg pp_ch_monitor std_avlot_listen, cluster(lot_deliver)
reg pp_ch_disclose std_avlot_listen, cluster(lot_deliver)
reg pp_ch_solicit std_avlot_listen, cluster(lot_deliver)
reg pp_ch_control std_avlot_listen, cluster(lot_deliver)

reg pp_ch_ghq std_avlot_listen age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_gds std_avlot_listen age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_com std_avlot_listen age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_prsl std_avlot_listen age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_coh std_avlot_listen age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_sch std_avlot_listen age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_cnv std_avlot_listen age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_eat std_avlot_listen age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_malint std_avlot_listen age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_perf std_avlot_listen age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_ruin std_avlot_listen age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAmel std_avlot_listen age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAiso std_avlot_listen age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAdel std_avlot_listen age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAach std_avlot_listen age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAaprd std_avlot_listen age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAsoc std_avlot_listen age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAincwt std_avlot_listen age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAad std_avlot_listen age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPApd std_avlot_listen age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAts std_avlot_listen age female paid nyoung, cluster(lot_deliver)
reg pp_ch_monitor std_avlot_listen age female paid nyoung, cluster(lot_deliver)
reg pp_ch_disclose std_avlot_listen age female paid nyoung, cluster(lot_deliver)
reg pp_ch_solicit std_avlot_listen age female paid nyoung, cluster(lot_deliver)
reg pp_ch_control std_avlot_listen age female paid nyoung, cluster(lot_deliver)




***Lot Empathy

reg pp_ch_ghq std_avlot_empathy , cluster(lot_deliver)
reg pp_ch_parq_gds std_avlot_empathy, cluster(lot_deliver)
reg pp_ch_parq_com std_avlot_empathy, cluster(lot_deliver)
reg pp_ch_parq_prsl std_avlot_empathy, cluster(lot_deliver)
reg pp_ch_parq_coh std_avlot_empathy, cluster(lot_deliver)
reg pp_ch_parq_sch std_avlot_empathy, cluster(lot_deliver)
reg pp_ch_parq_cnv std_avlot_empathy, cluster(lot_deliver)
reg pp_ch_parq_eat std_avlot_empathy, cluster(lot_deliver)
reg pp_ch_parq_malint std_avlot_empathy, cluster(lot_deliver)
reg pp_ch_parq_perf std_avlot_empathy, cluster(lot_deliver)
reg pp_ch_parq_ruin std_avlot_empathy, cluster(lot_deliver)
reg pp_ch_SIPAmel std_avlot_empathy, cluster(lot_deliver)
reg pp_ch_SIPAiso std_avlot_empathy, cluster(lot_deliver)
reg pp_ch_SIPAdel std_avlot_empathy, cluster(lot_deliver)
reg pp_ch_SIPAach std_avlot_empathy, cluster(lot_deliver)
reg pp_ch_SIPAaprd std_avlot_empathy, cluster(lot_deliver)
reg pp_ch_SIPAsoc std_avlot_empathy, cluster(lot_deliver)
reg pp_ch_SIPAincwt std_avlot_empathy, cluster(lot_deliver)
reg pp_ch_SIPAad std_avlot_empathy, cluster(lot_deliver)
reg pp_ch_SIPApd std_avlot_empathy, cluster(lot_deliver)
reg pp_ch_SIPAts std_avlot_empathy, cluster(lot_deliver)
reg pp_ch_monitor std_avlot_empathy, cluster(lot_deliver)
reg pp_ch_disclose std_avlot_empathy, cluster(lot_deliver)
reg pp_ch_solicit std_avlot_empathy, cluster(lot_deliver)
reg pp_ch_control std_avlot_empathy, cluster(lot_deliver)

reg pp_ch_ghq std_avlot_empathy age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_gds std_avlot_empathy age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_com std_avlot_empathy age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_prsl std_avlot_empathy age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_coh std_avlot_empathy age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_sch std_avlot_empathy age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_cnv std_avlot_empathy age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_eat std_avlot_empathy age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_malint std_avlot_empathy age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_perf std_avlot_empathy age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_ruin std_avlot_empathy age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAmel std_avlot_empathy age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAiso std_avlot_empathy age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAdel std_avlot_empathy age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAach std_avlot_empathy age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAaprd std_avlot_empathy age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAsoc std_avlot_empathy age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAincwt std_avlot_empathy age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAad std_avlot_empathy age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPApd std_avlot_empathy age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAts std_avlot_empathy age female paid nyoung, cluster(lot_deliver)
reg pp_ch_monitor std_avlot_empathy age female paid nyoung, cluster(lot_deliver)
reg pp_ch_disclose std_avlot_empathy age female paid nyoung, cluster(lot_deliver)
reg pp_ch_solicit std_avlot_empathy age female paid nyoung, cluster(lot_deliver)
reg pp_ch_control std_avlot_empathy age female paid nyoung, cluster(lot_deliver)




***LOT Physical Encourage



reg pp_ch_ghq std_avlot_physicalenc , cluster(lot_deliver)
reg pp_ch_parq_gds std_avlot_physicalenc, cluster(lot_deliver)
reg pp_ch_parq_com std_avlot_physicalenc, cluster(lot_deliver)
reg pp_ch_parq_prsl std_avlot_physicalenc, cluster(lot_deliver)
reg pp_ch_parq_coh std_avlot_physicalenc, cluster(lot_deliver)
reg pp_ch_parq_sch std_avlot_physicalenc, cluster(lot_deliver)
reg pp_ch_parq_cnv std_avlot_physicalenc, cluster(lot_deliver)
reg pp_ch_parq_eat std_avlot_physicalenc, cluster(lot_deliver)
reg pp_ch_parq_malint std_avlot_physicalenc, cluster(lot_deliver)
reg pp_ch_parq_perf std_avlot_physicalenc, cluster(lot_deliver)
reg pp_ch_parq_ruin std_avlot_physicalenc, cluster(lot_deliver)
reg pp_ch_SIPAmel std_avlot_physicalenc, cluster(lot_deliver)
reg pp_ch_SIPAiso std_avlot_physicalenc, cluster(lot_deliver)
reg pp_ch_SIPAdel std_avlot_physicalenc, cluster(lot_deliver)
reg pp_ch_SIPAach std_avlot_physicalenc, cluster(lot_deliver)
reg pp_ch_SIPAaprd std_avlot_physicalenc, cluster(lot_deliver)
reg pp_ch_SIPAsoc std_avlot_physicalenc, cluster(lot_deliver)
reg pp_ch_SIPAincwt std_avlot_physicalenc, cluster(lot_deliver)
reg pp_ch_SIPAad std_avlot_physicalenc, cluster(lot_deliver)
reg pp_ch_SIPApd std_avlot_physicalenc, cluster(lot_deliver)
reg pp_ch_SIPAts std_avlot_physicalenc, cluster(lot_deliver)
reg pp_ch_monitor std_avlot_physicalenc, cluster(lot_deliver)
reg pp_ch_disclose std_avlot_physicalenc, cluster(lot_deliver)
reg pp_ch_solicit std_avlot_physicalenc, cluster(lot_deliver)
reg pp_ch_control std_avlot_physicalenc, cluster(lot_deliver)

reg pp_ch_ghq std_avlot_physicalenc age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_gds std_avlot_physicalenc age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_com std_avlot_physicalenc age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_prsl std_avlot_physicalenc age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_coh std_avlot_physicalenc age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_sch std_avlot_physicalenc age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_cnv std_avlot_physicalenc age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_eat std_avlot_physicalenc age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_malint std_avlot_physicalenc age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_perf std_avlot_physicalenc age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_ruin std_avlot_physicalenc age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAmel std_avlot_physicalenc age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAiso std_avlot_physicalenc age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAdel std_avlot_physicalenc age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAach std_avlot_physicalenc age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAaprd std_avlot_physicalenc age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAsoc std_avlot_physicalenc age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAincwt std_avlot_physicalenc age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAad std_avlot_physicalenc age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPApd std_avlot_physicalenc age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAts std_avlot_physicalenc age female paid nyoung, cluster(lot_deliver)
reg pp_ch_monitor std_avlot_physicalenc age female paid nyoung, cluster(lot_deliver)
reg pp_ch_disclose std_avlot_physicalenc age female paid nyoung, cluster(lot_deliver)
reg pp_ch_solicit std_avlot_physicalenc age female paid nyoung, cluster(lot_deliver)
reg pp_ch_control std_avlot_physicalenc age female paid nyoung, cluster(lot_deliver)


***LOT Positive Behaviout

reg pp_ch_ghq std_avlot_posbeh , cluster(lot_deliver)
reg pp_ch_parq_gds std_avlot_posbeh, cluster(lot_deliver)
reg pp_ch_parq_com std_avlot_posbeh, cluster(lot_deliver)
reg pp_ch_parq_prsl std_avlot_posbeh, cluster(lot_deliver)
reg pp_ch_parq_coh std_avlot_posbeh, cluster(lot_deliver)
reg pp_ch_parq_sch std_avlot_posbeh, cluster(lot_deliver)
reg pp_ch_parq_cnv std_avlot_posbeh, cluster(lot_deliver)
reg pp_ch_parq_eat std_avlot_posbeh, cluster(lot_deliver)
reg pp_ch_parq_malint std_avlot_posbeh, cluster(lot_deliver)
reg pp_ch_parq_perf std_avlot_posbeh, cluster(lot_deliver)
reg pp_ch_parq_ruin std_avlot_posbeh, cluster(lot_deliver)
reg pp_ch_SIPAmel std_avlot_posbeh, cluster(lot_deliver)
reg pp_ch_SIPAiso std_avlot_posbeh, cluster(lot_deliver)
reg pp_ch_SIPAdel std_avlot_posbeh, cluster(lot_deliver)
reg pp_ch_SIPAach std_avlot_posbeh, cluster(lot_deliver)
reg pp_ch_SIPAaprd std_avlot_posbeh, cluster(lot_deliver)
reg pp_ch_SIPAsoc std_avlot_posbeh, cluster(lot_deliver)
reg pp_ch_SIPAincwt std_avlot_posbeh, cluster(lot_deliver)
reg pp_ch_SIPAad std_avlot_posbeh, cluster(lot_deliver)
reg pp_ch_SIPApd std_avlot_posbeh, cluster(lot_deliver)
reg pp_ch_SIPAts std_avlot_posbeh, cluster(lot_deliver)
reg pp_ch_monitor std_avlot_posbeh, cluster(lot_deliver)
reg pp_ch_disclose std_avlot_posbeh, cluster(lot_deliver)
reg pp_ch_solicit std_avlot_posbeh, cluster(lot_deliver)
reg pp_ch_control std_avlot_posbeh, cluster(lot_deliver)

reg pp_ch_ghq std_avlot_posbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_gds std_avlot_posbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_com std_avlot_posbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_prsl std_avlot_posbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_coh std_avlot_posbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_sch std_avlot_posbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_cnv std_avlot_posbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_eat std_avlot_posbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_malint std_avlot_posbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_perf std_avlot_posbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_ruin std_avlot_posbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAmel std_avlot_posbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAiso std_avlot_posbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAdel std_avlot_posbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAach std_avlot_posbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAaprd std_avlot_posbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAsoc std_avlot_posbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAincwt std_avlot_posbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAad std_avlot_posbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPApd std_avlot_posbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAts std_avlot_posbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_monitor std_avlot_posbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_disclose std_avlot_posbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_solicit std_avlot_posbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_control std_avlot_posbeh age female paid nyoung, cluster(lot_deliver)




***Parent Positive Behaviour








reg pp_ch_ghq std_avlot_parentposbeh , cluster(lot_deliver)
reg pp_ch_parq_gds std_avlot_parentposbeh, cluster(lot_deliver)
reg pp_ch_parq_com std_avlot_parentposbeh, cluster(lot_deliver)
reg pp_ch_parq_prsl std_avlot_parentposbeh, cluster(lot_deliver)
reg pp_ch_parq_coh std_avlot_parentposbeh, cluster(lot_deliver)
reg pp_ch_parq_sch std_avlot_parentposbeh, cluster(lot_deliver)
reg pp_ch_parq_cnv std_avlot_parentposbeh, cluster(lot_deliver)
reg pp_ch_parq_eat std_avlot_parentposbeh, cluster(lot_deliver)
reg pp_ch_parq_malint std_avlot_parentposbeh, cluster(lot_deliver)
reg pp_ch_parq_perf std_avlot_parentposbeh, cluster(lot_deliver)
reg pp_ch_parq_ruin std_avlot_parentposbeh, cluster(lot_deliver)
reg pp_ch_SIPAmel std_avlot_parentposbeh, cluster(lot_deliver)
reg pp_ch_SIPAiso std_avlot_parentposbeh, cluster(lot_deliver)
reg pp_ch_SIPAdel std_avlot_parentposbeh, cluster(lot_deliver)
reg pp_ch_SIPAach std_avlot_parentposbeh, cluster(lot_deliver)
reg pp_ch_SIPAaprd std_avlot_parentposbeh, cluster(lot_deliver)
reg pp_ch_SIPAsoc std_avlot_parentposbeh, cluster(lot_deliver)
reg pp_ch_SIPAincwt std_avlot_parentposbeh, cluster(lot_deliver)
reg pp_ch_SIPAad std_avlot_parentposbeh, cluster(lot_deliver)
reg pp_ch_SIPApd std_avlot_parentposbeh, cluster(lot_deliver)
reg pp_ch_SIPAts std_avlot_parentposbeh, cluster(lot_deliver)
reg pp_ch_monitor std_avlot_parentposbeh, cluster(lot_deliver)
reg pp_ch_disclose std_avlot_parentposbeh, cluster(lot_deliver)
reg pp_ch_solicit std_avlot_parentposbeh, cluster(lot_deliver)
reg pp_ch_control std_avlot_parentposbeh, cluster(lot_deliver)

reg pp_ch_ghq std_avlot_parentposbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_gds std_avlot_parentposbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_com std_avlot_parentposbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_prsl std_avlot_parentposbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_coh std_avlot_parentposbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_sch std_avlot_parentposbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_cnv std_avlot_parentposbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_eat std_avlot_parentposbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_malint std_avlot_parentposbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_perf std_avlot_parentposbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_ruin std_avlot_parentposbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAmel std_avlot_parentposbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAiso std_avlot_parentposbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAdel std_avlot_parentposbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAach std_avlot_parentposbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAaprd std_avlot_parentposbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAsoc std_avlot_parentposbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAincwt std_avlot_parentposbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAad std_avlot_parentposbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPApd std_avlot_parentposbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAts std_avlot_parentposbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_monitor std_avlot_parentposbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_disclose std_avlot_parentposbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_solicit std_avlot_parentposbeh age female paid nyoung, cluster(lot_deliver)
reg pp_ch_control std_avlot_parentposbeh age female paid nyoung, cluster(lot_deliver)


***LOT Other

reg pp_ch_ghq std_avlot_other , cluster(lot_deliver)
reg pp_ch_parq_gds std_avlot_other, cluster(lot_deliver)
reg pp_ch_parq_com std_avlot_other, cluster(lot_deliver)
reg pp_ch_parq_prsl std_avlot_other, cluster(lot_deliver)
reg pp_ch_parq_coh std_avlot_other, cluster(lot_deliver)
reg pp_ch_parq_sch std_avlot_other, cluster(lot_deliver)
reg pp_ch_parq_cnv std_avlot_other, cluster(lot_deliver)
reg pp_ch_parq_eat std_avlot_other, cluster(lot_deliver)
reg pp_ch_parq_malint std_avlot_other, cluster(lot_deliver)
reg pp_ch_parq_perf std_avlot_other, cluster(lot_deliver)
reg pp_ch_parq_ruin std_avlot_other, cluster(lot_deliver)
reg pp_ch_SIPAmel std_avlot_other, cluster(lot_deliver)
reg pp_ch_SIPAiso std_avlot_other, cluster(lot_deliver)
reg pp_ch_SIPAdel std_avlot_other, cluster(lot_deliver)
reg pp_ch_SIPAach std_avlot_other, cluster(lot_deliver)
reg pp_ch_SIPAaprd std_avlot_other, cluster(lot_deliver)
reg pp_ch_SIPAsoc std_avlot_other, cluster(lot_deliver)
reg pp_ch_SIPAincwt std_avlot_other, cluster(lot_deliver)
reg pp_ch_SIPAad std_avlot_other, cluster(lot_deliver)
reg pp_ch_SIPApd std_avlot_other, cluster(lot_deliver)
reg pp_ch_SIPAts std_avlot_other, cluster(lot_deliver)
reg pp_ch_monitor std_avlot_other, cluster(lot_deliver)
reg pp_ch_disclose std_avlot_other, cluster(lot_deliver)
reg pp_ch_solicit std_avlot_other, cluster(lot_deliver)
reg pp_ch_control std_avlot_other, cluster(lot_deliver)

reg pp_ch_ghq std_avlot_other age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_gds std_avlot_other age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_com std_avlot_other age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_prsl std_avlot_other age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_coh std_avlot_other age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_sch std_avlot_other age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_cnv std_avlot_other age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_eat std_avlot_other age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_malint std_avlot_other age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_perf std_avlot_other age female paid nyoung, cluster(lot_deliver)
reg pp_ch_parq_ruin std_avlot_other age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAmel std_avlot_other age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAiso std_avlot_other age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAdel std_avlot_other age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAach std_avlot_other age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAaprd std_avlot_other age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAsoc std_avlot_other age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAincwt std_avlot_other age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAad std_avlot_other age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPApd std_avlot_other age female paid nyoung, cluster(lot_deliver)
reg pp_ch_SIPAts std_avlot_other age female paid nyoung, cluster(lot_deliver)
reg pp_ch_monitor std_avlot_other age female paid nyoung, cluster(lot_deliver)
reg pp_ch_disclose std_avlot_other age female paid nyoung, cluster(lot_deliver)
reg pp_ch_solicit std_avlot_other age female paid nyoung, cluster(lot_deliver)
reg pp_ch_control std_avlot_other age female paid nyoung, cluster(lot_deliver)




*Variation by programme analysis

*age female paid nyoung round av_overall std_avlot_tot_noparent 







**Differentiation

ta attend_patt if pp_in==1 & attend_wk==7, gen(weekmiss)


reg pp_ch_ghq attend_wk weekmiss1, cluster(lot_del)



***Outcome measures, copy, don't cut or use
*There are 26 of them
pp_ch_ghq 
pp_ch_parq_gds 
pp_ch_parq_com 
pp_ch_parq_prsl 
pp_ch_parq_coh 
pp_ch_parq_sch 
pp_ch_parq_cnv 
pp_ch_parq_eat 
pp_ch_parq_malint 
pp_ch_parq_perf 
pp_ch_parq_ruin 
pp_ch_SIPAmel 
pp_ch_SIPAiso 
pp_ch_SIPAdel 
pp_ch_SIPAach 
pp_ch_SIPAaprd 
pp_ch_SIPAsoc 
pp_ch_SIPAincwt 
pp_ch_SIPAad 
pp_ch_SIPApd 
pp_ch_SIPAts 
pp_ch_SIPA_events 
pp_ch_monitor 
pp_ch_disclose 
pp_ch_solicit 
pp_ch_control 



stop............hammertime.

File prep starts here.

Don't run the file prep, the files above should be correct, don't over-write them without the hand-changes

****Leader Observation Tool

***Added in Programme/Waitlist by hand
*use "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Stata Datasets\merged_lot.dta", clear
*replace session=1 if session==11
*replace site=15 if all_video_mrg==1
*label define SITE 15 "Video", add
*label values site SITE
*replace site=1 if notes=="Location 'PAC HQ'"
*replace site=1 if notes=="Location 'PAC HQ'"
*replace raterid=5 if notes=="Researcher 'SB'"
*replace timeslot=2 if notes=="No time slot - 'scenarios discussion'"
*replace session=7 if session==1 & site==5& raterid==1 & timeslot==.
*replace timeslot=2 if session==7 & site==5& raterid==1 & timeslot==.
*gen lot_alloca=.
*label define lot_alloca 0 "Waiting List" 1 "Programme" 
*label values lot_alloca lot_alloca 
*save "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Stata Datasets\final_lot allocation added.dta", 

*****This is the file to work from
use "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Stata Datasets\final_lot allocation added.dta", clear
gen lot_deliveryid=.
replace lot_delivery=1 if site==0 & round==1 &lot_alloc==0
replace lot_delivery=2 if site==0 & round==1 &lot_alloc==1
replace lot_delivery=3 if site==0 & round==2 &lot_alloc==0
replace lot_delivery=4 if site==0 & round==4 &lot_alloc==0
replace lot_delivery=4 if site==0 & round==4 &lot_alloc==0
replace lot_delivery=4 if site==0 & round==4 &lot_alloc==0
replace lot_delivery=4 if site==0 & round==4 &lot_alloc==0
replace lot_delivery=4 if site==0 & round==4 &lot_alloc==0
replace lot_delivery=4 if site==0 & round==4 &lot_alloc==0
replace lot_delivery=4 if site==0 & round==4 &lot_alloc==0
replace lot_delivery=4 if site==0 & round==4 &lot_alloc==0
replace lot_delivery=5 if site==0 & round==4 &lot_alloc==1
replace lot_delivery=5 if site==0 & round==4 &lot_alloc==1
replace lot_delivery=5 if site==0 & round==4 &lot_alloc==1
replace lot_delivery=5 if site==0 & round==4 &lot_alloc==1
replace lot_delivery=5 if site==0 & round==4 &lot_alloc==1
replace lot_delivery=5 if site==0 & round==4 &lot_alloc==1
replace lot_delivery=6 if site==0 & round==5 &lot_alloc==0
replace lot_delivery=7 if site==1 & round==1 &lot_alloc==0
replace lot_delivery=7 if site==1 & round==1 &lot_alloc==0
replace lot_delivery=8 if site==1 & round==1 &lot_alloc==1
replace lot_delivery=8 if site==1 & round==1 &lot_alloc==1
replace lot_delivery=9 if site==1 & round==2 &lot_alloc==0
replace lot_delivery=9 if site==1 & round==2 &lot_alloc==0
replace lot_delivery=9 if site==1 & round==2 &lot_alloc==0
replace lot_delivery=10 if site==1 & round==3 &lot_alloc==0
replace lot_delivery=11 if site==1 & round==3 &lot_alloc==1
replace lot_delivery=11 if site==1 & round==3 &lot_alloc==1
replace lot_delivery=12 if site==1 & round==4 &lot_alloc==1
replace lot_delivery=12 if site==1 & round==4 &lot_alloc==1
replace lot_delivery=12 if site==1 & round==4 &lot_alloc==1
replace lot_delivery=12 if site==1 & round==4 &lot_alloc==1
replace lot_delivery=12 if site==1 & round==4 &lot_alloc==1
replace lot_delivery=12 if site==1 & round==4 &lot_alloc==1
replace lot_delivery=13 if site==1 & round==5 &lot_alloc==0
replace lot_delivery=13 if site==1 & round==5 &lot_alloc==0
replace lot_delivery=13 if site==1 & round==5 &lot_alloc==0
replace lot_delivery=14 if site==1 & round==5 &lot_alloc==1
replace lot_delivery=14 if site==1 & round==5 &lot_alloc==1
replace lot_delivery=15 if site==2 & round==1 &lot_alloc==0
replace lot_delivery=16 if site==2 & round==1 &lot_alloc==1
replace lot_delivery=17 if site==2 & round==3 &lot_alloc==0
replace lot_delivery=17 if site==2 & round==3 &lot_alloc==0
replace lot_delivery=17 if site==2 & round==3 &lot_alloc==0
replace lot_delivery=18 if site==2 & round==3 &lot_alloc==1
replace lot_delivery=19 if site==3 & round==2 &lot_alloc==0
replace lot_delivery=19 if site==3 & round==2 &lot_alloc==0
replace lot_delivery=19 if site==3 & round==2 &lot_alloc==0
replace lot_delivery=19 if site==3 & round==2 &lot_alloc==0
replace lot_delivery=20 if site==3 & round==2 &lot_alloc==1
replace lot_delivery=20 if site==3 & round==2 &lot_alloc==1
replace lot_delivery=21 if site==4 & round==2 &lot_alloc==0
replace lot_delivery=21 if site==4 & round==2 &lot_alloc==0
replace lot_delivery=21 if site==4 & round==2 &lot_alloc==0
replace lot_delivery=21 if site==4 & round==2 &lot_alloc==0
replace lot_delivery=22 if site==5 & round==5 &lot_alloc==0
replace lot_delivery=22 if site==5 & round==5 &lot_alloc==0
replace lot_delivery=22 if site==5 & round==5 &lot_alloc==0
replace lot_delivery=22 if site==5 & round==5 &lot_alloc==0
replace lot_delivery=23 if site==5 & round==5 &lot_alloc==1
replace lot_delivery=23 if site==5 & round==5 &lot_alloc==1
replace lot_delivery=23 if site==5 & round==5 &lot_alloc==1
replace lot_delivery=23 if site==5 & round==5 &lot_alloc==1
replace lot_delivery=23 if site==5 & round==5 &lot_alloc==1
replace lot_delivery=24 if site==6 & round==4 &lot_alloc==0
replace lot_delivery=24 if site==6 & round==4 &lot_alloc==0
replace lot_delivery=24 if site==6 & round==4 &lot_alloc==0
replace lot_delivery=25 if site==6 & round==4 &lot_alloc==1
replace lot_delivery=25 if site==6 & round==4 &lot_alloc==1
replace lot_delivery=25 if site==6 & round==4 &lot_alloc==1
replace lot_delivery=25 if site==6 & round==4 &lot_alloc==1
replace lot_delivery=25 if site==6 & round==4 &lot_alloc==1
replace lot_delivery=25 if site==6 & round==4 &lot_alloc==1
replace lot_delivery=26 if site==7 & round==5 &lot_alloc==0
replace lot_delivery=26 if site==7 & round==5 &lot_alloc==0
replace lot_delivery=26 if site==7 & round==5 &lot_alloc==0
replace lot_delivery=26 if site==7 & round==5 &lot_alloc==0
replace lot_delivery=26 if site==7 & round==5 &lot_alloc==0
replace lot_delivery=26 if site==7 & round==5 &lot_alloc==0
replace lot_delivery=26 if site==7 & round==5 &lot_alloc==0
replace lot_delivery=26 if site==7 & round==5 &lot_alloc==0
replace lot_delivery=27 if site==7 & round==5 &lot_alloc==1
replace lot_delivery=27 if site==7 & round==5 &lot_alloc==1
replace lot_delivery=27 if site==7 & round==5 &lot_alloc==1
replace lot_delivery=27 if site==7 & round==5 &lot_alloc==1
replace lot_delivery=27 if site==7 & round==5 &lot_alloc==1
replace lot_delivery=27 if site==7 & round==5 &lot_alloc==1
replace lot_delivery=28 if site==8 & round==5 &lot_alloc==1
replace lot_delivery=28 if site==8 & round==5 &lot_alloc==1

replace lot_delivery=29 if site==1 & round==2 &lot_alloc==1
replace lot_delivery=30 if site==4 & round==2 &lot_alloc==1

egen listening=rowtotal (rateacknowledgement rateclarifying ratereflectivepersonal ratereflectiveprogramme),missing
egen empathy= rowtotal (ratefeelingsacknowledgement rateselfreflection),missing
egen physicalencour=rowtotal (ratepositivebodylanguage ratepositiveeffect ratephysicalengagement ratephysicalpositive),missing 
egen posbehav= rowtotal (rateengagement rateunderstanding rateroleplay ratepraise rateprinciplereflection ratethoughtprovoking ratereframingchange ratereframingclarity rateengagementall rateenthusiasm),missing
egen parentposbehav= rowtotal (rateparentengagement rateparentengagement rateparentroleplay rateparentpraise rateparentprinciplereflection rateparentreflectivepersonal rateparentpositivebodylanguage rateparentreframingclarity rateparentreframingchange rateparentbreakthrough rateparententhusiasm rateparentsupport),missing
egen other= rowtotal (ratenegativebodylanguageparent ratenegativebodylanguagefacilita ratecriticalparent ratecriticalfacilitator rateclosedquestions rateoffagenda ratetimeoffagenda),missing
egen totscore=rowtotal(listening empathy physical posbeh parentpos)
egen tot_noparent=rowtotal(listening empathy physical posbeh)

egen std_listening=std(listening)
egen std_empathy=std(empathy)
egen std_physicalencour=std(physicalencour)
egen std_posbehav=std(posbehav)
egen std_parentposbehav=std(parentposbehav)
egen std_other=std(other)
egen std_totscore=rowtotal( std_listening std_empathy std_physicalencour std_posbehav std_parentposbehav)
egen std_tot_noparent=rowtotal(std_listening std_empathy std_physical std_posbeh)

order lot_delivery site round lot_alloc sessionwk facilitatorid raterid timeslot




**Video checking for variability in use of LOT


oneway std_listening rateri if site==15 & raterid~=12, tab
oneway std_empathy rateri if site==15 & raterid~=12, tab

oneway std_physicalencour rateri if site==15 & raterid~=12, tab
oneway physicalencour rateri if site==15 & raterid~=12, tab
oneway physicalencour rateri if site==15 & raterid~=12 & raterid~=8, tab

summ physicalencour if site==15 & raterid~=12

oneway std_posbehav rateri if site==15 & raterid~=12, tab
oneway posbehav rateri if site==15 & raterid~=12, tab
oneway posbehav rateri if site==15 & raterid~=12 & raterid~=8, tab

summ posbehav if site==15  & raterid~=12

oneway std_parentposbehav rateri if site==15 & raterid~=12, tab
oneway std_other rateri if site==15 & raterid~=12, tab

oneway std_totscore rateri if site==15 & raterid~=12, tab
oneway std_tot_noparent rateri if site==15 & raterid~=12, tab


order lot_deliver round facilita site lot_all sessionwk totscore tot_noparent listening empathy physical posbeh parentpos other tot_noparent std_listening std_empathy std_physicalencour std_posbehav std_parentposbehav std_other std_totscore std_tot_noparent

keep lot_deliver round facilita site lot_all sessionwk totscore tot_noparent listening empathy physical posbeh parentpos other tot_noparent std_listening std_empathy std_physicalencour std_posbehav std_parentposbehav std_other std_totscore std_tot_noparent

bysort lot_deliv: egen avlot_totscore=mean(totscore)
bysort lot_deliv: egen avlot_tot_noparent=mean(tot_noparent)
bysort lot_deliv: egen avlot_listen=mean(listening)
bysort lot_deliv: egen avlot_empathy=mean(empathy)
bysort lot_deliv: egen avlot_physicalenc=mean(physicalencour)
bysort lot_deliv: egen avlot_posbeh=mean(posbeh)
bysort lot_deliv: egen avlot_parentposbeh=mean(parentposbeh)
bysort lot_deliv: egen avlot_other=mean(other)

bysort lot_deliv: egen std_avlot_totscore=mean(std_totscore)
bysort lot_deliv: egen std_avlot_tot_noparent=mean(std_tot_noparent)
bysort lot_deliv: egen std_avlot_listen=mean(std_listening)
bysort lot_deliv: egen std_avlot_empathy=mean(std_empathy)
bysort lot_deliv: egen std_avlot_physicalenc=mean(std_physicalencour)
bysort lot_deliv: egen std_avlot_posbeh=mean(std_posbeh)
bysort lot_deliv: egen std_avlot_parentposbeh=mean(std_parentposbeh)
bysort lot_deliv: egen std_avlot_other=mean(std_other)

collapse avlot_totscore avlot_tot_noparent avlot_listen avlot_empathy ///
avlot_physicalenc avlot_posbeh avlot_parentposbeh avlot_other std_avlot_totscore ///
std_avlot_tot_noparent std_avlot_listen std_avlot_empathy std_avlot_physicalenc ///
std_avlot_posbeh std_avlot_parentposbeh std_avlot_other, by(lot_del)

label variable avlot_totscore "total LOT score for Programme - other excluded"
label variable avlot_tot_noparent "Total LOT Score, excluding parent response"
label variable avlot_listen "Ave Listening Score for programme"
label variable avlot_empathy "Ave Empathy Score for programme" 
label variable avlot_physicalenc "Ave Physical Encouragement Score for programme"
label variable avlot_posbeh "Ave Positive Behaviour Score for programme"
label variable avlot_parentposbeh "Ave Parent Bahviour Score for programme"
label variable avlot_other"Ave Other Score for programme"


***Table 7: Average, minimum and maximum scores for Leader Observation Tool scales

summ avlot_totscore avlot_tot_noparent avlot_listen ///
avlot_empathy avlot_physicalenc avlot_posbeh ///
avlot_parentposbeh avlot_other


save "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Final Data\lot_scores.dta", 


*oneway listening rateri if deliver==., tab
*oneway empathy rateri if deliver==., tab
*oneway physical rateri if deliver==., tab
*oneway posbeh rateri if deliver==., tab
*oneway parentpos rateri if deliver==., tab
*oneway other rateri if deliver==., tab

*regress listening ib9.rateri
*regress empathy ib9.rateri
*regress physical ib9.rateri
*regress posbeh ib9.rateri
*regress parentpos ib9.rateri
*regress other ib9.rateri

*regress listening i.rateri if deliv==.
*regress empathy i.rateri if deliv==.
*regress physical i.rateri if deliv==.
*regress posbeh i.rateri if deliv==.
*regress parentpos i.rateri if deliv==.
*regress other i.rateri if deliv==.






*oneway totscore rateri if deliv==. & time==1, tab
*oneway totscore rateri if deliv==. & time==2, tab

regress totscore i.rateri if deliv==. & time==1, 
predict t1pred
regress totscore i.rateri if deliv==. & time==2, 
predict t2pred

regress listening i.rateri if deliv==.
predict list_pred
regress empathy i.rateri if deliv==.
predict emp_pred
regress physical i.rateri if deliv==.
predict phys_pred
regress posbeh i.rateri if deliv==.
predict posbeh_pred
regress parentpos i.rateri if deliv==.
predict parent_pred
*regress other i.rateri if deliv==.
*predict other_pred

***There may be variation between sessions, facilitators and time slots within deliveries 


order raterid round facilitatorid site lot_alloca /// 
sessionwk timeslot totscore listening empathy physicalencour posbehav parentposbehav other 

bysort deliv: egen prog_totscore=mean(totscore)

order raterid round facilitatorid site lot_alloca /// 
sessionwk timeslot prog_totscore totscore listening empathy physicalencour posbehav parentposbehav other 

oneway prog_totscore deliv, tab


***



****
*used to create syntax for sess_delivery
*use "S:/ICCR all staff/PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S1_Prepared.dta" , clear
*order site round sess_allo sessionwk facilitatorid raterid s1grandtotal
*keep round site sess_allo sessionwk facilitatorid raterid s1grandtotal
*append using "S:/ICCR all staff/PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S2_Prepared.dta" , 
*keep round site sess_allo sessionwk facilitatorid raterid s1grandtotal s2grandtotal 
*append using "S:/ICCR all staff/PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S3_Prepared.dta" , 
*keep round site sess_allo sessionwk facilitatorid raterid s1grandtotal s2grandtotal s3grandtotal 
*append using "S:/ICCR all staff/PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S4_Prepared.dta" , 
*keep round site sess_allo sessionwk facilitatorid raterid s1grandtotal s2grandtotal s3grandtotal s4grandtotal 
*append using "S:/ICCR all staff/PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S5_Prepared.dta" , 
*keep round site sess_allo sessionwk facilitatorid raterid s1grandtotal s2grandtotal s3grandtotal s4grandtotal s5grandtotal 
*append using "S:/ICCR all staff/PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S6_Prepared.dta" , 
*keep round site sess_allo sessionwk facilitatorid raterid s1grandtotal s2grandtotal s3grandtotal s4grandtotal s5grandtotal s6grandtotal 
*append using "S:/ICCR all staff/PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S7_Prepared.dta" , 
*keep round site sess_allo sessionwk facilitatorid raterid s1grandtotal s2grandtotal s3grandtotal s4grandtotal s5grandtotal s6grandtotal s7grandtotal 
*append using "S:/ICCR all staff/PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S8_Prepared.dta" , 
*keep round site sess_allo sessionwk facilitatorid raterid s1grandtotal s2grandtotal s3grandtotal s4grandtotal s5grandtotal s6grandtotal s7grandtotal s8grandtotal 
*sort site round sess_alloc session
******


use "S:/ICCR all staff/PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S1_Prepared.dta" , clear
gen sess_deliveryid=.
replace sess_delivery=1 if site==0 & round==1 &sess_alloc==0
replace sess_delivery=2 if site==0 & round==1 &sess_alloc==1
replace sess_delivery=3 if site==0 & round==2 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=6 if site==0 & round==5 &sess_alloc==0
replace sess_delivery=7 if site==1 & round==1 &sess_alloc==0
replace sess_delivery=7 if site==1 & round==1 &sess_alloc==0
replace sess_delivery=8 if site==1 & round==1 &sess_alloc==1
replace sess_delivery=8 if site==1 & round==1 &sess_alloc==1
replace sess_delivery=9 if site==1 & round==2 &sess_alloc==0
replace sess_delivery=9 if site==1 & round==2 &sess_alloc==0
replace sess_delivery=9 if site==1 & round==2 &sess_alloc==0
replace sess_delivery=10 if site==1 & round==3 &sess_alloc==0
replace sess_delivery=11 if site==1 & round==3 &sess_alloc==1
replace sess_delivery=11 if site==1 & round==3 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=13 if site==1 & round==5 &sess_alloc==0
replace sess_delivery=13 if site==1 & round==5 &sess_alloc==0
replace sess_delivery=13 if site==1 & round==5 &sess_alloc==0
replace sess_delivery=14 if site==1 & round==5 &sess_alloc==1
replace sess_delivery=14 if site==1 & round==5 &sess_alloc==1
replace sess_delivery=15 if site==2 & round==1 &sess_alloc==0
replace sess_delivery=16 if site==2 & round==1 &sess_alloc==1
replace sess_delivery=17 if site==2 & round==3 &sess_alloc==0
replace sess_delivery=17 if site==2 & round==3 &sess_alloc==0
replace sess_delivery=17 if site==2 & round==3 &sess_alloc==0
replace sess_delivery=18 if site==2 & round==3 &sess_alloc==1
replace sess_delivery=19 if site==3 & round==2 &sess_alloc==0
replace sess_delivery=19 if site==3 & round==2 &sess_alloc==0
replace sess_delivery=19 if site==3 & round==2 &sess_alloc==0
replace sess_delivery=19 if site==3 & round==2 &sess_alloc==0
replace sess_delivery=20 if site==3 & round==2 &sess_alloc==1
replace sess_delivery=20 if site==3 & round==2 &sess_alloc==1
replace sess_delivery=21 if site==4 & round==2 &sess_alloc==0
replace sess_delivery=21 if site==4 & round==2 &sess_alloc==0
replace sess_delivery=21 if site==4 & round==2 &sess_alloc==0
replace sess_delivery=21 if site==4 & round==2 &sess_alloc==0
replace sess_delivery=22 if site==5 & round==5 &sess_alloc==0
replace sess_delivery=22 if site==5 & round==5 &sess_alloc==0
replace sess_delivery=22 if site==5 & round==5 &sess_alloc==0
replace sess_delivery=22 if site==5 & round==5 &sess_alloc==0
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=24 if site==6 & round==4 &sess_alloc==0
replace sess_delivery=24 if site==6 & round==4 &sess_alloc==0
replace sess_delivery=24 if site==6 & round==4 &sess_alloc==0
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=28 if site==8 & round==5 &sess_alloc==1
replace sess_delivery=28 if site==8 & round==5 &sess_alloc==1
**Saved and replaced

use "S:/ICCR all staff/PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S2_Prepared.dta" , clear
gen sess_deliveryid=.
replace sess_delivery=1 if site==0 & round==1 &sess_alloc==0
replace sess_delivery=2 if site==0 & round==1 &sess_alloc==1
replace sess_delivery=3 if site==0 & round==2 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=6 if site==0 & round==5 &sess_alloc==0
replace sess_delivery=7 if site==1 & round==1 &sess_alloc==0
replace sess_delivery=7 if site==1 & round==1 &sess_alloc==0
replace sess_delivery=8 if site==1 & round==1 &sess_alloc==1
replace sess_delivery=8 if site==1 & round==1 &sess_alloc==1
replace sess_delivery=9 if site==1 & round==2 &sess_alloc==0
replace sess_delivery=9 if site==1 & round==2 &sess_alloc==0
replace sess_delivery=9 if site==1 & round==2 &sess_alloc==0
replace sess_delivery=10 if site==1 & round==3 &sess_alloc==0
replace sess_delivery=11 if site==1 & round==3 &sess_alloc==1
replace sess_delivery=11 if site==1 & round==3 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=13 if site==1 & round==5 &sess_alloc==0
replace sess_delivery=13 if site==1 & round==5 &sess_alloc==0
replace sess_delivery=13 if site==1 & round==5 &sess_alloc==0
replace sess_delivery=14 if site==1 & round==5 &sess_alloc==1
replace sess_delivery=14 if site==1 & round==5 &sess_alloc==1
replace sess_delivery=15 if site==2 & round==1 &sess_alloc==0
replace sess_delivery=16 if site==2 & round==1 &sess_alloc==1
replace sess_delivery=17 if site==2 & round==3 &sess_alloc==0
replace sess_delivery=17 if site==2 & round==3 &sess_alloc==0
replace sess_delivery=17 if site==2 & round==3 &sess_alloc==0
replace sess_delivery=18 if site==2 & round==3 &sess_alloc==1
replace sess_delivery=19 if site==3 & round==2 &sess_alloc==0
replace sess_delivery=19 if site==3 & round==2 &sess_alloc==0
replace sess_delivery=19 if site==3 & round==2 &sess_alloc==0
replace sess_delivery=19 if site==3 & round==2 &sess_alloc==0
replace sess_delivery=20 if site==3 & round==2 &sess_alloc==1
replace sess_delivery=20 if site==3 & round==2 &sess_alloc==1
replace sess_delivery=21 if site==4 & round==2 &sess_alloc==0
replace sess_delivery=21 if site==4 & round==2 &sess_alloc==0
replace sess_delivery=21 if site==4 & round==2 &sess_alloc==0
replace sess_delivery=21 if site==4 & round==2 &sess_alloc==0
replace sess_delivery=22 if site==5 & round==5 &sess_alloc==0
replace sess_delivery=22 if site==5 & round==5 &sess_alloc==0
replace sess_delivery=22 if site==5 & round==5 &sess_alloc==0
replace sess_delivery=22 if site==5 & round==5 &sess_alloc==0
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=24 if site==6 & round==4 &sess_alloc==0
replace sess_delivery=24 if site==6 & round==4 &sess_alloc==0
replace sess_delivery=24 if site==6 & round==4 &sess_alloc==0
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=28 if site==8 & round==5 &sess_alloc==1
replace sess_delivery=28 if site==8 & round==5 &sess_alloc==1

use "S:/ICCR all staff/PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S3_Prepared.dta" , clear
gen sess_deliveryid=.
replace sess_delivery=1 if site==0 & round==1 &sess_alloc==0
replace sess_delivery=2 if site==0 & round==1 &sess_alloc==1
replace sess_delivery=3 if site==0 & round==2 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=6 if site==0 & round==5 &sess_alloc==0
replace sess_delivery=7 if site==1 & round==1 &sess_alloc==0
replace sess_delivery=7 if site==1 & round==1 &sess_alloc==0
replace sess_delivery=8 if site==1 & round==1 &sess_alloc==1
replace sess_delivery=8 if site==1 & round==1 &sess_alloc==1
replace sess_delivery=9 if site==1 & round==2 &sess_alloc==0
replace sess_delivery=9 if site==1 & round==2 &sess_alloc==0
replace sess_delivery=9 if site==1 & round==2 &sess_alloc==0
replace sess_delivery=10 if site==1 & round==3 &sess_alloc==0
replace sess_delivery=11 if site==1 & round==3 &sess_alloc==1
replace sess_delivery=11 if site==1 & round==3 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=13 if site==1 & round==5 &sess_alloc==0
replace sess_delivery=13 if site==1 & round==5 &sess_alloc==0
replace sess_delivery=13 if site==1 & round==5 &sess_alloc==0
replace sess_delivery=14 if site==1 & round==5 &sess_alloc==1
replace sess_delivery=14 if site==1 & round==5 &sess_alloc==1
replace sess_delivery=15 if site==2 & round==1 &sess_alloc==0
replace sess_delivery=16 if site==2 & round==1 &sess_alloc==1
replace sess_delivery=17 if site==2 & round==3 &sess_alloc==0
replace sess_delivery=17 if site==2 & round==3 &sess_alloc==0
replace sess_delivery=17 if site==2 & round==3 &sess_alloc==0
replace sess_delivery=18 if site==2 & round==3 &sess_alloc==1
replace sess_delivery=19 if site==3 & round==2 &sess_alloc==0
replace sess_delivery=19 if site==3 & round==2 &sess_alloc==0
replace sess_delivery=19 if site==3 & round==2 &sess_alloc==0
replace sess_delivery=19 if site==3 & round==2 &sess_alloc==0
replace sess_delivery=20 if site==3 & round==2 &sess_alloc==1
replace sess_delivery=20 if site==3 & round==2 &sess_alloc==1
replace sess_delivery=21 if site==4 & round==2 &sess_alloc==0
replace sess_delivery=21 if site==4 & round==2 &sess_alloc==0
replace sess_delivery=21 if site==4 & round==2 &sess_alloc==0
replace sess_delivery=21 if site==4 & round==2 &sess_alloc==0
replace sess_delivery=22 if site==5 & round==5 &sess_alloc==0
replace sess_delivery=22 if site==5 & round==5 &sess_alloc==0
replace sess_delivery=22 if site==5 & round==5 &sess_alloc==0
replace sess_delivery=22 if site==5 & round==5 &sess_alloc==0
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=24 if site==6 & round==4 &sess_alloc==0
replace sess_delivery=24 if site==6 & round==4 &sess_alloc==0
replace sess_delivery=24 if site==6 & round==4 &sess_alloc==0
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=28 if site==8 & round==5 &sess_alloc==1
replace sess_delivery=28 if site==8 & round==5 &sess_alloc==1



use "S:/ICCR all staff/PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S4_Prepared.dta" , clear
gen sess_deliveryid=.
replace sess_delivery=1 if site==0 & round==1 &sess_alloc==0
replace sess_delivery=2 if site==0 & round==1 &sess_alloc==1
replace sess_delivery=3 if site==0 & round==2 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=6 if site==0 & round==5 &sess_alloc==0
replace sess_delivery=7 if site==1 & round==1 &sess_alloc==0
replace sess_delivery=7 if site==1 & round==1 &sess_alloc==0
replace sess_delivery=8 if site==1 & round==1 &sess_alloc==1
replace sess_delivery=8 if site==1 & round==1 &sess_alloc==1
replace sess_delivery=9 if site==1 & round==2 &sess_alloc==0
replace sess_delivery=9 if site==1 & round==2 &sess_alloc==0
replace sess_delivery=9 if site==1 & round==2 &sess_alloc==0
replace sess_delivery=10 if site==1 & round==3 &sess_alloc==0
replace sess_delivery=11 if site==1 & round==3 &sess_alloc==1
replace sess_delivery=11 if site==1 & round==3 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=13 if site==1 & round==5 &sess_alloc==0
replace sess_delivery=13 if site==1 & round==5 &sess_alloc==0
replace sess_delivery=13 if site==1 & round==5 &sess_alloc==0
replace sess_delivery=14 if site==1 & round==5 &sess_alloc==1
replace sess_delivery=14 if site==1 & round==5 &sess_alloc==1
replace sess_delivery=15 if site==2 & round==1 &sess_alloc==0
replace sess_delivery=16 if site==2 & round==1 &sess_alloc==1
replace sess_delivery=17 if site==2 & round==3 &sess_alloc==0
replace sess_delivery=17 if site==2 & round==3 &sess_alloc==0
replace sess_delivery=17 if site==2 & round==3 &sess_alloc==0
replace sess_delivery=18 if site==2 & round==3 &sess_alloc==1
replace sess_delivery=19 if site==3 & round==2 &sess_alloc==0
replace sess_delivery=19 if site==3 & round==2 &sess_alloc==0
replace sess_delivery=19 if site==3 & round==2 &sess_alloc==0
replace sess_delivery=19 if site==3 & round==2 &sess_alloc==0
replace sess_delivery=20 if site==3 & round==2 &sess_alloc==1
replace sess_delivery=20 if site==3 & round==2 &sess_alloc==1
replace sess_delivery=21 if site==4 & round==2 &sess_alloc==0
replace sess_delivery=21 if site==4 & round==2 &sess_alloc==0
replace sess_delivery=21 if site==4 & round==2 &sess_alloc==0
replace sess_delivery=21 if site==4 & round==2 &sess_alloc==0
replace sess_delivery=22 if site==5 & round==5 &sess_alloc==0
replace sess_delivery=22 if site==5 & round==5 &sess_alloc==0
replace sess_delivery=22 if site==5 & round==5 &sess_alloc==0
replace sess_delivery=22 if site==5 & round==5 &sess_alloc==0
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=24 if site==6 & round==4 &sess_alloc==0
replace sess_delivery=24 if site==6 & round==4 &sess_alloc==0
replace sess_delivery=24 if site==6 & round==4 &sess_alloc==0
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=28 if site==8 & round==5 &sess_alloc==1
replace sess_delivery=28 if site==8 & round==5 &sess_alloc==1


use "S:/ICCR all staff/PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S5_Prepared.dta" , clear
gen sess_deliveryid=.
replace sess_delivery=1 if site==0 & round==1 &sess_alloc==0
replace sess_delivery=2 if site==0 & round==1 &sess_alloc==1
replace sess_delivery=3 if site==0 & round==2 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=6 if site==0 & round==5 &sess_alloc==0
replace sess_delivery=7 if site==1 & round==1 &sess_alloc==0
replace sess_delivery=7 if site==1 & round==1 &sess_alloc==0
replace sess_delivery=8 if site==1 & round==1 &sess_alloc==1
replace sess_delivery=8 if site==1 & round==1 &sess_alloc==1
replace sess_delivery=9 if site==1 & round==2 &sess_alloc==0
replace sess_delivery=9 if site==1 & round==2 &sess_alloc==0
replace sess_delivery=9 if site==1 & round==2 &sess_alloc==0
replace sess_delivery=10 if site==1 & round==3 &sess_alloc==0
replace sess_delivery=11 if site==1 & round==3 &sess_alloc==1
replace sess_delivery=11 if site==1 & round==3 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=13 if site==1 & round==5 &sess_alloc==0
replace sess_delivery=13 if site==1 & round==5 &sess_alloc==0
replace sess_delivery=13 if site==1 & round==5 &sess_alloc==0
replace sess_delivery=14 if site==1 & round==5 &sess_alloc==1
replace sess_delivery=14 if site==1 & round==5 &sess_alloc==1
replace sess_delivery=15 if site==2 & round==1 &sess_alloc==0
replace sess_delivery=16 if site==2 & round==1 &sess_alloc==1
replace sess_delivery=17 if site==2 & round==3 &sess_alloc==0
replace sess_delivery=17 if site==2 & round==3 &sess_alloc==0
replace sess_delivery=17 if site==2 & round==3 &sess_alloc==0
replace sess_delivery=18 if site==2 & round==3 &sess_alloc==1
replace sess_delivery=19 if site==3 & round==2 &sess_alloc==0
replace sess_delivery=19 if site==3 & round==2 &sess_alloc==0
replace sess_delivery=19 if site==3 & round==2 &sess_alloc==0
replace sess_delivery=19 if site==3 & round==2 &sess_alloc==0
replace sess_delivery=20 if site==3 & round==2 &sess_alloc==1
replace sess_delivery=20 if site==3 & round==2 &sess_alloc==1
replace sess_delivery=21 if site==4 & round==2 &sess_alloc==0
replace sess_delivery=21 if site==4 & round==2 &sess_alloc==0
replace sess_delivery=21 if site==4 & round==2 &sess_alloc==0
replace sess_delivery=21 if site==4 & round==2 &sess_alloc==0
replace sess_delivery=22 if site==5 & round==5 &sess_alloc==0
replace sess_delivery=22 if site==5 & round==5 &sess_alloc==0
replace sess_delivery=22 if site==5 & round==5 &sess_alloc==0
replace sess_delivery=22 if site==5 & round==5 &sess_alloc==0
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=24 if site==6 & round==4 &sess_alloc==0
replace sess_delivery=24 if site==6 & round==4 &sess_alloc==0
replace sess_delivery=24 if site==6 & round==4 &sess_alloc==0
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=28 if site==8 & round==5 &sess_alloc==1
replace sess_delivery=28 if site==8 & round==5 &sess_alloc==1


use "S:/ICCR all staff/PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S6_Prepared.dta" , clear
gen sess_deliveryid=.
replace sess_delivery=1 if site==0 & round==1 &sess_alloc==0
replace sess_delivery=2 if site==0 & round==1 &sess_alloc==1
replace sess_delivery=3 if site==0 & round==2 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=6 if site==0 & round==5 &sess_alloc==0
replace sess_delivery=7 if site==1 & round==1 &sess_alloc==0
replace sess_delivery=7 if site==1 & round==1 &sess_alloc==0
replace sess_delivery=8 if site==1 & round==1 &sess_alloc==1
replace sess_delivery=8 if site==1 & round==1 &sess_alloc==1
replace sess_delivery=9 if site==1 & round==2 &sess_alloc==0
replace sess_delivery=9 if site==1 & round==2 &sess_alloc==0
replace sess_delivery=9 if site==1 & round==2 &sess_alloc==0
replace sess_delivery=10 if site==1 & round==3 &sess_alloc==0
replace sess_delivery=11 if site==1 & round==3 &sess_alloc==1
replace sess_delivery=11 if site==1 & round==3 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=13 if site==1 & round==5 &sess_alloc==0
replace sess_delivery=13 if site==1 & round==5 &sess_alloc==0
replace sess_delivery=13 if site==1 & round==5 &sess_alloc==0
replace sess_delivery=14 if site==1 & round==5 &sess_alloc==1
replace sess_delivery=14 if site==1 & round==5 &sess_alloc==1
replace sess_delivery=15 if site==2 & round==1 &sess_alloc==0
replace sess_delivery=16 if site==2 & round==1 &sess_alloc==1
replace sess_delivery=17 if site==2 & round==3 &sess_alloc==0
replace sess_delivery=17 if site==2 & round==3 &sess_alloc==0
replace sess_delivery=17 if site==2 & round==3 &sess_alloc==0
replace sess_delivery=18 if site==2 & round==3 &sess_alloc==1
replace sess_delivery=19 if site==3 & round==2 &sess_alloc==0
replace sess_delivery=19 if site==3 & round==2 &sess_alloc==0
replace sess_delivery=19 if site==3 & round==2 &sess_alloc==0
replace sess_delivery=19 if site==3 & round==2 &sess_alloc==0
replace sess_delivery=20 if site==3 & round==2 &sess_alloc==1
replace sess_delivery=20 if site==3 & round==2 &sess_alloc==1
replace sess_delivery=21 if site==4 & round==2 &sess_alloc==0
replace sess_delivery=21 if site==4 & round==2 &sess_alloc==0
replace sess_delivery=21 if site==4 & round==2 &sess_alloc==0
replace sess_delivery=21 if site==4 & round==2 &sess_alloc==0
replace sess_delivery=22 if site==5 & round==5 &sess_alloc==0
replace sess_delivery=22 if site==5 & round==5 &sess_alloc==0
replace sess_delivery=22 if site==5 & round==5 &sess_alloc==0
replace sess_delivery=22 if site==5 & round==5 &sess_alloc==0
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=24 if site==6 & round==4 &sess_alloc==0
replace sess_delivery=24 if site==6 & round==4 &sess_alloc==0
replace sess_delivery=24 if site==6 & round==4 &sess_alloc==0
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=28 if site==8 & round==5 &sess_alloc==1
replace sess_delivery=28 if site==8 & round==5 &sess_alloc==1


use "S:/ICCR all staff/PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S7_Prepared.dta" , clear
gen sess_deliveryid=.
replace sess_delivery=1 if site==0 & round==1 &sess_alloc==0
replace sess_delivery=2 if site==0 & round==1 &sess_alloc==1
replace sess_delivery=3 if site==0 & round==2 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=6 if site==0 & round==5 &sess_alloc==0
replace sess_delivery=7 if site==1 & round==1 &sess_alloc==0
replace sess_delivery=7 if site==1 & round==1 &sess_alloc==0
replace sess_delivery=8 if site==1 & round==1 &sess_alloc==1
replace sess_delivery=8 if site==1 & round==1 &sess_alloc==1
replace sess_delivery=9 if site==1 & round==2 &sess_alloc==0
replace sess_delivery=9 if site==1 & round==2 &sess_alloc==0
replace sess_delivery=9 if site==1 & round==2 &sess_alloc==0
replace sess_delivery=10 if site==1 & round==3 &sess_alloc==0
replace sess_delivery=11 if site==1 & round==3 &sess_alloc==1
replace sess_delivery=11 if site==1 & round==3 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=13 if site==1 & round==5 &sess_alloc==0
replace sess_delivery=13 if site==1 & round==5 &sess_alloc==0
replace sess_delivery=13 if site==1 & round==5 &sess_alloc==0
replace sess_delivery=14 if site==1 & round==5 &sess_alloc==1
replace sess_delivery=14 if site==1 & round==5 &sess_alloc==1
replace sess_delivery=15 if site==2 & round==1 &sess_alloc==0
replace sess_delivery=16 if site==2 & round==1 &sess_alloc==1
replace sess_delivery=17 if site==2 & round==3 &sess_alloc==0
replace sess_delivery=17 if site==2 & round==3 &sess_alloc==0
replace sess_delivery=17 if site==2 & round==3 &sess_alloc==0
replace sess_delivery=18 if site==2 & round==3 &sess_alloc==1
replace sess_delivery=19 if site==3 & round==2 &sess_alloc==0
replace sess_delivery=19 if site==3 & round==2 &sess_alloc==0
replace sess_delivery=19 if site==3 & round==2 &sess_alloc==0
replace sess_delivery=19 if site==3 & round==2 &sess_alloc==0
replace sess_delivery=20 if site==3 & round==2 &sess_alloc==1
replace sess_delivery=20 if site==3 & round==2 &sess_alloc==1
replace sess_delivery=21 if site==4 & round==2 &sess_alloc==0
replace sess_delivery=21 if site==4 & round==2 &sess_alloc==0
replace sess_delivery=21 if site==4 & round==2 &sess_alloc==0
replace sess_delivery=21 if site==4 & round==2 &sess_alloc==0
replace sess_delivery=22 if site==5 & round==5 &sess_alloc==0
replace sess_delivery=22 if site==5 & round==5 &sess_alloc==0
replace sess_delivery=22 if site==5 & round==5 &sess_alloc==0
replace sess_delivery=22 if site==5 & round==5 &sess_alloc==0
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=24 if site==6 & round==4 &sess_alloc==0
replace sess_delivery=24 if site==6 & round==4 &sess_alloc==0
replace sess_delivery=24 if site==6 & round==4 &sess_alloc==0
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=28 if site==8 & round==5 &sess_alloc==1
replace sess_delivery=28 if site==8 & round==5 &sess_alloc==1

use "S:/ICCR all staff/PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S8_Prepared.dta" , clear
gen sess_deliveryid=.
replace sess_delivery=1 if site==0 & round==1 &sess_alloc==0
replace sess_delivery=2 if site==0 & round==1 &sess_alloc==1
replace sess_delivery=3 if site==0 & round==2 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=6 if site==0 & round==5 &sess_alloc==0
replace sess_delivery=7 if site==1 & round==1 &sess_alloc==0
replace sess_delivery=7 if site==1 & round==1 &sess_alloc==0
replace sess_delivery=8 if site==1 & round==1 &sess_alloc==1
replace sess_delivery=8 if site==1 & round==1 &sess_alloc==1
replace sess_delivery=9 if site==1 & round==2 &sess_alloc==0
replace sess_delivery=9 if site==1 & round==2 &sess_alloc==0
replace sess_delivery=9 if site==1 & round==2 &sess_alloc==0
replace sess_delivery=10 if site==1 & round==3 &sess_alloc==0
replace sess_delivery=11 if site==1 & round==3 &sess_alloc==1
replace sess_delivery=11 if site==1 & round==3 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=13 if site==1 & round==5 &sess_alloc==0
replace sess_delivery=13 if site==1 & round==5 &sess_alloc==0
replace sess_delivery=13 if site==1 & round==5 &sess_alloc==0
replace sess_delivery=14 if site==1 & round==5 &sess_alloc==1
replace sess_delivery=14 if site==1 & round==5 &sess_alloc==1
replace sess_delivery=15 if site==2 & round==1 &sess_alloc==0
replace sess_delivery=16 if site==2 & round==1 &sess_alloc==1
replace sess_delivery=17 if site==2 & round==3 &sess_alloc==0
replace sess_delivery=17 if site==2 & round==3 &sess_alloc==0
replace sess_delivery=17 if site==2 & round==3 &sess_alloc==0
replace sess_delivery=18 if site==2 & round==3 &sess_alloc==1
replace sess_delivery=19 if site==3 & round==2 &sess_alloc==0
replace sess_delivery=19 if site==3 & round==2 &sess_alloc==0
replace sess_delivery=19 if site==3 & round==2 &sess_alloc==0
replace sess_delivery=19 if site==3 & round==2 &sess_alloc==0
replace sess_delivery=20 if site==3 & round==2 &sess_alloc==1
replace sess_delivery=20 if site==3 & round==2 &sess_alloc==1
replace sess_delivery=21 if site==4 & round==2 &sess_alloc==0
replace sess_delivery=21 if site==4 & round==2 &sess_alloc==0
replace sess_delivery=21 if site==4 & round==2 &sess_alloc==0
replace sess_delivery=21 if site==4 & round==2 &sess_alloc==0
replace sess_delivery=22 if site==5 & round==5 &sess_alloc==0
replace sess_delivery=22 if site==5 & round==5 &sess_alloc==0
replace sess_delivery=22 if site==5 & round==5 &sess_alloc==0
replace sess_delivery=22 if site==5 & round==5 &sess_alloc==0
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=24 if site==6 & round==4 &sess_alloc==0
replace sess_delivery=24 if site==6 & round==4 &sess_alloc==0
replace sess_delivery=24 if site==6 & round==4 &sess_alloc==0
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=28 if site==8 & round==5 &sess_alloc==1
replace sess_delivery=28 if site==8 & round==5 &sess_alloc==1





use "S:/ICCR all staff/PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S8_early_Prepared.dta" , clear
gen sess_deliveryid=.
replace sess_delivery=1 if site==0 & round==1 &sess_alloc==0
replace sess_delivery=2 if site==0 & round==1 &sess_alloc==1
replace sess_delivery=3 if site==0 & round==2 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=4 if site==0 & round==4 &sess_alloc==0
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=5 if site==0 & round==4 &sess_alloc==1
replace sess_delivery=6 if site==0 & round==5 &sess_alloc==0
replace sess_delivery=7 if site==1 & round==1 &sess_alloc==0
replace sess_delivery=7 if site==1 & round==1 &sess_alloc==0
replace sess_delivery=8 if site==1 & round==1 &sess_alloc==1
replace sess_delivery=8 if site==1 & round==1 &sess_alloc==1
replace sess_delivery=9 if site==1 & round==2 &sess_alloc==0
replace sess_delivery=9 if site==1 & round==2 &sess_alloc==0
replace sess_delivery=9 if site==1 & round==2 &sess_alloc==0
replace sess_delivery=10 if site==1 & round==3 &sess_alloc==0
replace sess_delivery=11 if site==1 & round==3 &sess_alloc==1
replace sess_delivery=11 if site==1 & round==3 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=12 if site==1 & round==4 &sess_alloc==1
replace sess_delivery=13 if site==1 & round==5 &sess_alloc==0
replace sess_delivery=13 if site==1 & round==5 &sess_alloc==0
replace sess_delivery=13 if site==1 & round==5 &sess_alloc==0
replace sess_delivery=14 if site==1 & round==5 &sess_alloc==1
replace sess_delivery=14 if site==1 & round==5 &sess_alloc==1
replace sess_delivery=15 if site==2 & round==1 &sess_alloc==0
replace sess_delivery=16 if site==2 & round==1 &sess_alloc==1
replace sess_delivery=17 if site==2 & round==3 &sess_alloc==0
replace sess_delivery=17 if site==2 & round==3 &sess_alloc==0
replace sess_delivery=17 if site==2 & round==3 &sess_alloc==0
replace sess_delivery=18 if site==2 & round==3 &sess_alloc==1
replace sess_delivery=19 if site==3 & round==2 &sess_alloc==0
replace sess_delivery=19 if site==3 & round==2 &sess_alloc==0
replace sess_delivery=19 if site==3 & round==2 &sess_alloc==0
replace sess_delivery=19 if site==3 & round==2 &sess_alloc==0
replace sess_delivery=20 if site==3 & round==2 &sess_alloc==1
replace sess_delivery=20 if site==3 & round==2 &sess_alloc==1
replace sess_delivery=21 if site==4 & round==2 &sess_alloc==0
replace sess_delivery=21 if site==4 & round==2 &sess_alloc==0
replace sess_delivery=21 if site==4 & round==2 &sess_alloc==0
replace sess_delivery=21 if site==4 & round==2 &sess_alloc==0
replace sess_delivery=22 if site==5 & round==5 &sess_alloc==0
replace sess_delivery=22 if site==5 & round==5 &sess_alloc==0
replace sess_delivery=22 if site==5 & round==5 &sess_alloc==0
replace sess_delivery=22 if site==5 & round==5 &sess_alloc==0
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=23 if site==5 & round==5 &sess_alloc==1
replace sess_delivery=24 if site==6 & round==4 &sess_alloc==0
replace sess_delivery=24 if site==6 & round==4 &sess_alloc==0
replace sess_delivery=24 if site==6 & round==4 &sess_alloc==0
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=25 if site==6 & round==4 &sess_alloc==1
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=26 if site==7 & round==5 &sess_alloc==0
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=27 if site==7 & round==5 &sess_alloc==1
replace sess_delivery=28 if site==8 & round==5 &sess_alloc==1
replace sess_delivery=28 if site==8 & round==5 &sess_alloc==1


****Session plan scoring 
use "S:/PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S1_Prepared.dta" , clear
order sess_deliv site round sess_allo sessionwk facilitatorid raterid s1grandtotal
keep sess_deliv round site sess_allo sessionwk facilitatorid raterid s1grandtotal
append using "S:/PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S2_Prepared.dta" , 
keep sess_deliv round site sess_allo sessionwk facilitatorid raterid s1grandtotal s2grandtotal 
append using "S:/PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S3_Prepared.dta" , 
keep sess_deliv round site sess_allo sessionwk facilitatorid raterid s1grandtotal s2grandtotal s3grandtotal 
append using "S:/PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S4_Prepared.dta" , 
keep sess_deliv round site sess_allo sessionwk facilitatorid raterid s1grandtotal s2grandtotal s3grandtotal s4grandtotal 
append using "S:/PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S5_Prepared.dta" , 
keep sess_deliv round site sess_allo sessionwk facilitatorid raterid s1grandtotal s2grandtotal s3grandtotal s4grandtotal s5grandtotal 
append using "S:/PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S6_Prepared.dta" , 
keep sess_deliv round site sess_allo sessionwk facilitatorid raterid s1grandtotal s2grandtotal s3grandtotal s4grandtotal s5grandtotal s6grandtotal 
append using "S:/PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S7_Prepared.dta" , 
keep sess_deliv round site sess_allo sessionwk facilitatorid raterid s1grandtotal s2grandtotal s3grandtotal s4grandtotal s5grandtotal s6grandtotal s7grandtotal 
append using "S:/PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S8_Prepared.dta" , 
keep sess_deliv round site sess_allo sessionwk facilitatorid raterid s1grandtotal s2grandtotal s3grandtotal s4grandtotal s5grandtotal s6grandtotal s7grandtotal s8grandtotal 
rename s8grandtotal  olds8grandtotal 
append using "S:/PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S8_early_Prepared.dta" , 
rename s8grandtotal early_s8grandtotal
rename olds8grandtotal  s8grandtotal 
keep sess_deliv round site sess_allo sessionwk facilitatorid raterid s1grandtotal s2grandtotal s3grandtotal s4grandtotal s5grandtotal s6grandtotal s7grandtotal s8grandtotal early_s8grandtotal 
sort sess_deliv

egen s1_std=std(s1grand)
egen s2_std=std(s2grand)
egen s3_std=std(s3grand)
egen s4_std=std(s4grand)
egen s5_std=std(s5grand)
egen s6_std=std(s6grand)
egen s7_std=std(s7grand)
egen s8_std=std(s8grand)
egen s8b_std=std(early_s8)
egen s8_final=rowmean(s8_ s8b)

bysort sess_deliv: egen av_s1=mean(s1_std)
bysort sess_deliv: egen av_s2=mean(s2_std)
bysort sess_deliv: egen av_s3=mean(s3_std)
bysort sess_deliv: egen av_s4=mean(s4_std)
bysort sess_deliv: egen av_s5=mean(s5_std)
bysort sess_deliv: egen av_s6=mean(s6_std)
bysort sess_deliv: egen av_s7=mean(s7_std)
bysort sess_deliv: egen av_s8=mean(s8_f)

**Pre-post table 1

summ s1grandtotal s2grandtotal s3grandtotal s4grandtotal s5grandtotal s6grandtotal s7grandtotal s8grandtotal early_s8grandtotal


egen av_overall=rowmean(av_s1 av_s2 av_s3 av_s4 av_s5 av_s6 av_s7 av_s8)
egen count_overall=rownonmiss(av_s1 av_s2 av_s3 av_s4 av_s5 av_s6 av_s7 av_s8)
label variable count_overall "Number of weekly scores in total"
drop if av_overall==.

drop s1_std s2_std s3_std s4_std s5_std s6_std s7_std s8_std s8b_std s8_final s1grandtotal s2grandtotal s3grandtotal s4grandtotal s5grandtotal s6grandtotal s7grandtotal s8grandtotal raterid facili sessionwk round sess_alloc
collapse site-count , by(sess_deli)	 

label variable av_s1 "Session Plan Week 1 average score"
label variable av_s2 "Session Plan Week 2 average score"
label variable av_s3 "Session Plan Week 3 average score"
label variable av_s4 "Session Plan Week 4 average score"
label variable av_s5 "Session Plan Week 5 average score"
label variable av_s6 "Session Plan Week 6 average score"
label variable av_s7 "Session Plan Week 7 average score"
label variable av_s8 "Session Plan Week 8 average score"

label variable av_overall "Session Plan Average score all weeks"
label variable count_overall "Number of weeks' contributing to overall score"

****File with sess_deliveryid for linking
save "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Final Data\session_plan_scores.dta", 

**Pre-post adherence graph
graph hbar (mean) av_overall, over(sess_deliveryid) ytitle(Standardised Programme Adherence Score)
