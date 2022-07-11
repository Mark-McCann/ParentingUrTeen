use "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Data Entry\April Demographics Entry\adult baseline demographics april 23rd 2012.dta",clear

*This list of changes in based on PNI to Allocation list ID lookup.xls 
*Completed by Katrina indicates that Katrina called and verified using our new list ids, hence the id change is not necessary.
*the other changes did take place.
*Completed by Katrina *replace id=99991002 if id== 1002
replace id=99991007 if id== 1007
replace id=99991008 if id== 1008

*Completed by Katrina * replace id=99991010 if id== 1010
*Completed by Katrina * replace id=1010 if id== 1011
*Completed by Katrina * replace id=1011 if id== 1012
*Completed by Katrina * replace id=1012 if id== 1013
*Completed by Katrina * replace id=1013 if id== 1014
**Already have a verified 1014, no need to fix 1015 to create duplicate  * replace id=1014 if id== 1015
replace id=1015 if id== 1016
replace id=1016 if id== 1017
replace id=1017 if id== 1018
* 1019 already verified, no need to * replace id=1018 if id== 1019
**1018 could be recontacted.
replace id=99991020 if id== 1020
replace id=99991021 if id== 1021
replace id=99991022 if id== 1022
replace id=1020 if id== 1023
*Completed by Katrina * replace id=1021 if id== 1024
replace id=99991025 if id== 1025
replace id=1023 if id== 1026
replace id=99991027 if id== 1027
replace id=1025 if id== 1028
replace id=99991029 if id== 1029
replace id=1027 if id== 1030
replace id=99991031 if id== 1031
replace id=99991032 if id== 1032
*Completed by Katrina * replace id=99992010 if id==2010
replace id=99992032 if id==2032
*Completed by Katrina * replace id=99992035 if id==2035
replace id=99992036 if id==2036
replace id=99992037 if id==2037

rename ( age paidemployment occuption nyoung sex1child sex2child sex3child sex4child sex5child sex6child sex7child age1child age2child age3child age4child age5child age6child age7child rel1child rel2child rel3child rel4child rel5child rel6child rel7child relstatus) dem_=
drop base

save "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Final Data\adult baseline demographics_final.dta",replace


***Allocation & Attendance
use "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Final Data\30th may final allocation and attendance list.dta", clear
rename interview_id_code id
rename notes alloc_notes
rename round alloc_round
replace group_allocation ="Waiting List" if group_allocation=="Waiting list"
encode group_allocation,gen(alloc_allocation)
recode alloc_all 2=0
label define alloc_allocation 0 "Waiting list", add
replace location="Belfast" if location=="Belfast "
replace location="Belfast" if location=="Belfast  "
encode location, gen(alloc_site)
drop location
encode doublet, gen(alloc_doublet)
drop doublet
save "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Final Data\allocation list_final_prep.dta", replace


**Adult Follow Up
use "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Data Entry\Surveys\Adult Follow Up_Checked.dta",clear
drop var00001
drop var00002
drop var00003
drop var00004
drop var00005
drop var00006
drop var00007
drop var00008
drop var00009
drop var00010
drop var00011
drop var00012
drop var00013
drop var00014
drop var00015
drop var00016
drop var00017
drop var00018
drop var00019
drop var00020
drop var00021
drop var00022
drop var00023
drop var00024
drop var00025
drop var00026
drop var00027
drop var00028
drop var00029
drop var00030
renpfix  f1
save "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Data Entry\Surveys\adult follow up_final_raw.dta", replace



****Need to stat-transfer this file to restart
use "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Data Entry\Surveys\Adult Follow Up April 2012_Seaneen_Checked.dta", clear
drop if id==88016
renpfix  f1

keep if id==83005|id==83006|id==83011|id==83017|id==83018|id==83021 ///
|id==84012|id==85001|id==86003|id==86006|id==86008|id==86009|id==86014 ///
|id==86015|id==86016|id==87003|id==87006|id==87008|id==87012|id==87013| ///
id==87014|id==88002|id==88004|id==88008|id==88014|id==88020|id==88021|id==88024|id==88029|id==88030

replace time=2
***double entry, already checked
drop if id==83005
drop if id==83021

save "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Data Entry\Surveys\Adult Follow Up 2_Seaneen.dta", replace


use "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Data Entry\Surveys\adult follow up 2_checked.dta"
renpfix  f2
merge 1:1 id using "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Data Entry\Surveys\Adult Follow Up 2_Seaneen.dta", 
save "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Data Entry\Surveys\adult follow up 2 final_raw.dta", replace




**Teen BOS data
**************
use "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Data Entry\Surveys\bos surveys.dta", clear
rename q1 id
rename q2 male
rename q3 baseage
rename q4 ethnicity
rename q5 anyreligion
rename q6 religion
rename q7 culture
rename q8_a niceothers
rename q8_b restless
rename q8_c headache
rename q8_d share
rename q8_e angry
rename q8_f alone
rename q8_g dowottold
rename q8_h worrylot
rename q8_i helpful
rename q8_j fidget
rename q8_k hvegdfriend
rename q8_l fightlot
rename q8_m unhappy
rename q8_n likeme
rename q8_o distracted
rename q8_p nervous
rename q8_q kindyounger
rename q8_r acclying
rename q8_s pickedon
rename q8_t volunteer
rename q8_u thinkbefore
rename q8_v takethings
rename q8_w withadults
rename q8_x fears
rename q8_y finishwrk
rename q9_a fam1
rename q9_b fam2
rename q9_c fam3
rename q9_d fam4
rename q9_e fam5
rename q9_f fam6
rename q9_g fam7
rename q9_h fam8
rename q9_i fam9
rename q9_j fam10
rename q9_k fam11
rename q9_l fam12
rename q9_m fam13
rename q9_n fam14
rename q9_o fam15
rename q9_p fam16
rename q9_q fam17
rename q9_r fam18
rename q9_s fam19
rename q9_t fam20
rename q9_u fam21
rename q9_v fam22
rename q9_w fam23
rename q9_x fam24
rename q9_y fam25
rename q9_z fam26
rename q9_aa fam27
rename q9_ab fam28
rename q9_ac fam29
rename q9_ad fam30
rename q9_ae fam31
rename q9_af fam32
rename q9_ag fam33
rename q9_ah fam34
rename q9_ai fam35
rename q9_aj fam36
rename q9_ak fam37
rename q9_al fam38
rename q9_am fam39
rename q9_an fam40
rename q9_ao fam41
rename q9_ap fam42
rename q9_aq fam43
rename q9_ar fam44
rename q9_as fam45
rename q9_at fam46
rename q9_au fam47
rename q9_av fam48
rename q9_aw fam49
rename q9_ax fam50
rename q9_ay fam51
rename q9_az fam52
rename q9_ba fam53
rename q9_bb fam54
rename q9_bc fam55
rename q9_bd fam56
rename q9_be fam57
rename q9_bf fam58
rename q9_bg fam59
rename q9_bh fam60
rename q9_bi fam61
rename q9_bj fam62
rename q10_a mum1
rename q10_b mum2
rename q10_c mum3
rename q10_d mum4
rename q10_e mum5
rename q10_f mum6
rename q10_g mum7
rename q10_h mum8
rename q10_i mum9
rename q10_j mum10
rename q10_k mum11
rename q10_l mum12
rename q10_m mum13
rename q10_n mum14
rename q10_o mum15
rename q10_p mum16
rename q10_q mum17
rename q10_r mum18
rename q10_s mum19
rename q10_t mum20
rename q10_u mum21
rename q10_v mum22
rename q10_w mum23
rename q10_x mum24
rename q11_a dad1
rename q11_b dad2
rename q11_c dad3
rename q11_d dad4
rename q11_e dad5
rename q11_f dad6
rename q11_g dad7
rename q11_h dad8
rename q11_i dad9
rename q11_j dad10
rename q11_k dad11
rename q11_l dad12
rename q11_m dad13
rename q11_n dad14
rename q11_o dad15
rename q11_p dad16
rename q11_q dad17
rename q11_r dad18
rename q11_s dad19
rename q11_t dad20
rename q11_u dad21
rename q11_v dad22
rename q11_w dad23
rename q11_x dad24
rename q12_a knwfreetime
rename q12_b knwfrnds
rename q12_c knwhomewrk
rename q12_d knwspend
rename q12_e knwexam
rename q12_f knwsubjects
rename q12_g knwgoesnight
rename q12_h knwgoafterschool
rename q12_i knwnoidea
rename q12_j tellprntsbtfrnds
rename q12_k tllprntsschool
rename q12_l secretsprtime
rename q12_m secretwkend
rename q12_n talkeveningout
rename q12_o abtlkchldfriends
rename q12_p convsparetime
rename q12_q convfreetime
rename q12_r prntsextratime
rename q12_s prntaskschool
rename q12_t permstayout
rename q12_u tellbefore
rename q12_v telloutlate
rename q12_w telloutnight
rename q12_x askoutsat
rename q12_y tellspend


drop q*

recode male (1=1) (2=0)
replace ethnicity=0 if ethnicity==8
recode anyreligion (1=1) (2=0)
replace religion="0" if religion=="Catholic"
replace religion="0" if religion=="Protestant"
destring religion, gen(relig2)
gen christian=.
replace christian=6 if religion=="Catholic"
replace christian=10 if religion=="Protestant"
drop religion
rename relig2 religion
replace culture=0 if culture==1
replace culture=1 if culture==2

recode fam1 fam2 fam3 fam4 fam5 fam6 fam7 fam8 fam9 fam10 ///
fam11 fam12 fam13 fam14 fam15 fam16 fam17 fam18 fam19 fam20 ///
fam21 fam22 fam23 fam24 fam25 fam26 fam27 fam28 fam29 fam30 ///
fam31 fam32 fam33 fam34 fam35 fam36 fam37 fam38 fam39 fam40 ///
fam41 fam42 fam43 fam44 fam45 fam46 fam47 fam48 fam49 fam50 ///
fam51 fam52 fam53 fam54 fam55 fam56 fam57 fam58 fam59 fam60 ///
fam61 fam62 mum1 mum2 mum3 mum4 mum5 mum6 mum7 mum8 mum9 mum10 ///
mum11 mum12 mum13 mum14 mum15 mum16 mum17 mum18 mum19 mum20 ///
mum21 mum22 mum23 mum24 dad1 dad2 dad3 dad4 dad5 dad6 dad7 dad8 ///
dad9 dad10 dad11 dad12 dad13 dad14 dad15 dad16 dad17 dad18 dad19 dad20 dad21 dad22 dad23 dad24 (1=1) (2=0)
save "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Data Entry\Surveys\bos surveys_renamed.dta", replace

