--Query - 1
SELECT * FROM "AwsDataCatalog". "credit-classifier-transformed". "train_dataset" 
limit 5;

--Query - 2
SELECT occupation, COUNT(DISTINCT customer_id) AS num_customers 
FROM "AwsDataCatalog". "credit-classifier-transformed". "train_dataset"
GROUP BY occupation limit 5;

--Query - 3
SELECT type_of_loan, COUNT(customer_id) AS num_customers
FROM "AwsDataCatalog". "credit-classifier-transformed". "train_dataset"
GROUP BY type_of_loan;

--Query - 4
SELECT age, COUNT(customer_id) AS num_customers
FROM "AwsDataCatalog". "credit-classifier-transformed". "train_dataset"
GROUP BY age;

--Query - 5
SELECT customer_id, num_credit_card
FROM "AwsDataCatalog". "credit-classifier-transformed". "train_dataset"
ORDER BY num_credit_card DESC
LIMIT 10;

--Query - 6
SELECT month, AVG(num_credit_inquiries) AS avg_credit_inquiries 
FROM "AwsDataCatalog". "credit-classifier-transformed". "train_dataset"
GROUP BY month;

--Query - 7
SELECT occupation, AVG(monthly_inhand_salary) AS avg_monthly_salary 
FROM "AwsDataCatalog". "credit-classifier-transformed". "train_dataset"
GROUP BY occupation;

--Query - 8
SELECT COUNT (DISTINCT customer id) AS num_customers_with.loans
FROM "AwsDataCatalog". "credit-classifier-transformed". "train_dataset"
WHERE num_of_loan IS NOT NULL;

--Query - 9
SELECT month, AVG(num_credit_inquiries) AS avg_credit_inquiries
FROM "AwsDataCatalog". "credit-classifier-transformed" . "train_dataset"
GROUP BY month;

--Query - 10
SELECT month, SUM(total_emi_per_month) AS total_emi_payments
FROM "AwsDataCatalog". "credit-classifier-transformed". "train_dataset"
GROUP BY month;




