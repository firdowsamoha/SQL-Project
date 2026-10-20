Select* from Bank_loan_data
SELECT 
count (id) AS Total_loan_Application from Bank_loan_data

SELECT count (id) AS MTD_Total_loan_Applications from Bank_loan_data
WHERE Month (issue_date)=12 and year (issue_date)=2021

SELECT count (id) AS PMTD_Total_loan_Applications from Bank_loan_data
WHERE Month (issue_date)=11 and year (issue_date)=2021

SELECT sum (loan_amount) AS MTD_Total_funded_amount from Bank_loan_data
WHERE month (issue_date)=12 and year(issue_date)= 2021

SELECT sum (loan_amount) AS PMTD_Total_funded_amount from Bank_loan_data
WHERE month (issue_date)=11 and year(issue_date)= 2021

SELECT sum (total_payment) AS MTD_Total_Amount_Received FROM Bank_loan_data
Where month (issue_date) = 12 and year(issue_date)=2021

SELECT sum (total_payment) AS PMTD_Total_Amount_Received FROM Bank_loan_data
Where month (issue_date) = 11 and year(issue_date)=2021

SELECT ROUND (AVG (int_rate),4)*100 AS MTD_AVG_Interest_Rate from Bank_loan_data
WHERE Month (issue_date) =12 AND year (issue_date)=2021

SELECT ROUND (AVG (int_rate),4)*100 AS PMTD_AVG_Interest_Rate from Bank_loan_data
WHERE Month (issue_date) =11 AND year (issue_date)=2021

SELECT ROUND (Avg(dti),4)*100 AS MTD_AVG_DTI FROM Bank_loan_data
WHERE month (issue_date) =12 AND year (issue_date)=2021

SELECT ROUND (Avg(dti),4)*100 AS PMTD_AVG_DTI FROM Bank_loan_data
WHERE month (issue_date) =11 AND year (issue_date)=2021

SELECT loan_status from Bank_loan_data

SELECT
 (COUNT(CASE when loan_status = 'Fully paid' OR loan_status = 'Current' THEN id END)*100)
 /
   Count (id) AS Good_Loan_Percentage
   FROM Bank_loan_data

   SELECT COUNt (id) AS Good_Loan_Application FROM Bank_loan_data
   WHERE Loan_status = 'Fully paid' OR Loan_status = 'Current' 
   
   
   SELECT sum (loan_amount) AS Good_Loan_Funded_Amount FROM Bank_loan_data
   WHERE Loan_status = 'Fully paid' OR Loan_status = 'Current' 

SELECT SUM(total_payment) AS Good_Loan_Received_Amount FROM Bank_loan_data
   WHERE Loan_status = 'Fully paid' OR Loan_status = 'Current' 

   SELECT (count(CASE when loan_status = 'Charged off' then id END)*100.0)
   /
   count (id) AS Bad_Loan_Percentage
   FROM Bank_loan_data

   SELECT COUNT (id) AS Bad_Loan_Applications from Bank_loan_data
   Where loan_status='Charged off'

    SELECT SUM (total_payment) AS Bad_Loan_Amount_Received from Bank_loan_data
   Where loan_status='Charged off'

   SELECT loan_status,
     count (id) AS Total_Loan_Applications,
     SUM (total_payment) AS Total_Amount_Received,
    SUM (loan_amount) AS Total_Funded_Amount,
    AVG (int_rate*100) AS Interest_Rate,
    AVG (dti*100) AS DTI
FROM
 Bank_loan_data
Group by
 loan_status

 SELECT
 loan_status,
     SUM (total_payment) AS MTD_Total_Amount_Received,
     SUM(loan_amount) AS MTD_Total_Funded_Amount
FROM 
   Bank_loan_data
WHERE 
    month (issue_date) = 12 
GROUP BY 
 loan_status

 
 SELECT 
 Month(issue_date) AS Month_Number,
  DATENAME(Month, issue_date) AS Month_Name,
  Count(id) AS Total_Loan_Applications,
  SUM (loan_amount) AS Total_funded_Amount,
  SUM(total_payment) AS Total_Rceeived_Amount
From Bank_loan_data
GROUP BY Month(issue_date),DATENAME(Month,issue_date)
ORDER BY  Month(issue_date)

SELECT 
 address_state,
  Count(id) AS Total_Loan_Applications,
  SUM (loan_amount) AS Total_funded_Amount,
  SUM(total_payment) AS Total_Rceeived_Amount
From Bank_loan_data
GROUP BY address_state
ORDER BY   Count(id) DESC

SELECT 
 term,
  Count(id) AS Total_Loan_Applications,
  SUM (loan_amount) AS Total_funded_Amount,
  SUM(total_payment) AS Total_Rceeived_Amount
From Bank_loan_data
GROUP BY term
ORDER BY   term 


 