*Check if 88018 is a follow up, or duplicat baseline
use "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Data Entry\Surveys\bos surveys_renamed.dta", clear
drop if id=="Mark Testing the Survey"
replace id="86008" if id=="6008"
destring id, replace
drop if id==84017 & date=="07/12/2011"
drop if id==86011
drop if id==88018
save "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Data Entry\Surveys\bos teen baseline.dta", replace


use "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Data Entry\Surveys\bos surveys_renamed.dta", clear
drop if id=="Mark Testing the Survey"
replace id="86008" if id=="6008"
destring id, replace
keep if (id==84017&date=="07/12/2011")|id==86011|id==88018
rename knwfreetime statkerrsup1
rename knwfrnds statkerrsup2
rename knwhomewrk statkerrsup3
rename knwspend statkerrsup4
rename knwexam statkerrsup5
rename knwsubjects statkerrsup6
rename knwgoesnight statkerrsup7
rename knwgoafterschool statkerrsup8
rename knwnoidea statkerrsup9
rename tellprntsbtfrnds statkerrdisc1
rename tllprntsschool statkerrdisc2
rename secretsprtime statkerrdisc3
rename secretwkend statkerrdisc4
rename talkeveningout statkerrdisc5
rename abtlkchldfriends statkerrsoli1
rename convsparetime statkerrsoli2
rename convfreetime statkerrsoli3
rename prntsextratime statkerrsoli4
rename prntaskschool statkerrsoli5
rename permstayout statkerraut1
rename tellbefore statkerraut2
rename telloutlate statkerraut3
rename telloutnight statkerraut4
rename askoutsat statkerraut5
rename tellspend statkerraut6
save "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Data Entry\Surveys\bos teen follow up.dta",replace 


***Teen Baseline
use "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Data Entry\Surveys\young person baseline_complete_raffa.dta", clear
replace checked=1 if checked==0
drop if checked~=1
tostring checked,replace
renpfix tb
save "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Data Entry\Surveys\young person baseline_raffa_prep.dta", replace

use "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Data Entry\Surveys\young person baseline_sc.dta", clear
drop if checked==""
renpfix tb
save "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Data Entry\Surveys\young person baseline_sc_prep.dta", replace



************Young person baseline data

use "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Data Entry\Surveys\young person baseline_raffa_prep.dta", 
merge 1:1 id using "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Data Entry\Surveys\young person baseline_sc_prep.dta", update 
drop _m
merge 1:1 id using "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Data Entry\Surveys\bos teen baseline.dta", update replace

save "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Data Entry\Surveys\young person baseline_final_raw.dta", replace


************Young person follow up data
use "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Data Entry\Surveys\young person follow up_sc.dta"
renpfix f1
renpfix tb
drop if check=="Two of this ID?" & id==91026
merge 1:1 id using "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Data Entry\Surveys\bos teen follow up.dta",
save "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Data Entry\Surveys\young person follow up_final_raw.dta",replace


*****PNI registration & Recruitment data
use "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Final Data\pni recruitment data_id added.dta", clear
drop if id==.


replace did_not="Yes" if did_not=="yes"
replace transport="Yes" if transport=="yes"

gen pni_loss=0
replace pni_loss=1 if did_not=="Yes"
replace pni_loss=1 if cancelled=="Yes"
replace pni_loss=1 if work_co=="Yes"
replace pni_loss=1 if illn=="Yes"
replace pni_loss=1 if waitlist_uns=="Yes"
replace pni_loss=1 if holiday=="Yes"
replace pni_loss=1 if childcare=="Yes"
replace pni_loss=1 if transport=="Yes"
replace pni_loss=1 if dates_uns=="Yes"
replace pni_loss=1 if helpline=="Yes"

save "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Final Data\pni recruitment data_id added_prep.dta", replace



******Leader Observation Tool
use "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/leaderobservation_abw.dta" , clear
append using  "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/LOT_SC.dta" , gen(abw_sc_mrg)
append using "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/lotearlyrounds_SC.dta" , gen(late_early_mrg)
append using "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/lot_video.dta" , gen(all_video_mrg)
label variable ratefacinteraction "early LOT with extra facilitator section"
label variable ratefacengagement "early LOT with extra facilitator section"
label variable ratefacroleplay "early LOT with extra facilitator section"
label variable ratefacpraise "early LOT with extra facilitator section"
label variable ratefacprinciplereflection "early LOT with extra facilitator section"
label variable ratefacthoughtprovokin "early LOT with extra facilitator section"
label variable ratefacreframing "early LOT with extra facilitator section"
label variable late_early "Early version of LOT _m"
label variable abw_sc "Entered by Siún _m"
label variable all_video_mrg "Video Lots"
save "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Stata Datasets\merged_lot.dta", replace




***Session Plan 1
use "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/SessionPlan1Rating_ABW.dta" , clear
recode site - s1p13box12 (999=.a) (99=.a) (9999=.a)

egen s1_calcbkgrnddeliv=rowtotal(s1p2box1 s1p2box2 s1p2box3 s1p2box4),missing
egen c1=diff(s1_calcbkgrnddeliv s1scorebkgrnddeliv)
move c1 s1scorebkgrnddeliv 
move s1_calcbkgrnddeliv s1scorebkgrnddeliv 

egen s1_calcfamsystheory=rowtotal(s1p2box5 s1p2box6 s1p2box7 s1p3box1 s1p3box2 s1p3box3 s1p3box4), missing
egen c2=diff(s1_calcfamsystheory s1scorefamsystheory)
move c2 s1scorefamsystheory
move s1_calcfamsystheory s1scorefamsystheory

egen s1_calcchangingrole=rowtotal(s1p3box5 s1p3box6 s1p3box7 s1p3box8 s1p3box9 s1p4box1 s1p4box2 s1p4box3 s1p4box4 s1p4box5),missing
egen c3=diff(s1_calcchangingrole s1scorechangingrole)
move c3 s1scorechangingrole
move s1_calcchangingrole s1scorechangingrole

egen s1_calcwelcome=rowtotal(s1p5box1 s1p5box2 s1p5box3 s1p5box4 s1p5box5 s1p5box6),missing
egen c4=diff(s1_calcwelcome s1scorewelcome)
move c4 s1scorewelcome
move s1_calcwelcome s1scorewelcome

egen s1_calcwelcomenotes=rowtotal(s1p5box7 s1p5box8 s1p5box9),missing
egen c5=diff(s1_calcwelcomenotes s1scorewelcomenotes)
move c5 s1scorewelcomenotes
move s1_calcwelcomenotes s1scorewelcomenotes

egen s1_calchealthsafety=rowtotal(s1p5box10 s1p5box11 s1p5box12 s1p5box13),missing
egen c6=diff(s1_calchealthsafety s1scorehealthsafety)
move c6 s1scorehealthsafety
move s1_calchealthsafety s1scorehealthsafety

egen s1_calcpresprog=rowtotal(s1p7box1 s1p7box2 s1p7box3),missing
egen c7=diff(s1_calcpresprog s1scorepresprog)
move c7 s1scorepresprog
move s1_calcpresprog s1scorepresprog

egen s1_calcpresnotes=rowtotal(s1p7box4 s1p7box5 s1p7box6 s1p7box7 s1p7box8 s1p7box9 s1p7box10 s1p7box11 s1p7box12 s1p7box13),missing
egen c8=diff(s1_calcpresnotes s1scorepresnotes)
move c8 s1scorepresnotes
move s1_calcpresnotes s1scorepresnotes


egen s1_calcendcoursek=rowtotal( s1p7box14 s1p7box15 s1p7box16 s1p7box17 s1p7box18 s1p7box19),missing
egen c9=diff(s1_calcendcoursek s1scoreendcoursek)
move c9 s1scoreendcoursek
move s1_calcendcoursek s1scoreendcoursek

egen s1_calcexerciseexpect=rowtotal(s1p8box1 s1p8box2 s1p8box3 s1p8box4 s1p8box5),missing
egen c10=diff(s1_calcexerciseexpect s1scoreexerciseexpect)
move c10 s1scoreexerciseexpect
move s1_calcexerciseexpect s1scoreexerciseexpect

egen s1_calcgroupagreement=rowtotal(s1p8box6 s1p8box7 s1p8box8 s1p8box9),missing
egen c11=diff(s1_calcgroupagreement s1scoregroupagreement)
move c11 s1scoregroupagreement
move s1_calcgroupagreement s1scoregroupagreement

egen s1_calcconfidentiality=rowtotal(s1p9box1 s1p9box2 s1p9box3),missing
egen c12=diff(s1_calcconfidentiality s1scoreconfidentiality)
move c12 s1scoreconfidentiality
move s1_calcconfidentiality s1scoreconfidentiality

egen s1_calcjigsaw=rowtotal(s1p9box4 s1p9box5 s1p9box6 s1p9box7 s1p9box8 s1p9box9),missing
egen c13=diff(s1_calcjigsaw s1scorejigsaw)
move c13 s1scorejigsaw
move s1_calcjigsaw s1scorejigsaw

egen s1_calcicebreak=rowtotal(s1p9box10 s1p9box11 s1p9box12 s1p9box13),missing
egen c14=diff(s1_calcicebreak s1scoreicebreak)
move c14 s1scoreicebreak
move s1_calcicebreak s1scoreicebreak

egen s1_calcoxmaskex=rowtotal(s1p10box1 s1p10box2 s1p10box3 s1p10box4),missing
egen c15=diff(s1_calcoxmaskex s1scoreoxmaskex)
move c15 s1scoreoxmaskex 
move s1_calcoxmaskex s1scoreoxmaskex

****Checked s1p10box4 - should be included above, not here. Fix applied
egen s1_calcwhatsfam=rowtotal( s1p11box1 s1p11box2 s1p11box3),missing
egen c16 =diff(s1_calcwhatsfam s1scorewhatsfam)
move c16 s1scorewhatsfam
move s1_calcwhatsfam s1scorewhatsfam

egen s1_calcwhatsfamnotes=rowtotal( s1p11box4 s1p11box5),missing
egen c17=diff(s1_calcwhatsfamnotes s1scorewhatsfamnotes)
move c17 s1scorewhatsfamnotes
move s1_calcwhatsfamnotes s1scorewhatsfamnotes

egen s1_calcfamdifferent=rowtotal(s1p11box6 s1p11box7 s1p11box8),missing
egen c18=diff(s1_calcfamdifferent s1scorefamdifferent)
move c18 s1scorefamdifferent
move s1_calcfamdifferent s1scorefamdifferent

