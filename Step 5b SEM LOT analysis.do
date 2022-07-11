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

decode raterid, gen(srater)

egen uniqrating=group(lot_del sessionwk srater)

bysort uniq: egen mstd_listening=mean(std_listening)
bysort uniq: egen mstd_empathy=mean(std_empathy)
bysort uniq: egen mstd_physicalencour=mean(std_physicalencour)
bysort uniq: egen mstd_posbehav=mean(std_posbehav)
bysort uniq: egen mstd_parentposbehav =mean(std_parentposbehav)
bysort uniq: egen mstd_other  =mean(std_other)
bysort uniq: egen mstd_totscore=   mean(std_totscore) 
bysort uniq: egen mstd_tot_noparent=  mean(std_tot_noparent)


order lot_delivery site round lot_alloc sessionwk facilitatorid raterid timeslot std_listening std_empathy std_physicalencour std_posbehav std_parentposbehav std_other std_totscore std_tot_noparent

bysort uniq: gen n=_n
drop if n~=1
drop n

xtmixed mstd i.session || _all:R.raterid  || lot_deliv:  , var mle

order lot_delivery sessionwk raterid uniq mstd_listening mstd_empathy mstd_physicalencour mstd_posbehav mstd_parentposbehav mstd_other mstd_totscore mstd_tot_noparent

keep lot_delivery sessionwk raterid uniq mstd_listening mstd_empathy mstd_physicalencour mstd_posbehav mstd_parentposbehav mstd_other mstd_totscore mstd_tot_noparent

keep lot_delivery sessionwk raterid uniq mstd_tot_n

reshape wide mstd_ 

drop if sessionwk==.



reshape wide mstd_listening mstd_empathy mstd_physicalencour mstd_posbehav mstd_parentposbehav mstd_other mstd_totscore mstd_tot_noparent, i(lot_deliv) j(raterid) 



encode uniqrating, gen(obsid)


keep uniqrat obsid lot_delivery uniqrating std_tot_noparent lot_del sessionwk srater timeslot

order lot_delivery sessionwk srater timeslot uniqrat obsid std_tot_noparent 







order lot_delivery raterid round site lot_alloca facilitatorid timeslot uniqrating std_listening std_empathy std_physicalencour std_posbehav std_parentposbehav std_other std_totscore std_tot_noparent

keep lot_delivery uniqrating std_listening std_empathy std_physicalencour std_posbehav std_parentposbehav std_other std_totscore std_tot_noparent

drop if lot_deliver==.

reshape wide std_listening  std_empathy  std_physicalencour  std_posbehav  std_parentposbehav  std_other  std_totscore  std_tot_noparent , i(lot_deliv) j(uniqrat) string

reshape wide std_tot_noparent sessionwk srater timeslot, i(lot_deliv) j(uniqrat) string
