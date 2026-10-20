Select* from Bank_loan_data
SELECT 
count (id) AS Total_loan_Application from Bank_loan_data

SELECT count (id) AS MTD_Total_loan_Applications from Bank_loan_data
WHERE Month (issue_date)=12 and year (issue_date)=2021
SELECT sum (loan_amount) AS Total_funded_amount from Bank_loan_data