egen s1_calcchildmemex=rowtotal(s1p12box1 s1p12box2 s1p12box3 s1p12box4 s1p12box5),missing
egen c19=diff(s1_calcchildmemex s1scorechildmemex)
move c19 s1scorechildmemex
move s1_calcchildmemex s1scorechildmemex

egen s1_calchometask=rowtotal(s1p13box1 s1p13box2 s1p13box3 s1p13box4 s1p13box5),missing
egen c20=diff(s1_calchometask s1scorehometask)
move c20 s1scorehometask
move s1_calchometask s1scorehometask

egen s1_calcobjectives=rowtotal(s1p13box6 s1p13box7 s1p13box8 s1p13box9),missing
egen c21=diff(s1_calcobjectives s1scoreobjectives)
move c21 s1scoreobjectives
move s1_calcobjectives s1scoreobjectives

egen s1_calclearning=rowtotal(s1p13box10 s1p13box11),missing
egen c22=diff(s1_calclearning s1scorelearning)
move c22 s1scorelearning
move s1_calclearning s1scorelearning

order site sessionwk round facilitatorid raterid tick_boxes ///
 s1_calcbkgrnddeliv s1_calcfamsystheory s1_calcchangingrole ///
 s1_calcwelcome s1_calcwelcomenotes s1_calchealthsafety s1_calcpresprog ///
 s1_calcpresnotes s1_calcendcoursek s1_calcexerciseexpect s1_calcgroupagreement ///
 s1_calcconfidentiality s1_calcjigsaw s1_calcicebreak s1_calcoxmaskex s1_calcwhatsfam ///
 s1_calcwhatsfamnotes s1_calcfamdifferent s1_calcchildmemex s1_calchometask s1_calcobjectives s1_calclearning
 
***s1p6box1 and 
***s1p6box2 not totalled
 *****s1p11box9 - isolate item
 
 *Need to add isolates after checking C7 and C9
egen s1grandtotal=rowtotal(s1_calcbkgrnddeliv s1_calcfamsystheory s1_calcchangingrole ///
 s1_calcwelcome s1_calcwelcomenotes s1_calchealthsafety s1_calcpresprog ///
 s1_calcpresnotes s1_calcendcoursek s1_calcexerciseexpect s1_calcgroupagreement ///
 s1_calcconfidentiality s1_calcjigsaw s1_calcicebreak s1_calcoxmaskex s1_calcwhatsfam ///
 s1_calcwhatsfamnotes s1_calcfamdifferent s1_calcchildmemex s1_calchometask s1_calcobjectives s1_calclearning s1p6box1 s1p6box2 s1p11box9),missing

save "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S1_Prepared.dta" , replace

*Hand checking allocation
use "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S1_Prepared.dta" , clear
sort site sessionwk round facilitatorid raterid s1grandtotal
gen sess_alloc=.
gen fac2=.
replace fac2=1 if facilitatorid==2
replace fac2=2 if facilitatorid==3
replace fac2=3 if facilitatorid==1
replace fac2=5 if facilitatorid==4
drop facilitator
rename fac2 facilitatorid
label define FACILITA 1 "shirley" 2 "wendy" 3 "cahir" 4 "jackie" 5 "denise" 6 "doreen", modify
label values facilitatorid FACILITA 
drop if site==.
order sess_all site sessionwk round facili raterid
edit
***lost the creation steps that should be here, do not re-save
save "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S1_Prepared.dta", 



****Session Plan 2
use "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/SessionPlan2RatingSC.dta" , clear

recode site - s2p9box10 (999=.a) (99=.a) (9999=.a)

egen s2_calcobjectives=rowtotal(s2p2box1 s2p2box2 s2p2box3 s2p2box4), missing
egen c1=diff(s2_calcobjectives s2scoreobjectives)
move c1 s2scoreobjectives
move s2_calcobjectives s2scoreobjectives

egen s2_calcbackground=rowtotal(s2p2box5 s2p2box6 s2p2box7 s2p2box8 s2p2box9 s2p2box10 s2p2box11 s2p3box1 s2p3box2 s2p3box3 s2p3box4), missing
egen c2=diff(s2_calcbackground s2scorebackground)
move c2 s2scorebackground
move s2_calcbackground s2scorebackground

egen s2_calcwelcome=rowtotal(s2p4box1 s2p4box2 s2p4box3 s2p4box4 s2p4box5), missing
egen c3=diff(s2_calcwelcome s2scorewelcome)
move c3 s2scorewelcome
move s2_calcwelcome s2scorewelcome

egen s2_calchometask=rowtotal(s2p4box6 s2p4box7 s2p4box8 s2p4box9 s2p4box10 s2p4box11), missing
egen c4=diff(s2_calchometask s2scorehometask)
move c4 s2scorehometask
move s2_calchometask s2scorehometask

egen s2_calcjigsaw=rowtotal(s2p4box12 s2p4box13 s2p4box14 s2p4box15 s2p4box16 s2p4box17 s2p4box18), missing
egen c5=diff(s2_calcjigsaw s2scorejigsaw)
move c5 s2scorejigsaw
move s2_calcjigsaw s2scorejigsaw

egen s2_calchandbooks=rowtotal(s2p5box1 s2p5box2), missing
egen c6=diff(s2_calchandbooks s2scorehandbooks)
move c6 s2scorehandbooks
move s2_calchandbooks s2scorehandbooks

egen s2_calcaimsobjectives=rowtotal(s2p5box3 s2p5box4 s2p5box5 s2p5box6), missing
egen c7=diff(s2_calcaimsobjectives s2scoreaimsobjectives)
move c7 s2scoreaimsobjectives
move s2_calcaimsobjectives s2scoreaimsobjectives

egen s2_calcwordstormstyles=rowtotal(s2p5box7 s2p5box8 s2p5box9 s2p5box10), missing
egen c8=diff(s2_calcwordstormstyles s2scorewordstormstyles)
move c8 s2scorewordstormstyles
move s2_calcwordstormstyles s2scorewordstormstyles

egen s2_calcpresparentingstyles=rowtotal(s2p6box1 s2p6box2 s2p6box3 s2p6box4), missing
egen c9=diff(s2_calcpresparentingstyles s2scorepresparentingstyles)
move c9 s2scorepresparentingstyles
move s2_calcpresparentingstyles s2scorepresparentingstyles

egen s2_calcpresauthoritative=rowtotal(s2p6box5 s2p6box6 s2p6box7 s2p6box8 s2p6box9 s2p6box10 s2p6box11 s2p6box12 s2p6box13 s2p6box14 s2p6box15 s2p6box16 s2p6box17), missing
egen c10=diff(s2_calcpresauthoritative s2scorepresauthoritative)
move c10 s2scorepresauthoritative
move s2_calcpresauthoritative s2scorepresauthoritative

egen s2_calcwordstormauthoritative=rowtotal(s2p6box18 s2p6box19), missing
egen c11=diff(s2_calcwordstormauthoritative s2scorewordstormauthoritative)
move c11 s2scorewordstormauthoritative
move s2_calcwordstormauthoritative s2scorewordstormauthoritative

egen s2_calcpresbenefits=rowtotal(s2p7box1 s2p7box2 s2p7box3 s2p7box4),missing
egen c12=diff(s2_calcpresbenefits s2scorepresbenefits)
move c12 s2scorepresbenefits
move s2_calcpresbenefits s2scorepresbenefits

egen s2_calcscenario=rowtotal(s2p8box1 s2p8box2 s2p8box3 s2p8box4 s2p8box5), missing
egen c13=diff(s2_calcscenario s2scorescenario)
move c13 s2scorescenario
move s2_calcscenario s2scorescenario

egen s2_calctoptips=rowtotal(s2p8box6 s2p8box7 s2p8box8 s2p8box9 s2p8box10 s2p8box11 s2p8box12),missing
egen c14=diff(s2_calctoptips s2scoretoptips)
move c14 s2scoretoptips
move s2_calctoptips s2scoretoptips

egen s2_calcobjectivesreview=rowtotal(s2p9box2 s2p9box3 s2p9box4), missing
egen c15=diff(s2_calcobjectivesreview s2scoreobjectivesreview)
move c15 s2scoreobjectivesreview
move s2_calcobjectivesreview s2scoreobjectivesreview

egen s2_calclearningreview=rowtotal(s2p9box5 s2p9box6), missing
egen c16=diff(s2_calclearningreview s2scorelearningreview)
move c16 s2scorelearningreview
move s2_calclearningreview s2scorelearningreview

egen s2_calchometimetask=rowtotal(s2p9box7 s2p9box8 s2p9box9), missing
egen c17=diff(s2_calchometimetask s2scorehometimetask)
move c17 s2scorehometimetask
move s2_calchometimetask s2scorehometimetask

**Isolate s2p9box1 - presentation difference?
**Isolate s2p9box10 - Proverb & contact

order site sessionwk round facilitatorid raterid s2_calcobjectives ///
s2_calcbackground s2_calcwelcome s2_calchometask s2_calcjigsaw ///
s2_calchandbooks s2_calcaimsobjectives s2_calcwordstormstyles ///
s2_calcpresparentingstyles s2_calcpresauthoritative s2_calcwordstormauthoritative ///
s2_calcpresbenefits s2_calcscenario s2_calctoptips s2_calcobjectivesreview s2_calclearningreview s2_calchometimetask

egen s2grandtotal=rowtotal(s2_calcobjectives ///
s2_calcbackground s2_calcwelcome s2_calchometask s2_calcjigsaw ///
s2_calchandbooks s2_calcaimsobjectives s2_calcwordstormstyles ///
s2_calcpresparentingstyles s2_calcpresauthoritative s2_calcwordstormauthoritative ///
s2_calcpresbenefits s2_calcscenario s2_calctoptips s2_calcobjectivesreview s2_calclearningreview s2_calchometimetask s2p9box1 s2p9box10), missing

save "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S2_Prepared.dta" , 


*Hand checking allocation
use "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S2_Prepared.dta" , clear
sort site sessionwk round facilitatorid raterid s2grandtotal
gen sess_alloc=.
gen fac2=.
replace fac2=1 if facilitatorid==2
replace fac2=2 if facilitatorid==3
replace fac2=3 if facilitatorid==1
replace fac2=5 if facilitatorid==4
drop facilitator
rename fac2 facilitatorid
label define FACILITA 1 "shirley" 2 "wendy" 3 "cahir" 4 "jackie" 5 "denise" 6 "doreen", modify
label values facilitatorid FACILITA 
drop if site==.
order sess_all site sessionwk round facili raterid
edit
. replace sess_alloc = 0 in 1
(1 real change made)

. replace sess_alloc = 0 in 2
(1 real change made)

. replace sess_alloc = 1 in 7
(1 real change made)

. replace sess_alloc = 1 in 6
(1 real change made)

