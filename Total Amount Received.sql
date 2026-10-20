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