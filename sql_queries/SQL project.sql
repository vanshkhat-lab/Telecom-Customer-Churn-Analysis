Active vs Churned Customers
-- SELECT 
--     Churn,
--     COUNT(*) AS customer_count
-- FROM customer_churn
-- GROUP BY Churn;

Churn Rate Calculation
-- SELECT 
--     COUNT(*) * 100.0 / (SELECT COUNT(*) FROM telecom) AS churn_rate
-- FROM telecom
-- WHERE Churn = 'Yes';

Churn Rate by Contract
-- SELECT Contract, COUNT(*) 
-- FROM telecom
-- WHERE Churn = 'Yes'
-- GROUP BY Contract;

Churn by Tenure
-- SELECT 
--     tenure,
--     COUNT(*) 
-- FROM telecom
-- WHERE Churn = 'Yes'
-- GROUP BY tenure
-- ORDER BY tenure;

Churn by Internet Service
-- SELECT InternetService, COUNT(*) 
-- FROM telecom
-- WHERE Churn = 'Yes'
-- GROUP BY InternetService;


Churn by Payment Method
-- SELECT PaymentMethod, COUNT(*) 
-- FROM telecom
-- WHERE Churn = 'Yes'
-- GROUP BY PaymentMethod;


Average Monthly Charges
-- SELECT Churn, AVG(MonthlyCharges)
-- FROM telecom
-- GROUP BY Churn;

Simple JOIN
-- CREATE TABLE service_risk (
--     InternetService VARCHAR(50),
--     risk_level VARCHAR(20)
-- );
-- INSERT INTO service_risk VALUES
-- ('Fiber optic', 'High'),
-- ('DSL', 'Medium'),
-- ('No', 'Low');
-- SELECT 
--     telecom.InternetService,
--     service_risk.risk_level
-- FROM telecom
-- JOIN service_risk
-- ON telecom.InternetService = service_risk.InternetService;