. replace facilitatorid = 1 in 4
(1 real change made)

. replace facilitatorid = 1 in 3
(1 real change made)

. replace sess_alloc = 1 in 4
(1 real change made)

. replace sess_alloc = 1 in 3
(1 real change made)

. replace facilitatorid = 2 in 5
(1 real change made)

. replace sess_alloc = 0 in 5
(1 real change made)

save "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S2_Prepared.dta", 





****Session Plan 3
use "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/SessionPlan3RatingSC.dta" , clear

recode site - s3p13box6 (999=.a) (99=.a) (9999=.a)


egen s3_calcbackground=rowtotal(s3p2box2 s3p2box3 s3p2box4 s3p2box5 s3p2box6 s3p2box7 s3p3box3 s3p3box4 s3p3box5 s3p3box6 s3p3box7 s3p3box8), missing
egen c1=diff(s3_calcbackground s3scorebackground)
move c1 s3scorebackground
move s3_calcbackground s3scorebackground

egen s3_calcbiologicalchange=rowtotal(s3p2box8 s3p3box1 s3p3box2), missing
egen c2=diff(s3_calcbiologicalchange s3scorebiologicalchange)
move c2 s3scorebiologicalchange
move s3_calcbiologicalchange s3scorebiologicalchange 

egen s3_calcabstractdecision=rowtotal(s3p3box9 s3p4box1 s3p4box2 s3p4box3 s3p4box4 s3p4box5),missing
egen c3=diff(s3_calcabstractdecision s3scoreabstractdecision)
move c3 s3scoreabstractdecision
move s3_calcabstractdecision s3scoreabstractdecision

egen s3_calcbehaviourchange=rowtotal(s3p4box6 s3p5box1 s3p5box2 s3p5box3 s3p5box4 s3p5box5 s3p5box6 s3p5box7 s3p5box8 s3p5box9 s3p5box10 s3p6box1), missing
egen c4=diff(s3_calcbehaviourchange s3scorebehaviourchange)
move c4 s3scorebehaviourchange
move s3_calcbehaviourchange s3scorebehaviourchange

rename s3legalagelimits s3scorelegalagelimits

egen s3_calclegalagelimits=rowtotal(s3p6box2 s3p6box3 s3p6box4), missing
egen c5=diff(s3_calclegalagelimits s3scorelegalagelimits)
move c5 s3scorelegalagelimits
move s3_calclegalagelimits s3scorelegalagelimits

egen s3_calcwelcome=rowtotal(s3p7box1 s3p7box2 s3p7box3 s3p7box4 s3p7box5 s3p7box6), missing
egen c6=diff(s3_calcwelcome s3scorewelcome)
move c6 s3scorewelcome
move s3_calcwelcome s3scorewelcome

egen s3_calchometaskreview=rowtotal(s3p7box7 s3p7box8 s3p7box9 s3p7box10 s3p7box11), missing
egen c7=diff(s3_calchometaskreview s3scorehometaskreview)
move c7 s3scorehometaskreview
move s3_calchometaskreview s3scorehometaskreview

egen s3_calcjigsaw=rowtotal(s3p7box12 s3p7box13 s3p7box14 s3p7box15 s3p7box16 s3p7box17 s3p7box18), missing
egen c8=diff(s3_calcjigsaw s3scorejigsaw)
move c8 s3scorejigsaw
move s3_calcjigsaw s3scorejigsaw

egen s3_calchandbooks=rowtotal(s3p8box1 s3p8box2), missing
egen c9=diff(s3_calchandbooks s3scorehandbooks)
move c9 s3scorehandbooks
move s3_calchandbooks s3scorehandbooks

egen s3_calcaimsobjectives=rowtotal(s3p8box3 s3p8box4 s3p8box5 s3p8box6 s3p8box7 s3p8box8 s3p8box9 s3p8box10), missing
egen c10=diff(s3_calcaimsobjectives s3scoreaimsobjectives)
move c10 s3scoreaimsobjectives
move s3_calcaimsobjectives s3scoreaimsobjectives

egen s3_calcexercise1=rowtotal(s3p9box1 s3p9box2 s3p9box3), missing
egen c11=diff(s3_calcexercise1 s3scoreexercise1)
move c11 s3scoreexercise1
move s3_calcexercise1 s3scoreexercise1

egen s3_calcexercise2=rowtotal(s3p10box1 s3p10box2 s3p10box3 s3p10box4 s3p10box5), missing
egen c12=diff(s3_calcexercise2 s3scoreexercise2)
move c12 s3scoreexercise2
move s3_calcexercise2 s3scoreexercise2

egen s3_calcrisk=rowtotal(s3p10box6 s3p10box7 s3p10box8), missing
egen c13=diff(s3_calcrisk s3scorerisk)
move c13 s3scorerisk
move s3_calcrisk s3scorerisk

egen s3_calcexercise3=rowtotal(s3p11box1 s3p11box2 s3p11box3 s3p11box4 s3p11box5 s3p11box6 s3p11box7), missing
egen c14=diff(s3_calcexercise3 s3scoreexercise3)
move c14 s3scoreexercise3
move s3_calcexercise3 s3scoreexercise3

egen s3_calcpresentation=rowtotal(s3p12box1 s3p12box2 s3p12box3 s3p12box4 s3p12box5 s3p12box6 s3p12box7 s3p12box8 s3p12box9 s3p12box10), missing
egen c15=diff(s3_calcpresentation s3scorepresentation)
move c15 s3scorepresentation
move s3_calcpresentation s3scorepresentation

egen s3_calcrisknotes=rowtotal(s3p12box11 s3p12box12 s3p12box13), missing
egen c16=diff(s3_calcrisknotes s3scorerisknotes)
move c16 s3scorerisknotes
move s3_calcrisknotes s3scorerisknotes

egen s3_calcobjectivereview=rowtotal(s3p12box14 s3p12box15 s3p12box16 s3p12box17), missing
egen c17=diff(s3_calcobjectivereview s3scoreobjectivereview)
move c17 s3scoreobjectivereview
move s3_calcobjectivereview s3scoreobjectivereview

egen s3_calclearningreview=rowtotal(s3p13box1 s3p13box2), missing
egen c18=diff(s3_calclearningreview s3scorelearningreview)
move c18 s3scorelearningreview
move s3_calclearningreview s3scorelearningreview

egen s3_calchometask=rowtotal(s3p13box3 s3p13box4 s3p13box5), missing
egen c19=diff(s3_calchometask s3scorehometask)
move c19 s3scorehometask
move s3_calchometask s3scorehometask


order site sessionwk round facilitatorid raterid ///
s3_calcbiologicalchange s3_calcbackground s3_calcabstractdecision ///
s3_calcbehaviourchange s3_calclegalagelimits s3_calcwelcome ///
s3_calchometaskreview s3_calcjigsaw s3_calchandbooks s3_calcaimsobjectives ///
s3_calcexercise1 s3_calcexercise2 s3_calcrisk s3_calcexercise3 ///
s3_calcpresentation s3_calcrisknotes s3_calcobjectivereview s3_calclearningreview s3_calchometask

**s3p9box4 isolate
**s3p13box6 isolate

egen s3grandtotal=rowtotal(s3_calcbiologicalchange s3_calcbackground s3_calcabstractdecision ///
s3_calcbehaviourchange s3_calclegalagelimits s3_calcwelcome ///
s3_calchometaskreview s3_calcjigsaw s3_calchandbooks s3_calcaimsobjectives ///
s3_calcexercise1 s3_calcexercise2 s3_calcrisk s3_calcexercise3 ///
s3_calcpresentation s3_calcrisknotes s3_calcobjectivereview s3_calclearningreview s3_calchometask s3p9box4 s3p13box6) 

save "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S3_Prepared.dta" , 

*Hand checking allocation
use "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S3_Prepared.dta" , clear
sort site sessionwk round facilitatorid raterid s3grandtotal 
gen sess_alloc=.
gen fac2=.
replace fac2=1 if facilitatorid==2
replace fac2=2 if facilitatorid==3
replace fac2=3 if facilitatorid==1
replace fac2=5 if facilitatorid==4
drop facilitator
rename fac2 facilitatorid
label define FACILITA 1 "shirley" 2 "wendy" 3 "cahir" 4 "jackie" 5 "denise" 6 "doreen", modify
label values facilitatorid FACILITA 
drop if site==.
order sess_all site sessionwk round facili raterid
edit

. replace sess_alloc = 0 in 1
(1 real change made)

. replace sess_alloc = 1 in 6
(1 real change made)

. replace sess_alloc = 0 in 9
(1 real change made)

. replace sess_alloc = 0 in 8
(1 real change made)

. replace sess_alloc = 0 in 4
(1 real change made)

. replace sess_alloc = 0 in 11
(1 real change made)

. replace sess_alloc = 0 in 7
(1 real change made)

. replace round = 1 in 7
(1 real change made)

. replace sess_alloc = 0 in 2
(1 real change made)

. replace sess_alloc = 0 in 10
(1 real change made)

. replace sess_alloc = 0 in 12
(1 real change made)

. replace sess_alloc = 0 in 13
(1 real change made)

. replace sess_alloc = 1 in 5
(1 real change made)

. replace sess_alloc = 0 in 3
(1 real change made)

. 
save "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S3_Prepared.dta", 



***Session Plan 4
use "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/SessionPlan4RatingSC.dta" , clear

recode site - s4scorehometask (999=.a) (99=.a) (9999=.a)
egen s4_calcaimsobs=rowtotal(s4p2box1 s4p2box2 s4p2box3 s4p2box4), missing
egen c1=diff(s4_calcaimsobs s4scoreaimsobs)
move c1 s4scoreaimsobs
move s4_calcaimsobs s4scoreaimsobs

egen s4_calcbackground=rowtotal(s4p2box5 s4p2box6 s4p2box7 s4p2box8 s4p2box9 s4p2box10 s4p2box11), missing
egen c2=diff(s4_calcbackground s4scorebackground)
move c2 s4scorebackground
move s4_calcbackground s4scorebackground

egen s4_calcselfconcept=rowtotal(s4p3box1 s4p3box2 s4p3box3 s4p3box4), missing
egen c3=diff(s4_calcselfconcept s4scoreselfconcept)
move c3 s4scoreselfconcept
move s4_calcselfconcept s4scoreselfconcept

egen s4_calcselfesteem=rowtotal(s4p3box5 s4p3box6 s4p3box7 s4p3box8 s4p4box1 s4p4box2 s4p4box3), missing
egen c4=diff(s4_calcselfesteem s4scoreselfesteem)
move c4 s4scoreselfesteem
move s4_calcselfesteem s4scoreselfesteem

