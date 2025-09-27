# We are executing SQL Queries for our Problem Statments to cross verify when we make our dashboard in Power BI/Tableu.
# Dasboard BI applications can make errors, that's why we need to verify the values here with the values in Dashboard




-- 1st Dashbaord: SUMMARY -------------------------------------------------------------------------------------------------------------------------------

# Basic KPIs----------------------------------------------------------------------------

# Total Loan Applications 
select count(id) as 'Total_Applications' from financial_loan

# Month-to-Date (MTD) Loan Applications
select count(id) as 'Total_Applications_MTD' from financial_loan
where month(issue_date) = 12 

# Month-over-Month (MoM) Loan Applications = (MTD applications - PMTD Applications)/(PMTD Applications)
WITH monthly_counts AS (
    SELECT
        MONTH(issue_date) AS month_num,
        COUNT(id) AS total_applications
    FROM financial_loan
    WHERE YEAR(issue_date) = 2021  
    GROUP BY MONTH(issue_date)
)
SELECT
    curr.month_num AS current_month,
    curr.total_applications AS mtd_applications,
    prev.total_applications AS pmtd_applications,
    ( (curr.total_applications - prev.total_applications) * 1.0 / prev.total_applications ) AS mom_change
FROM monthly_counts curr
JOIN monthly_counts prev 
    ON curr.month_num = prev.month_num + 1
WHERE curr.month_num = 12;  -- focus only on Dec vs Nov

# Total Funded amount
select sum(loan_amount) as total_funded_amount from financial_loan

# Total MTD Funded Amount
select sum(loan_amount) as 'Total_Funded_Amount_MTD' from financial_loan
where month(issue_date) = 12

# Month-over-Month (MoM) Total Funded Amount
with monthly_funded as (select month(issue_date) as month_num, sum(loan_amount) as total_funded from financial_loan
						group by month(issue_date)
                        )
select curr.month_num, curr.total_funded as MTD_Funded, prev.total_funded as PMTD_Funded, 
( (curr.total_funded - prev.total_funded) * 1.0 / prev.total_funded ) AS mom_change
from monthly_funded curr
join monthly_funded prev
on curr.month_num = prev.month_num + 1
where curr.month_num = 12
					
                    
# Total Amount Received
select sum(total_payment) as total_amount_received from financial_loan

# Total MTD Amount Received
select sum(total_payment) as 'Total_Received_Amount_MTD' from financial_loan
where month(issue_date) = 12

# Month-over-Month (MoM) Total Amount Received
with monthly_Received as (select month(issue_date) as month_num, sum(total_payment) as total_Received from financial_loan
						group by month(issue_date)
                        )
                        
select curr.month_num, curr.total_Received as MTD_Amount_Received, prev.total_Received as PMTD_Funded, 
( (curr.total_Received - prev.total_Received) * 1.0 / prev.total_Received ) AS mom_change
from monthly_Received curr
join monthly_Received prev
on curr.month_num = prev.month_num + 1
where curr.month_num = 12
                        
							
# Average Interest Rate
select round(avg(int_rate)*100, 2) as Average_Interest_Rate from financial_loan
							
# MTD Average Interest Rate
select round(avg(int_rate)*100, 2) as Average_Interest_Rate from financial_loan
where month(issue_date) = 12
							
                            
# MoM Average Interest Rate
with cte as (select month(issue_date) as month_num, round(avg(int_rate)*100, 2) as Average_Interest_Rate from financial_loan
group by month(issue_date)
order by month(issue_date)),

mom_changes as (select month_num,Average_Interest_Rate as MTD_AVG_INT, lag(Average_Interest_Rate) over() as PMTD_AVG_INT, 
round((Average_Interest_Rate - lag(Average_Interest_Rate) over()), 2) 
as mom_change from cte)

select * from mom_changes
where month_num = 12


# Average Debt To Income Ratio
select round(avg(dti), 2) as AVG_DTI from financial_loan

# Average MTD DTI
select round(avg(dti), 2) as AVG_DTI from financial_loan
where month(issue_date) = 12

# MoM Changes in DTI
with cte as (select month(issue_date) as month_num, round(avg(dti)*100, 2) as AVG_DTI from financial_loan
group by month(issue_date)
order by month_num),

mom_changes as (select month_num, AVG_DTI as MTD_AVG_DTI, lag(AVG_DTI) over() as PMTD_AVG_DTI, round((AVG_DTI - lag(AVG_DTI) over()), 5) as mom_change from cte)

select * from mom_changes
where month_num = 12

