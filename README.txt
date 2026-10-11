TELECOM SQL PRACTICE DATASET

Synthetic data for SQL/business-analytics practice. It is NOT confidential Jazz, Zong,
or any other operator customer data. Structure and package concepts are inspired by
public Pakistani telecom information.

TABLES
customers             25,000
towers                    600
plans                      35
subscriptions         50,000
recharges             80,000
usage_events         150,000
complaints            20,000
network_incidents     8,000
TOTAL ROWS           333,635

FILES
CSV files: raw tables
schema.sql: SQL Server database/table definitions
import_sql_server.sql: SQL Server BULK INSERT commands
telecom_practice.sqlite: ready-to-query database

MSISDN values are dummy/test identifiers.

Recommended first step:
SELECT TOP 100 * FROM customers;
SELECT TOP 100 * FROM usage_events;
SELECT TOP 100 * FROM recharges;
