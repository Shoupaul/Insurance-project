#====================================INSURANCE PROJECT============================================#


#KPI 1:---

select Account_executive,income_class,count(invoice_number) number_of_invoice from invoice group by account_executive,income_class order by number_of_invoice desc ;

#KPI 2:---
 
 select year(new_d) as Year,count(new_d) as Yearly_meeting_count from meeting group by year(new_d);

#KPI 3:---

#3.1:---- 

select(select  sum(`Cross sell bugdet`) Target from individualbudgets) as Target,(select sum(amount) Invoice from invoice group by income_Class having income_class like "c%") as Invoice,
round((select sum(`sum(amount)`) as Achieved from sumamount ),0) as Achieved;

#3.2:---- 

select(select  sum(`New Budget`) Target from individualbudgets) as Target,(select sum(amount) Invoice from invoice group by income_Class having income_class like "N%") as Invoice,
round((select sum(`sum(amount)`) as Achieved from sumamount2 ),0) as Achieved;

#3.3:---- 

select(select  sum(`Renewal Budget`) Target from individualbudgets) as Target,(select sum(amount) Invoice from invoice group by income_Class having income_class like "R%") as Invoice,
round((select sum(`sum(amount)`) as Achieved from sumamount3 ),0) as Achieved;

#KPI 4:---

select Stage,sum(revenue_amount) as Total_revenue from opportunity group by stage;

#KPI 5:---

select Account_executive,count(new_d) as Count_of_meetings from meeting group by account_executive;

#KPI 6:---

select Opportunity_name,sum(revenue_amount) as Total_revenue_amount from opportunity group by opportunity_name order by
sum(revenue_amount) desc limit 4 ;

#KPI 7:---

select Product_group,count(product_group) as Count from opportunity group by product_group order by count(product_group) desc;


#=================================================END=====================================================================#









