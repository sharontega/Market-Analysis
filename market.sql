/*

Cleaning Data in SQL Queries

*/
-------------------------------------------------------------------------------------
#getting shape(count of rows and column of dataset)
select count(*) from market;
select count(*) from information_schema.columns where table_name='market';
-------------------------------------------------------------------------------------
#checking datatype
desc market;
----------------------------------------------------------------------------------
# adding and populating  new columns
alter table market
add Age int;

update market
set Age= 2023-Year_Birth;

alter table market
add children int;

update market
set children= Kidhome+Teenhome;

alter table market
add year_join int;

update market
set year_join= right(Dt_Customer,4);

alter table market
add total_spent int;

update market
set total_spent=MntWines+MntFruits+MntMeatProducts+MntFishProducts+MntGoldProds+MntSweetProducts;

alter table market
add total_purchase int;

update market
set total_purchase=NumDealsPurchases+NumWebPurchases+NumCatalogPurchases+NumStorePurchases;


alter table market
add total_accepted int;

update market
set total_accepted= AcceptedCmp3+AcceptedCmp2+AcceptedCmp1+AcceptedCmp4+AcceptedCmp5+Response;

-----------------------------------------------------------------------------------
#dropping unwanted columns

alter table market
drop column Year_Birth,
drop column Dt_Customer,
drop column Z_CostContact,
drop column Z_Revenue;

-----------------------------------------------------------------------------------
#deleting rows
delete
from market
where age> 83;
-----------------------------------------------------------------------------------
#end product

select*
from market