egen s4_calcinterpretation=rowtotal(s4p4box4 s4p4box5), missing
egen c5=diff(s4_calcinterpretation s4scoreinterpretation)
move c5 s4scoreinterpretation
move s4_calcinterpretation s4scoreinterpretation

rename s4pbox1 s4p5box1 
egen s4_calcwelcome=rowtotal(s4p5box1 s4p5box2 s4p5box3 s4p5box4 s4p5box5 s4p5box6), missing
egen c6=diff(s4_calcwelcome s4scorewelcome)
move c6 s4scorewelcome
move s4_calcwelcome s4scorewelcome

egen s4_calchometaskreview=rowtotal(s4p5box7 s4p5box8 s4p5box9 s4p5box10 s4p5box11), missing
egen c7=diff(s4_calchometaskreview s4scorehometaskreview)
move c7 s4scorehometaskreview
move s4_calchometaskreview s4scorehometaskreview

egen s4_calcjigsaw=rowtotal(s4p5box12 s4p5box13 s4p5box14 s4p5box15), missing
egen c8=diff(s4_calcjigsaw s4scorejigsaw)
move c8 s4scorejigsaw
move s4_calcjigsaw s4scorejigsaw

egen s4_calchandbooks=rowtotal(s4p6box1 s4p6box2), missing
egen c9=diff(s4_calchandbooks s4scorehandbooks)
move c9 s4scorehandbooks
move s4_calchandbooks s4scorehandbooks

egen s4_calcaimsobjectives=rowtotal(s4p6box3 s4p6box4 s4p6box5 s4p6box6 s4p6box7), missing
egen c10=diff(s4_calcaimsobjectives s4scoreaimsobjectives)
move c10 s4scoreaimsobjectives
move s4_calcaimsobjectives s4scoreaimsobjectives

egen s4_calcpresesteemconcept=rowtotal(s4p7box1 s4p7box2 s4p7box3 s4p7box4 s4p7box5 s4p7box6), missing
egen c11=diff(s4_calcpresesteemconcept s4scorepresesteemconcept)
move c11 s4scorepresesteemconcept
move s4_calcpresesteemconcept s4scorepresesteemconcept

egen s4_calcexercise=rowtotal(s4p8box1 s4p8box2 s4p8box3), missing
egen c12=diff(s4_calcexercise s4scoreexercise)
move c12 s4scoreexercise
move s4_calcexercise s4scoreexercise

egen s4_calcresilienceexplained=rowtotal(s4p8box4 s4p8box5 s4p8box6 s4p8box7 s4p8box8 s4p8box9), missing
egen c13=diff(s4_calcresilienceexplained s4scoreresilienceexplained)
move c13 s4scoreresilienceexplained
move s4_calcresilienceexplained s4scoreresilienceexplained

egen s4_calcexercise2=rowtotal(s4p9box1 s4p9box2 s4p9box3 s4p9box4 s4p9box5 s4p9box6 s4p9box7 s4p9box8 s4p9box9 s4p9box10), missing
egen c14=diff(s4_calcexercise2 s4scoreexercise2)
move c14 s4scoreexercise2
move s4_calcexercise2 s4scoreexercise2

egen s4_calcdvdexplained=rowtotal(s4p10box1 s4p10box2), missing
egen c15=diff(s4_calcdvdexplained s4scoredvdexplained)
move c15 s4scoredvdexplained
move s4_calcdvdexplained s4scoredvdexplained

egen s4_calcdvdreflect=rowtotal(s4p10box3 s4p10box4 s4p10box5), missing
egen c16=diff(s4_calcdvdreflect s4scoredvdreflect)
move c16 s4scoredvdreflect
move s4_calcdvdreflect s4scoredvdreflect

egen s4_calcscenariosintro=rowtotal(s4p11box1 s4p11box2 s4p11box3 s4p11box4 s4p11box5 s4p11box6), missing
egen c17=diff(s4_calcscenariosintro s4scorescenariosintro)
move c17 s4scorescenariosintro
move s4_calcscenariosintro s4scorescenariosintro

egen s4_calcscenariooutcome=rowtotal(s4p11box7 s4p11box8 s4p11box9 s4p11box10 s4p11box11 s4p11box12 s4p11box13 s4p11box14 s4p11box15 s4p11box16 s4p11box17 s4p11box18), missing
egen c18=diff(s4_calcscenariooutcome s4scorescenariooutcome)
move c18 s4scorescenariooutcome
move s4_calcscenariooutcome s4scorescenariooutcome

egen s4_calcwordstorm=rowtotal(s4p12box1 s4p12box2 s4p12box3 s4p12box4 s4p12box5 s4p12box6 s4p12box7 s4p12box8 s4p12box9), missing
egen c19=diff(s4_calcwordstorm s4scorewordstorm)
move c19 s4scorewordstorm
move s4_calcwordstorm s4scorewordstorm

egen s4_calcpresentation=rowtotal(s4p12box10 s4p12box11 s4p12box12 s4p12box13 s4p12box14 s4p12box15 s4p12box16 s4p12box17), missing
egen c20=diff(s4_calcpresentation s4scorepresentation)
move c20 s4scorepresentation
move s4_calcpresentation s4scorepresentation

egen s4_calcobjectivesreview=rowtotal(s4p13box1 s4p13box2), missing
egen c21=diff(s4_calcobjectivesreview s4scoreobjectivesreview)
move c21 s4scoreobjectivesreview
move s4_calcobjectivesreview s4scoreobjectivesreview

egen s4_calclearningreview=rowtotal(s4p13box3 s4p13box4), missing
egen c22=diff(s4_calclearningreview s4scorelearningreview)
move c22 s4scorelearningreview
move s4_calclearningreview s4scorelearningreview

egen s4_calchometask=rowtotal(s4p13box5 s4p13box6 s4p13box7), missing
egen c23=diff(s4_calchometask s4scorehometask)
move c23 s4scorehometask
move s4_calchometask s4scorehometask



order site sessionwk round facilitatorid raterid s4_calcaimsobs ///
s4_calcbackground s4_calcselfconcept s4_calcselfesteem s4_calcinterpretation ///
s4_calcwelcome s4_calchometaskreview s4_calcjigsaw s4_calchandbooks ///
s4_calcaimsobjectives s4_calcpresesteemconcept s4_calcexercise ///
s4_calcresilienceexplained s4_calcexercise2 s4_calcdvdexplained ///
s4_calcdvdreflect s4_calcscenariosintro s4_calcscenariooutcome ///
s4_calcwordstorm s4_calcpresentation s4_calcobjectivesreview s4_calclearningreview s4_calchometask


egen s4grandtotal=rowtotal(s4_calcaimsobs ///
s4_calcbackground s4_calcselfconcept s4_calcselfesteem s4_calcinterpretation ///
s4_calcwelcome s4_calchometaskreview s4_calcjigsaw s4_calchandbooks ///
s4_calcaimsobjectives s4_calcpresesteemconcept s4_calcexercise ///
s4_calcresilienceexplained s4_calcexercise2 s4_calcdvdexplained ///
s4_calcdvdreflect s4_calcscenariosintro s4_calcscenariooutcome ///
s4_calcwordstorm s4_calcpresentation s4_calcobjectivesreview s4_calclearningreview s4_calchometask), missing

save "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S4_Prepared.dta" , 

*Hand checking allocation
use "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S4_Prepared.dta" , clear
sort site sessionwk round facilitatorid raterid s4grandtotal 
gen sess_alloc=.
gen fac2=.
replace fac2=1 if facilitatorid==2
replace fac2=2 if facilitatorid==3
replace fac2=3 if facilitatorid==1
replace fac2=5 if facilitatorid==4
drop facilitator
rename fac2 facilitatorid
label define FACILITA 1 "shirley" 2 "wendy" 3 "cahir" 4 "jackie" 5 "denise" 6 "doreen", modify
label values facilitatorid FACILITA 
drop if site==.
order sess_all site sessionwk round facili raterid
edit
*****
stop
***these changes made
. replace facilitatorid = 4 in 3
(1 real change made)

. *Aisling omagh rnd 2

. *as per notes

. replace sess_alloc = 0 in 6
(1 real change made)

. replace sess_alloc = 1 in 7
(1 real change made)

. replace sess_alloc = 1 in 5
(1 real change made)

. replace sess_alloc = 1 in 4
(1 real change made)

. replace sess_alloc = 0 in 3
(1 real change made)

. replace facilitatorid = 4 in 2
(1 real change made)

. replace sess_alloc = 0 in 2
(1 real change made)

. **Leeane omagh round 1

. replace sess_alloc = 0 in 9
(1 real change made)

. replace sess_alloc = 0 in 10
(1 real change made)

. replace sess_alloc = 1 in 1
(1 real change made)

. replace sess_alloc = 1 in 8
(1 real change made)
*******
save "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S4_Prepared.dta", 

***Session Plan 5
use "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/SessionPlan5RatingSC.dta" , clear

recode site - s5p10box14 (999=.a) (99=.a) (9999=.a)


egen s5_calcaimsobs=rowtotal(s5p2box1 s5p2box2 s5p2box3 s5p2box4), missing
egen c1=diff(s5_calcaimsobs s5scoreaimsobs)
move c1 s5scoreaimsobs
move s5_calcaimsobs s5scoreaimsobs

egen s5_calcoverviewrules=rowtotal(s5p2box5 s5p2box6), missing
egen c2=diff(s5_calcoverviewrules s5scoreoverviewrules)
move c2 s5scoreoverviewrules
move s5_calcoverviewrules s5scoreoverviewrules


egen s5_calcperceivedcontrol=rowtotal(s5p2box7 s5p2box8 s5p2box9), missing
egen c3=diff(s5_calcperceivedcontrol s5scoreperceivedcontrol)
move c3 s5scoreperceivedcontrol
move s5_calcperceivedcontrol s5scoreperceivedcontrol


egen s5_calcmonitoringintro=rowtotal(s5p2box10 s5p3box1 s5p3box2 s5p3box3 s5p3box4), missing
egen c4=diff(s5_calcmonitoringintro s5scoremonitoringintro)
move c4 s5scoremonitoringintro
move s5_calcmonitoringintro s5scoremonitoringintro

egen s5_calcimplications=rowtotal(s5p3box5 s5p3box6), missing
egen c5=diff(s5_calcimplications s5scoreimplications)
move c5 s5scoreimplications
move s5_calcimplications s5scoreimplications

egen s5_calcwelcome=rowtotal(s5p4box1 s5p4box2 s5p4box3 s5p4box4 s5p4box5 s5p4box6), missing
egen c6=diff(s5_calcwelcome s5scorewelcome)
move c6 s5scorewelcome
move s5_calcwelcome s5scorewelcome

