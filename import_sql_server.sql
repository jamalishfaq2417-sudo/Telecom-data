-- SQL Server BULK INSERT template
-- Put the CSV files in a folder accessible to the SQL Server service.
-- Change C:\\telecom_sql_practice\\ to your actual folder.

BULK INSERT customers FROM 'C:\\telecom_sql_practice\\customers.csv'
WITH (FIRSTROW=2, FORMAT='CSV', FIELDQUOTE='"', ROWTERMINATOR='0x0a', TABLOCK);
BULK INSERT towers FROM 'C:\\telecom_sql_practice\\towers.csv'
WITH (FIRSTROW=2, FORMAT='CSV', FIELDQUOTE='"', ROWTERMINATOR='0x0a', TABLOCK);
BULK INSERT plans FROM 'C:\\telecom_sql_practice\\plans.csv'
WITH (FIRSTROW=2, FORMAT='CSV', FIELDQUOTE='"', ROWTERMINATOR='0x0a', TABLOCK);
BULK INSERT subscriptions FROM 'C:\\telecom_sql_practice\\subscriptions.csv'
WITH (FIRSTROW=2, FORMAT='CSV', FIELDQUOTE='"', ROWTERMINATOR='0x0a', TABLOCK);
BULK INSERT recharges FROM 'C:\\telecom_sql_practice\\recharges.csv'
WITH (FIRSTROW=2, FORMAT='CSV', FIELDQUOTE='"', ROWTERMINATOR='0x0a', TABLOCK);
BULK INSERT usage_events FROM 'C:\\telecom_sql_practice\\usage_events.csv'
WITH (FIRSTROW=2, FORMAT='CSV', FIELDQUOTE='"', ROWTERMINATOR='0x0a', TABLOCK);
BULK INSERT complaints FROM 'C:\\telecom_sql_practice\\complaints.csv'
WITH (FIRSTROW=2, FORMAT='CSV', FIELDQUOTE='"', ROWTERMINATOR='0x0a', TABLOCK);
BULK INSERT network_incidents FROM 'C:\\telecom_sql_practice\\network_incidents.csv'
WITH (FIRSTROW=2, FORMAT='CSV', FIELDQUOTE='"', ROWTERMINATOR='0x0a', TABLOCK);
