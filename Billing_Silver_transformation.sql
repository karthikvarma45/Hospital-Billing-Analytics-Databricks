CREATE OR REFRESH MATERIALIZED VIEW silver_billing_clean (
  CONSTRAINT valid_quantity   EXPECT (quantity > 0)    ON VIOLATION DROP ROW,
  CONSTRAINT valid_unit_price EXPECT (unit_price >= 0) ON VIOLATION DROP ROW
) AS
SELECT DISTINCT
  bill_id, visit_id, patient_id,
  quantity, unit_price,
  COALESCE(INITCAP(TRIM(department)), 'Unknown') AS department,
  INITCAP(TRIM(service_category))                AS service_category,
  COALESCE(total_amount, quantity * unit_price)  AS total_amount,
  visit_date,
  COALESCE(insurance_amount, 0)                  AS insurance_amount,
  COALESCE(TRIM(hospital_branch), 'Unknown')      AS hospital_branch,
  COALESCE(INITCAP(TRIM(city)), 'Unknown')        AS city,
  COALESCE(INITCAP(TRIM(region)), 'Unknown')      AS region,
  COALESCE(INITCAP(TRIM(payer_type)), 'Unknown')  AS payer_type,
  COALESCE(INITCAP(TRIM(payment_status)), 'Unknown') AS payment_status
FROM hospital_analysis.default.bronze_hospital_billing;
 
CREATE OR REFRESH MATERIALIZED VIEW silver_billing_rejected AS
SELECT *,
  CASE WHEN quantity <= 0 THEN 'Quantity is zero or negative'
       ELSE 'Unit price is negative' END AS reject_reason
FROM hospital_analysis.default.bronze_hospital_billing
WHERE quantity <= 0 OR unit_price < 0;