egen s5_calchometaskreview=rowtotal(s5p4box7 s5p4box8 s5p4box9 s5p4box10 s5p4box11), missing
egen c7=diff(s5_calchometaskreview s5scorehometaskreview)
move c7 s5scorehometaskreview
move s5_calchometaskreview s5scorehometaskreview


egen s5_calcjigsaw=rowtotal(s5p4box12 s5p4box13 s5p4box14 s5p4box15 s5p4box16 s5p4box17), missing
egen c8=diff(s5_calcjigsaw s5scorejigsaw)
move c8 s5scorejigsaw
move s5_calcjigsaw s5scorejigsaw

egen s5_calchandbooks=rowtotal(s5p5box1 s5p5box2), missing
egen c9=diff(s5_calchandbooks s5scorehandbooks)
move c9 s5scorehandbooks
move s5_calchandbooks s5scorehandbooks


****s5p5?

rename s5p5aimsobs2 s5scoreaimsobs2
egen s5_calcaimsobs2=rowtotal(s5p5box3 s5p5box4), missing
egen c10=diff(s5_calcaimsobs2 s5scoreaimsobs2)
move c10 s5scoreaimsobs2
move s5_calcaimsobs2 s5scoreaimsobs2


egen s5_calcicebreaker=rowtotal(s5p6box1 s5p6box2 s5p6box3 s5p6box4), missing
egen c11=diff(s5_calcicebreaker s5scoreicebreaker)
move c11 s5scoreicebreaker
move s5_calcicebreaker s5scoreicebreaker


egen s5_calcwordstorm=rowtotal(s5p6box5 s5p6box6), missing
egen c12=diff(s5_calcwordstorm s5scorewordstorm)
move c12 s5scorewordstorm
move s5_calcwordstorm s5scorewordstorm


egen s5_calcexercise1=rowtotal(s5p7box1 s5p7box2 s5p7box3 s5p7box4 s5p7box5), missing
egen c13=diff(s5_calcexercise1 s5scoreexercise1)
move c13 s5scoreexercise1
move s5_calcexercise1 s5scoreexercise1

egen s5_calcnotes1=rowtotal(s5p7box6 s5p7box7), missing
egen c14=diff(s5_calcnotes1 s5scorenotes1)
move c14 s5scorenotes1
move s5_calcnotes1 s5scorenotes1

egen s5_calcexercise2=rowtotal(s5p7box8 s5p7box9 s5p7box10 s5p7box11 s5p7box12), missing
egen c15=diff(s5_calcexercise2 s5scoreexercise2)
move c15 s5scoreexercise2
move s5_calcexercise2 s5scoreexercise2

***steinbergquote isolate

egen s5_calcexercise3=rowtotal(s5p9box1 s5p9box2 s5p9box3 s5p9box4), missing
egen c16=diff(s5_calcexercise3 s5scoreexercise3)
move c16 s5scoreexercise3
move s5_calcexercise3 s5scoreexercise3


egen s5_calcscenarios=rowtotal(s5p9box5 s5p9box6 s5p9box7 s5p9box8 s5p9box9), missing
egen c17=diff(s5_calcscenarios s5scorescenarios)
move c17 s5scorescenarios
move s5_calcscenarios s5scorescenarios

egen s5_calcobjectives=rowtotal(s5p9box10 s5p9box11), missing
egen c18=diff(s5_calcobjectives s5scoreobjectives)
move c18 s5scoreobjectives
move s5_calcobjectives s5scoreobjectives

***steinbergquote isolate
**s5p9box12 s5p9box13 s5p10box14 isolates


order site sessionwk round facilitatorid raterid s5_calcaimsobs ///
s5_calcoverviewrules s5_calcperceivedcontrol s5_calcmonitoringintro ///
s5_calcimplications s5_calcwelcome s5_calchometaskreview s5_calcjigsaw ///
s5_calchandbooks s5_calcaimsobs2 s5_calcicebreaker s5_calcwordstorm ///
s5_calcexercise1 s5_calcnotes1 s5_calcexercise2 s5_calcexercise3 s5_calcscenarios s5_calcobjectives steinbergquote s5p9box12 s5p9box13 s5p10box14 


egen s5grandtotal=rowtotal(s5_calcaimsobs ///
s5_calcoverviewrules s5_calcperceivedcontrol s5_calcmonitoringintro ///
s5_calcimplications s5_calcwelcome s5_calchometaskreview s5_calcjigsaw ///
s5_calchandbooks s5_calcaimsobs2 s5_calcicebreaker s5_calcwordstorm ///
s5_calcexercise1 s5_calcnotes1 s5_calcexercise2 s5_calcexercise3 s5_calcscenarios s5_calcobjectives steinbergquote s5p9box12 s5p9box13 s5p10box14),missing 


save "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S5_Prepared.dta" , 


*Hand checking allocation
use "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S5_Prepared.dta" , clear
sort site sessionwk round facilitatorid raterid s5grandtotal 
gen sess_alloc=.
gen fac2=.
replace fac2=1 if facilitatorid==2
replace fac2=2 if facilitatorid==3
replace fac2=3 if facilitatorid==1
replace fac2=5 if facilitatorid==4
drop facilitator
rename fac2 facilitatorid
label define FACILITA 1 "shirley" 2 "wendy" 3 "cahir" 4 "jackie" 5 "denise" 6 "doreen", modify
label values facilitatorid FACILITA 
order sess_all site sessionwk round facili raterid
edit
**
stop

. replace round = 5 in 2
(1 real change made)

. replace sess_alloc = 0 in 2
(1 real change made)

. replace sess_alloc = 0 in 5
(1 real change made)

. replace sess_alloc = 0 in 8
(1 real change made)

. replace sess_alloc = 0 in 7
(1 real change made)

. replace sess_alloc = 0 in 6
(1 real change made)

. replace sess_alloc = 1 in 4
(1 real change made)

. replace sess_alloc = 0 in 1
(1 real change made)

. replace sess_alloc = 1 in 3
(1 real change made)

*****
save "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S5_Prepared.dta", 


***Session Plan 6
use "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/SessionPlan6RatingSC.dta" , clear
recode site - s6p8box10 (999=.a) (99=.a) (9999=.a)

rename s6p2scoreaimsobs1 s6scoreaimsobs1

egen s6_calcaimsobs1=rowtotal(s6p2box1 s6p2box2 s6p2box3 s6p2box4), missing
egen c1=diff(s6_calcaimsobs1 s6scoreaimsobs1)
move c1 s6scoreaimsobs1
move s6_calcaimsobs1 s6scoreaimsobs1
egen s6_calcoverview=rowtotal(s6p2box5 s6p2box6), missing
move s6_calcoverview s6p2box7
egen s6_calcconflict=rowtotal(s6p2box7 s6p2box8 s6p2box9 s6p3box1 s6p3box2 s6p3box3), missing
egen c2=diff(s6_calcconflict s6scoreconflict)
move c2 s6scoreconflict
move s6_calcconflict s6scoreconflict
egen s6_calcwelcome1=rowtotal(s6p4box1 s6p4box2 s6p4box3 s6p4box4 s6p4box5 s6p4box6), missing
egen c3=diff(s6_calcwelcome1 s6scorewelcome1)
move c3 s6scorewelcome1
move s6_calcwelcome1 s6scorewelcome1
egen s6_calchometaskreview=rowtotal(s6p4box7 s6p4box8 s6p4box9 s6p4box10 s6p4box11 s6p4box12), missing
egen c4=diff(s6_calchometaskreview s6scorehometaskreview)
move c4 s6scorehometaskreview
move s6_calchometaskreview s6scorehometaskreview
egen s6_calcjigsaw=rowtotal(s6p4box13 s6p4box14 s6p4box15 s6p4box16 s6p4box17 s6p4box18), missing
egen c5=diff(s6_calcjigsaw s6scorejigsaw)
move c5 s6scorejigsaw
move s6_calcjigsaw s6scorejigsaw
egen s6_calchandbooks1=rowtotal(s6p5box1 s6p5box2), missing
egen c6=diff(s6_calchandbooks1 s6scorehandbooks1)
move c6 s6scorehandbooks1
move s6_calchandbooks1 s6scorehandbooks1
egen s6_calcaimsobs2=rowtotal(s6p5box3 s6p5box4 s6p5box5), missing
egen c7=diff(s6_calcaimsobs2 s6scoreaimsobs2)
move c7 s6scoreaimsobs2
move s6_calcaimsobs2 s6scoreaimsobs2
rename s6p5dscoreconflict s6scoreconflict2
egen s6_calcconflict2=rowtotal(s6p5box6 s6p5box7 s6p5box8), missing
egen c8=diff(s6_calcconflict2 s6scoreconflict2)
move c8 s6scoreconflict2
move s6_calcconflict2 s6scoreconflict2
egen s6_calcexercise1=rowtotal(s6p5box9 s6p6box1 s6p6box2 s6p6box3 s6p6box4), missing
egen c9=diff(s6_calcexercise1 s6scoreexercise1)
move c9 s6scoreexercise1
move s6_calcexercise1 s6scoreexercise1
egen s6_calcistatements=rowtotal(s6p7box1 s6p7box2 s6p7box3), missing
egen c10=diff(s6_calcistatements s6scoreistatements)
move c10 s6scoreistatements
move s6_calcistatements s6scoreistatements
egen s6_calcexercise2=rowtotal(s6p7box4 s6p7box5 s6p7box6), missing
egen c11=diff(s6_calcexercise2 s6scoreexercise2)
move c11 s6scoreexercise2
move s6_calcexercise2 s6scoreexercise2
egen s6_calcscenarios=rowtotal(s6p8box1 s6p8box2 s6p8box3 s6p8box4), missing
egen c12=diff(s6_calcscenarios s6scorescenarios)
move c12 s6scorescenarios
move s6_calcscenarios s6scorescenarios
egen s6_calclearning=rowtotal(s6p8box6 s6p8box7), missing
egen c13=diff(s6_calclearning s6scorelearning)
move c13 s6scorelearning
move s6_calclearning s6scorelearning
egen s6_calchometimetask=rowtotal(s6p8box8 s6p8box9 s6p8box10), missing
egen c14=diff(s6_calchometimetask s6scorehometimetask)
move c14 s6scorehometimetask
move s6_calchometimetask s6scorehometimetask
drop var00003
order site sessionwk round facilitatorid raterid s6_calcaimsobs1 ///
s6_calcoverview s6_calcconflict s6_calcwelcome1 s6_calchometaskreview ///
s6_calcjigsaw s6_calchandbooks1 s6_calcaimsobs2 s6_calcconflict2 ///
s6_calcexercise1 s6_calcistatements s6_calcexercise2 s6_calcscenarios s6_calclearning s6_calchometimetask

