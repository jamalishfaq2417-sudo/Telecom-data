CREATE DATABASE TelecomAnalyticsPractice;
GO
USE TelecomAnalyticsPractice;
GO

CREATE TABLE customers (
 customer_id VARCHAR(20) PRIMARY KEY, customer_name VARCHAR(100), msisdn VARCHAR(30),
 city VARCHAR(50), province VARCHAR(30), customer_segment VARCHAR(30), plan_type VARCHAR(20),
 gender VARCHAR(10), age INT, signup_date DATE, customer_status VARCHAR(20),
 acquisition_channel VARCHAR(30), device_brand VARCHAR(30), device_model VARCHAR(50), is_4g_enabled BIT
);
CREATE TABLE towers (
 tower_id VARCHAR(20) PRIMARY KEY, city VARCHAR(50), province VARCHAR(30), technology VARCHAR(20),
 site_type VARCHAR(30), status VARCHAR(20), capacity_mbps INT, installed_date DATE
);
CREATE TABLE plans (
 plan_id VARCHAR(20) PRIMARY KEY, plan_name VARCHAR(100), plan_type VARCHAR(20),
 monthly_price DECIMAL(12,2), data_mb INT, voice_mins INT, sms_qty INT,
 revenue_target DECIMAL(12,2), validity_days INT
);
CREATE TABLE subscriptions (
 subscription_id VARCHAR(20) PRIMARY KEY, customer_id VARCHAR(20), plan_id VARCHAR(20),
 activation_date DATE, channel VARCHAR(30), subscription_status VARCHAR(20), auto_renew BIT,
 FOREIGN KEY(customer_id) REFERENCES customers(customer_id), FOREIGN KEY(plan_id) REFERENCES plans(plan_id)
);
CREATE TABLE recharges (
 recharge_id VARCHAR(20) PRIMARY KEY, customer_id VARCHAR(20), recharge_datetime DATETIME,
 amount_pkr DECIMAL(12,2), channel VARCHAR(40), payment_status VARCHAR(20),
 bonus_amount_pkr DECIMAL(12,2), FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);
CREATE TABLE usage_events (
 usage_id VARCHAR(20) PRIMARY KEY, customer_id VARCHAR(20), usage_datetime DATETIME,
 usage_type VARCHAR(20), tower_id VARCHAR(20), duration_minutes DECIMAL(10,2),
 sms_count INT, data_mb DECIMAL(12,2), charge_pkr DECIMAL(12,2), roaming_flag BIT,
 FOREIGN KEY(customer_id) REFERENCES customers(customer_id), FOREIGN KEY(tower_id) REFERENCES towers(tower_id)
);
CREATE TABLE complaints (
 complaint_id VARCHAR(20) PRIMARY KEY, customer_id VARCHAR(20), complaint_date DATE,
 category VARCHAR(40), channel VARCHAR(30), priority VARCHAR(20), status VARCHAR(20),
 resolution_hours DECIMAL(10,2), satisfaction_score INT,
 FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);
CREATE TABLE network_incidents (
 incident_id VARCHAR(20) PRIMARY KEY, tower_id VARCHAR(20), incident_datetime DATETIME,
 incident_type VARCHAR(30), severity VARCHAR(20), downtime_minutes INT, resolved_by VARCHAR(40),
 FOREIGN KEY(tower_id) REFERENCES towers(tower_id)
);