# Good Loan and Bad Loan KPI----------------------------------------------------


-- Good Loan --------------------------------------------------------------------

# Good Loan Application Percentage
with cte as (select *,
case
	when loan_status = 'Charged Off' then '0'
    else '1'
    end as loan_type
from financial_loan)

select (sum(loan_type)/count(*))*100 as percentage_good_loans from cte

# Total Good Loan Applications
with cte as (select *,
case
	when loan_status = 'Charged Off' then 'Bad'
    else 'Good'
    end as loan_type
from financial_loan)

select count(*) as total_good_loans from cte
where loan_type = 'Good'


# Good Loan funded amount
with cte as (select *,
case
	when loan_status = 'Charged Off' then 'Bad'
    else 'Good'
    end as loan_type
from financial_loan)

select sum(loan_amount) as Good_loan_funded_amount from cte
where loan_type = 'Good'

# Good Loan Total Received Amount
with cte as (select *,
case
	when loan_status = 'Charged Off' then 'Bad'
    else 'Good'
    end as loan_type
from financial_loan)

select sum(total_payment) as Good_loan_received_amount from cte
where loan_type = 'Good'

-- Bad Loan -------------------------------------------------------------------------


# Bad Loan Application Percentage
with cte as (select *,
case
	when loan_status = 'Charged Off' then '1'
    else '0'
    end as loan_type
from financial_loan)

select (sum(loan_type)/count(*))*100 as percentage_bad_loans from cte

# Total Bad Loan Applications
with cte as (select *,
case
	when loan_status = 'Charged Off' then 'Bad'
    else 'Good'
    end as loan_type
from financial_loan)

select count(*) as total_bad_loans from cte
where loan_type = 'Bad'


# Bad Loan funded amount
with cte as (select *,
case
	when loan_status = 'Charged Off' then 'Bad'
    else 'Good'
    end as loan_type
from financial_loan)

select sum(loan_amount) as Bad_loan_funded_amount from cte
where loan_type = 'Bad'

# Bad Loan Total Received Amount
with cte as (select *,
case
	when loan_status = 'Charged Off' then 'Bad'
    else 'Good'
    end as loan_type
from financial_loan)

select sum(total_payment) as Bad_loan_received_amount from cte
where loan_type = 'Bad'


# Loan Status Grid View----------------------------

select loan_status, count(*) as total_applications, sum(loan_amount) as total_funded_amount, sum(total_payment) as total_received_amount,
avg(dti*100) as DTI, avg(int_rate*100) as Interest_Rate
from financial_loan
group by loan_status
order by loan_status = 'Fully Paid' desc,  loan_status = 'Current' desc

-- ----------------------
SELECT 
	loan_status, 
	SUM(total_payment) AS MTD_Total_Amount_Received, 
	SUM(loan_amount) AS MTD_Total_Funded_Amount 
FROM financial_loan
WHERE MONTH(issue_date) = 12 
GROUP BY loan_status


-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 2nd Dashbaord: OVERVIEW ------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Monthly Trends by Issue Date --
select monthname(issue_date) as month_name, count(*) as total_applications, sum(loan_amount) as total_funded_amount,
sum(total_payment) as amount_received 
from financial_loan
group by month(issue_date), monthname(issue_date)
order by month(issue_date)

-- Regional Analysis by State --
select address_state as state_name, count(*) as total_applications, sum(loan_amount) as total_funded_amount,
sum(total_payment) as amount_received 
from financial_loan
group by address_state
order by address_state


-- Loan Term Analysis --
select term, count(*) as total_applications, sum(loan_amount) as total_funded_amount,
sum(total_payment) as amount_received 
from financial_loan
group by term
order by term


-- Employee Length Analysis --
select emp_length, count(*) as total_applications, sum(loan_amount) as total_funded_amount,
sum(total_payment) as amount_received 
from financial_loan
group by emp_length
order by emp_length = '10+ years', emp_length

-- Loan Purpose Breakdown --
select purpose as purpose, count(*) as total_applications, sum(loan_amount) as total_funded_amount,
sum(total_payment) as amount_received 
from financial_loan
group by purpose
order by total_applications desc


-- Home Ownership Analysis --
select home_ownership as home_ownership, count(*) as total_applications, sum(loan_amount) as total_funded_amount,
sum(total_payment) as amount_received 
from financial_loan
group by home_ownership
order by total_applications desc

-- 3rd Dashbaord: DETAILS -------------------------------------------------------------------------------------------------------------------------------
select * from financial_loan