egen s6grandtotal=rowtotal(s6_calcaimsobs1 ///
s6_calcoverview s6_calcconflict s6_calcwelcome1 s6_calchometaskreview ///
s6_calcjigsaw s6_calchandbooks1 s6_calcaimsobs2 s6_calcconflict2 ///
s6_calcexercise1 s6_calcistatements s6_calcexercise2 s6_calcscenarios s6_calclearning s6_calchometimetask),missing

save "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S6_Prepared.dta" , replace

use "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S6_Prepared.dta" , clear
sort site sessionwk round facilitatorid raterid s6grandtotal 
gen sess_alloc=.
gen fac2=.
replace fac2=1 if facilitatorid==2
replace fac2=2 if facilitatorid==3
replace fac2=3 if facilitatorid==1
replace fac2=5 if facilitatorid==4
drop facilitator
rename fac2 facilitatorid
label define FACILITA 1 "shirley" 2 "wendy" 3 "cahir" 4 "jackie" 5 "denise" 6 "doreen", modify
label values facilitatorid FACILITA 
drop if site==.
order sess_all site sessionwk round facili raterid
edit

. replace facilitatorid = 6 in 3
(1 real change made)

. replace facilitatorid = 5 in 3
(1 real change made)

. replace facilitatorid = 7 in 3
(1 real change made)

. replace facilitatorid = 4 in 3
(1 real change made)

. replace sess_alloc = 0 in 3
(1 real change made)

. replace sess_alloc = 0 in 2
(1 real change made)

. replace raterid = 1 in 2
(1 real change made)

. replace raterid = 2 in 2
(1 real change made)

. replace raterid = 3 in 2
(1 real change made)

. replace raterid = 4 in 2
(1 real change made)

. replace raterid = 5 in 2
(1 real change made)

. replace raterid = 6 in 2
(1 real change made)

. replace raterid = 7 in 2
(1 real change made)

. replace raterid = 8 in 2
(1 real change made)

. replace raterid = 9 in 2
(1 real change made)

. replace raterid = 10 in 2
(1 real change made)

. replace raterid = 11 in 2
(1 real change made)

. replace raterid = 12 in 2
(1 real change made)

. replace raterid = 13 in 2
(1 real change made)

. replace raterid = 7 in 2
(1 real change made)

. replace raterid = 9 in 2
(1 real change made)

. replace raterid = 10 in 2
(1 real change made)

. replace sess_alloc = 0 in 1
(1 real change made)

. replace sess_alloc = 0 in 5
(1 real change made)

. replace sess_alloc = 0 in 4
(1 real change made)

. 
save "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S6_Prepared.dta", 

***Session Plan 7
use "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/SessionPlan7RatingSC.dta" , clear

recode site - s7scorehometask (999=.a) (99=.a) (9999=.a)
egen s7_calcaimsobs1=rowtotal(s7p2box1 s7p2box2 s7p2box3), missing
egen c1=diff(s7_calcaimsobs1 s7scoreaimsobs1)
move c1 s7scoreaimsobs1
move s7_calcaimsobs1 s7scoreaimsobs1
egen s7_calcoverview=rowtotal(s7p2box4 s7p2box5), missing
egen c2=diff(s7_calcoverview s7scoreoverview)
move c2 s7scoreoverview
move s7_calcoverview s7scoreoverview
egen s7_calcdefproblem=rowtotal(s7p2box6 s7p2box7 s7p3box1), missing
egen c3=diff(s7_calcdefproblem s7scoredefproblem)
move c3 s7scoredefproblem
move s7_calcdefproblem s7scoredefproblem
egen s7_calcprobsolving=rowtotal(s7p3box2 s7p3box3 s7p3box4 s7p3box5 s7p3box6 s7p3box7), missing
egen c4=diff(s7_calcprobsolving s7scoreprobsolving)
move c4 s7scoreprobsolving
move s7_calcprobsolving s7scoreprobsolving
egen s7_calcwelcome=rowtotal(s7p4box1 s7p4box2 s7p4box3 s7p4box4 s7p4box5 s7p4box6), missing
egen c5=diff(s7_calcwelcome s7scorewelcome)
move c5 s7scorewelcome
move s7_calcwelcome s7scorewelcome
egen s7_calchometaskreview=rowtotal(s7p4box7 s7p4box8 s7p4box9 s7p4box10 s7p4box11), missing
egen c6=diff(s7_calchometaskreview s7scorehometaskreview)
move c6 s7scorehometaskreview
move s7_calchometaskreview s7scorehometaskreview
egen s7_calcjigsaw=rowtotal(s7p4box12 s7p4box13 s7p4box14 s7p4box15 s7p4box16 s7p4box17 s7p4box18 s7p4box19), missing
egen c7=diff(s7_calcjigsaw s7scorejigsaw)
move c7 s7scorejigsaw
move s7_calcjigsaw s7scorejigsaw
egen s7_calchandbooks1=rowtotal(s7p5box1 s7p5box2), missing
egen c8=diff(s7_calchandbooks1 s7scorehandbooks1)
move c8 s7scorehandbooks1
move s7_calchandbooks1 s7scorehandbooks1
egen s7_calcaimsobs2=rowtotal(s7p5box3 s7p5box4), missing
egen c9=diff(s7_calcaimsobs2 s7scoreaimsobs2)
move c9 s7scoreaimsobs2
move s7_calcaimsobs2 s7scoreaimsobs2
rename s7wordstorm s7scorewordstorm
egen s7_calcwordstorm=rowtotal(s7p5box5 s7p5box6), missing
egen c10=diff(s7_calcwordstorm s7scorewordstorm)
move c10 s7scorewordstorm
move s7_calcwordstorm s7scorewordstorm
egen s7_calcfacts=rowtotal(s7p6box1 s7p6box2 s7p6box3), missing
egen c11=diff(s7_calcfacts s7scorefacts)
move c11 s7scorefacts
move s7_calcfacts s7scorefacts
egen s7_calcworksheet1=rowtotal(s7p6box4 s7p6box5 s7p6box6), missing
egen c12=diff(s7_calcworksheet1 s7scoreworksheet1)
move c12 s7scoreworksheet1
move s7_calcworksheet1 s7scoreworksheet1
egen s7_calcpresproblems=rowtotal(s7p6box7 s7p6box8 s7p6box9 s7p6box10), missing
egen c13=diff(s7_calcpresproblems s7scorepresproblems)
move c13 s7scorepresproblems
move s7_calcpresproblems s7scorepresproblems
egen s7_calcexercise1=rowtotal(s7p7box1 s7p7box2 s7p7box3), missing
egen c14=diff(s7_calcexercise1 s7scoreexercise1)
move c14 s7scoreexercise1
move s7_calcexercise1 s7scoreexercise1
egen s7_calcnegotiate=rowtotal(s7p8box1 s7p8box2), missing
egen c15=diff(s7_calcnegotiate s7scorenegotiate)
move c15 s7scorenegotiate
move s7_calcnegotiate s7scorenegotiate
egen s7_calcobsreview=rowtotal(s7p8box3 s7p8box4 s7p8box5), missing
egen c16=diff(s7_calcobsreview s7scoreobsreview)
move c16 s7scoreobsreview
move s7_calcobsreview s7scoreobsreview
egen s7_calclearning=rowtotal(s7p8box6 s7p8box7), missing
egen c17=diff(s7_calclearning s7scorelearning)
move c17 s7scorelearning
move s7_calclearning s7scorelearning
egen s7_calchometask=rowtotal(s7p9box1 s7p9box2 s7p9box3 s7p9box4), missing
egen c18=diff(s7_calchometask s7scorehometask)
move c18 s7scorehometask
move s7_calchometask s7scorehometask
rename var00001 notes

order site sessionwk round facilitatorid raterid s7_calcaimsobs1 ///
s7_calcdefproblem s7_calcprobsolving s7_calcwelcome ///
s7_calchometaskreview s7_calcjigsaw s7_calchandbooks1 ///
s7_calcaimsobs2 s7_calcwordstorm s7_calcfacts s7_calcworksheet1 ///
s7_calcpresproblems s7_calcexercise1 s7_calcnegotiate s7_calcobsreview s7_calclearning s7_calchometask


egen s7grandtotal=rowtotal(s7_calcaimsobs1 ///
s7_calcdefproblem s7_calcprobsolving s7_calcwelcome ///
s7_calchometaskreview s7_calcjigsaw s7_calchandbooks1 ///
s7_calcaimsobs2 s7_calcwordstorm s7_calcfacts s7_calcworksheet1 ///
s7_calcpresproblems s7_calcexercise1 s7_calcnegotiate s7_calcobsreview s7_calclearning s7_calchometask),missing


save "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S7_Prepared.dta" , replace

use "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S7_Prepared.dta" , clear
sort site sessionwk round facilitatorid raterid s7grandtotal 
gen sess_alloc=.
gen fac2=.
replace fac2=1 if facilitatorid==2
replace fac2=2 if facilitatorid==3
replace fac2=3 if facilitatorid==1
replace fac2=5 if facilitatorid==4
drop facilitator
rename fac2 facilitatorid
label define FACILITA 1 "shirley" 2 "wendy" 3 "cahir" 4 "jackie" 5 "denise" 6 "doreen", modify
label values facilitatorid FACILITA 
drop if site==.
order sess_all site sessionwk round facili raterid
edit
. replace sess_alloc = 1 in 8
(1 real change made)

. replace sess_alloc = 1 in 7
(1 real change made)

. replace raterid = 6 in 2
(1 real change made)

. replace sess_alloc = 1 in 2
(1 real change made)

. replace sess_alloc = 1 in 1
(1 real change made)

. replace sess_alloc = 0 in 3
(1 real change made)

. replace sess_alloc = 0 in 6
(1 real change made)

. replace sess_alloc = 1 in 5
(1 real change made)

. replace sess_alloc = . in 5
(1 real change made, 1 to missing)

. replace sess_alloc = 0 in 10
(1 real change made)

. replace sess_alloc = 0 in 9
(1 real change made)

. replace raterid = 2 in 9
(1 real change made)

. replace raterid = 3 in 9
(1 real change made)

. replace raterid = 4 in 9
(1 real change made)

. replace raterid = 5 in 9
(1 real change made)

. replace raterid = 6 in 9
(1 real change made)

. replace raterid = 7 in 9
(1 real change made)

. replace raterid = 6 in 4
(1 real change made)

. replace sess_alloc = 1 in 4
(1 real change made)

. replace sess_alloc = 1 in 5
(1 real change made)

. 
save "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S7_Prepared.dta", 

