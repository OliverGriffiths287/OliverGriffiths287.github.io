clear all
cd "C:\Users\ollie\OneDrive - University of Bristol\Data Science\Datasets"
log using "prices_code.log", replace
use "db_prices_condensed.dta", clear
browse
describe
recast int item_id
keep if item_id == 220319
save "db_prices_takeaways.dta", replace
capture log close