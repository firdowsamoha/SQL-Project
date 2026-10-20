Select* from Bank_loan_data
SELECT 
count (id) AS Total_loan_Application from Bank_loan_data

SELECT count (id) AS PMTD_Total_loan_Applications from Bank_loan_data
WHERE Month (issue_date)=11 and year (issue_date)=2021