***Session Plan 8
use "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/SessionPlan8RatingSC.dta" , clear

recode site - s8p6box3 (999=.a) (99=.a) (9999=.a)
egen s8_calcoverview=rowtotal(s8p2box1 s8p2box2), missing
egen c1=diff(s8_calcoverview s8scoreoverview)
move c1 s8scoreoverview
move s8_calcoverview s8scoreoverview
egen s8_calcwelcome=rowtotal(s8p3box1 s8p3box2 s8p3box3 s8p3box4 s8p3box5 s8p3box6), missing
egen c2=diff(s8_calcwelcome s8scorewelcome)
move c2 s8scorewelcome
move s8_calcwelcome s8scorewelcome
egen s8_calchometask=rowtotal(s8p3box7 s8p3box8 s8p3box9 s8p3box10 s8p3box11), missing
egen c3=diff(s8_calchometask s8scorehometask)
move c3 s8scorehometask
move s8_calchometask s8scorehometask
egen s8_calcjigsaw=rowtotal(s8p3box12 s8p3box13 s8p3box14 s8p3box15), missing
egen c4=diff(s8_calcjigsaw s8scorejigsaw)
move c4 s8scorejigsaw
move s8_calcjigsaw s8scorejigsaw
egen s8_calchandbooks=rowtotal(s8p4box1 s8p4box2), missing
egen c5=diff(s8_calchandbooks s8scorehandbooks)
move c5 s8scorehandbooks
move s8_calchandbooks s8scorehandbooks
egen s8_calcaimsobs1=rowtotal(s8p4box3 s8p4box4), missing
egen c6=diff(s8_calcaimsobs1 s8scoreaimsobs1)
move c6 s8scoreaimsobs1
move s8_calcaimsobs1 s8scoreaimsobs1
egen s8_calcexpectations=rowtotal(s8p4box5 s8p4box6 s8p4box7), missing
egen c7=diff(s8_calcexpectations s8scoreexpectations)
move c7 s8scoreexpectations
move s8_calcexpectations s8scoreexpectations
egen s8_calcpresentation=rowtotal(s8p4box8 s8p4box9 s8p4box10), missing
egen c8=diff(s8_calcpresentation s8scorepresentation)
move c8 s8scorepresentation
move s8_calcpresentation s8scorepresentation
egen s8_calcsessions=rowtotal(s8p5box1 s8p5box2 s8p5box3 s8p5box4 s8p5box5 s8p5box6 s8p5box7 s8p5box8), missing
egen c9=diff(s8_calcsessions s8scoresessions)
move c9 s8scoresessions
move s8_calcsessions s8scoresessions

***s8p5box9 - marks out of ten, is this another interpet variable?

order site sessionwk round facilitatorid raterid notes ///
s8_calcoverview s8_calcwelcome s8_calchometask s8_calcjigsaw ///
s8_calchandbooks s8_calcaimsobs1 s8_calcexpectations s8_calcpresentation ///
 s8_calcsessions s8p5box9 s8p5box10 s8p6box1 s8p6box2 s8p6box3

egen s8grandtotal=rowtotal(s8_calcoverview s8_calcwelcome s8_calchometask s8_calcjigsaw ///
s8_calchandbooks s8_calcaimsobs1 s8_calcexpectations s8_calcpresentation ///
 s8_calcsessions s8p5box9 s8p5box10 s8p6box1 s8p6box2 s8p6box3), missing

save "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S8_Prepared.dta" , 

use "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S8_Prepared.dta" , clear
sort site sessionwk round facilitatorid raterid s8grandtotal 
gen sess_alloc=.
gen fac2=.
replace fac2=1 if facilitatorid==2
replace fac2=2 if facilitatorid==3
replace fac2=3 if facilitatorid==1
replace fac2=5 if facilitatorid==4
drop facilitator
rename fac2 facilitatorid
label define FACILITA 1 "shirley" 2 "wendy" 3 "cahir" 4 "jackie" 5 "denise" 6 "doreen", modify
label values facilitatorid FACILITA 
order sess_all site sessionwk round facili raterid
edit
 
 
. replace sess_alloc = 1 in 3
(1 real change made)

. replace sess_alloc = 1 in 2
(1 real change made)

. replace sess_alloc = 1 in 1
(1 real change made)

. replace sess_alloc = 1 in 8
(1 real change made)

. replace sess_alloc = 1 in 5
(1 real change made)

. replace sess_alloc = 1 in 6
(1 real change made)

. replace site = 1 in 9
(1 real change made)

. replace sess_alloc = 1 in 9
(1 real change made)

. replace sess_alloc = 1 in 4
(1 real change made)

. replace sess_alloc = 1 in 7
(1 real change made)

save "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S8_Prepared.dta", 
 
 
 
 
***Session Plan 8 early
use "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/SessionPlan8Rating_SC_early.dta" , clear

recode site - s8p6box3 (999=.a) (99=.a) (9999=.a)
egen s8_calcoverview=rowtotal(s8p2box1 s8p2box2), missing
egen c1=diff(s8_calcoverview s8scoreoverview)
move c1 s8scoreoverview
move s8_calcoverview s8scoreoverview
egen s8_calcwelcome=rowtotal(s8p3box1 s8p3box2 s8p3box3 s8p3box4 s8p3box5 s8p3box6), missing
egen c2=diff(s8_calcwelcome s8scorewelcome)
move c2 s8scorewelcome
move s8_calcwelcome s8scorewelcome
egen s8_calchometask=rowtotal(s8p3box7 s8p3box8 s8p3box9 s8p3box10 s8p3box11), missing
egen c3=diff(s8_calchometask s8scorehometask)
move c3 s8scorehometask
move s8_calchometask s8scorehometask
egen s8_calcjigsaw=rowtotal(s8p3box12 s8p3box13 s8p3box14 s8p3box15), missing
egen c4=diff(s8_calcjigsaw s8scorejigsaw)
move c4 s8scorejigsaw
move s8_calcjigsaw s8scorejigsaw
egen s8_calchandbooks=rowtotal(s8p4box1 s8p4box2), missing
egen c5=diff(s8_calchandbooks s8scorehandbooks)
move c5 s8scorehandbooks
move s8_calchandbooks s8scorehandbooks
egen s8_calcaimsobs1=rowtotal(s8p4box3 s8p4box4), missing
egen c6=diff(s8_calcaimsobs1 s8scoreaimsobs1)
move c6 s8scoreaimsobs1
move s8_calcaimsobs1 s8scoreaimsobs1
egen s8_calcexpectations=rowtotal(s8p4box5 s8p4box6 s8p4box7), missing
egen c7=diff(s8_calcexpectations s8scoreexpectations)
move c7 s8scoreexpectations
move s8_calcexpectations s8scoreexpectations

egen s8_calcpresentation=rowtotal(s8p4box8 s8p4box9 s8p4box10), missing
egen c8=diff(s8_calcpresentation s8scorepresentation)
move c8 s8scorepresentation
move s8_calcpresentation s8scorepresentation

egen s8_calcsessions=rowtotal(s8p5box1 s8p5box2 s8p5box3 s8p5box4 s8p5box5 s8p5box6 s8p5box7 s8p5box8), missing
egen c9=diff(s8_calcsessions s8scoresessions)
move c9 s8scoresessions
move s8_calcsessions s8scoresessions

***s8p5box9 - marks out of ten, is this another interpet variable?

order site sessionwk round facilitatorid raterid notes s8interpret ///
s8_calcoverview s8_calcwelcome s8_calchometask s8_calcjigsaw ///
s8_calchandbooks s8_calcaimsobs1 s8_calcexpectations s8_calcpresentation ///
 s8_calcsessions s8p5box9 s8p5box10 s8p6box1 s8p6box2 s8p6box3



egen s8grandtotal=rowtotal(s8_calcoverview s8_calcwelcome s8_calchometask s8_calcjigsaw ///
s8_calchandbooks s8_calcaimsobs1 s8_calcexpectations s8_calcpresentation ///
 s8_calcsessions s8p5box10 s8p6box1 s8p6box2 s8p6box3), missing

***s8p5box9 ?
 
save "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S8_early_Prepared.dta" , replace
 
use "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S8_early_Prepared.dta" , clear
sort site sessionwk round facilitatorid raterid s8grandtotal 
gen sess_alloc=.
gen fac2=.
replace fac2=1 if facilitatorid==2
replace fac2=2 if facilitatorid==3
replace fac2=3 if facilitatorid==1
replace fac2=5 if facilitatorid==4
drop facilitator
rename fac2 facilitatorid
label define FACILITA 1 "shirley" 2 "wendy" 3 "cahir" 4 "jackie" 5 "denise" 6 "doreen", modify
label values facilitatorid FACILITA 
order sess_all site sessionwk round facili raterid
edit


. replace facilitatorid = 4 in 1
(1 real change made)

. replace facilitatorid = 4 in 2
(1 real change made)

. replace sess_alloc = 0 in 1
(1 real change made)

. replace sess_alloc = 0 in 2
(1 real change made)

. replace sess_alloc = 0 in 17
(1 real change made)

. replace sess_alloc = 1 in 14
(1 real change made)

. replace sess_alloc = 0 in 3
(1 real change made)

. replace site = 1 in 19
(1 real change made)

. replace sess_alloc = 0 in 19
(1 real change made)

. replace sess_alloc = 0 in 9
(1 real change made)

. replace sess_alloc = 0 in 10
(1 real change made)

. replace sess_alloc = 0 in 11
(1 real change made)

. replace sess_alloc = 0 in 12
(1 real change made)

. replace sess_alloc = 0 in 7
(1 real change made)

. replace sess_alloc = 1 in 8
(1 real change made)

. replace sess_alloc = 0 in 16
(1 real change made)

. replace raterid = 7 in 4
(1 real change made)

. replace sess_alloc = 0 in 4
(1 real change made)

. replace raterid = 6 in 6
(1 real change made)

. replace sess_alloc = 1 in 6
(1 real change made)

. replace sess_alloc = 1 in 5
(1 real change made)

. ***Drop those noted on front as not to be incuded

. drop if sess_all==.
(3 observations deleted)

save "N:\Papers Presentations\PurT\PTP\PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S8_early_Prepared.dta", 


 
**************Don't need this any more as this was done by hand. Refer to notes in the intermediate output folder
 
* use "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Data Entry\pni id to allocation list id lookup.dta", clear
*replace pni_sent=0 if pni_sent==.
*replace katrina_com=0 if katrina_com==.
*replace katrina_call=0 if katrina_call==.
*replace pni_post=0 if pni_post==.
*save "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\PAC Data Sets 2011\Data Entry\pni id to allocation list id lookup_prep.dta", replace
