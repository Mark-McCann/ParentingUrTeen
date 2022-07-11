***Katrina asked about variation in parental stress by Relationship status

**run step 6
do "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\Syntax & Analysis\Step 6 survey analysis.do" 

**
oneway ab_ghq relstatus, tab
***

oneway ab_parq_gds relstatus, tab
oneway ab_parq_com relstatus, tab
oneway ab_parq_prsl relstatus, tab
oneway ab_parq_coh relstatus, tab
oneway  ab_parq_sch relstatus, tab
oneway ab_parq_cnv relstatus, tab
oneway ab_parq_eat relstatus, tab
oneway ab_parq_malint relstatus, tab
oneway ab_parq_perf relstatus, tab
oneway ab_parq_ruin relstatus, tab
oneway ab_SIPAmel relstatus, tab
oneway ab_SIPAiso relstatus, tab

***
oneway ab_SIPAdel relstatus, tab
***

oneway ab_SIPAach relstatus, tab

**
oneway ab_SIPAaprd relstatus, tab
**

oneway ab_SIPAsoc relstatus, tab
oneway ab_SIPAincwt relstatus, tab

**
oneway ab_SIPAad relstatus, tab
**

oneway ab_SIPApd relstatus, tab
oneway ab_SIPAts relstatus, tab

**
oneway ab_monitor relstatus, tab
**

oneway ab_disclose relstatus, tab
oneway ab_solicit relstatus, tab
oneway ab_control relstatus, tab



*****Leeane asked if adherence or quality of delivery imprived over time.


run "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\Syntax & Analysis\Step 6 survey analysis.do"


use "S:/ICCR all staff/PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S1_Prepared.dta", 
oneway s1grandtotal round, tab

use "S:/ICCR all staff/PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S2_Prepared.dta", 
oneway s2grandtotal round, tab

use "S:/ICCR all staff/PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S3_Prepared.dta", 
oneway s3grandtotal round, tab

use "S:/ICCR all staff/PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S4_Prepared.dta", 
oneway s4grandtotal round, tab

use "S:/ICCR all staff/PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S5_Prepared.dta", 
oneway s5grandtotal round, tab

use "S:/ICCR all staff/PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S6_Prepared.dta", 
oneway s6grandtotal round, tab

use "S:/ICCR all staff/PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S7_Prepared.dta", 
oneway s7grandtotal round, tab

use "S:/ICCR all staff/PTP/PAC 2011/DATA/PAC Data Sets 2011/Stata Datasets/S8_Prepared.dta", 
oneway s8grandtotal round, tab
