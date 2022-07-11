** Load the data 
 use "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\Final Analytical Datasets\Main RCT Analysis.dta" , clear
 
label drop alloc_site V41_A V42_A MISCINFO OCCUPTIO
 
drop alloc_notes ///
response_o ///
not_registered_parent  ///
dem_occup  ///
dem_sex*  ///
dem_age*  ///
dem_rel* ///
ab_sex* ///
ab_age* ///
ab_rel* ///
checked ///
f1_f2_mrg  ///
rct_in  ///
pp_in  ///
_est_a  ///
_est_b  ///
pp_ch* ///
late_entr  ///
cancel ///
var00 ///
miscinfo* *mrg dem_occu ab_occu

rename paid employed
rename nyoung nchildren

*save "N:\Papers Presentations\PurT\PTP\PTP\PAC 2011\DATA\Final Analytical Datasets\Archive dataset.dta" , 
save "N:\Papers Presentations\PurT\Trials submission\Archive dataset.dta" , replace

export excel using "N:\Papers Presentations\PurT\Trials submission\Archive dataset Excel.xls", firstrow(variables) replace
