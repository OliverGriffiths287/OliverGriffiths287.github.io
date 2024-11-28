clear all
cd "C:\Users\ollie\OneDrive - University of Bristol\Data Science\Datasets"
log using "nightclub_code.log", replace
use "db_prices.dta", clear
describe
recast int item_id
keep if item_id == 640207
browse