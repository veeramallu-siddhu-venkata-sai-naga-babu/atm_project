CREATE DATABASE atm_db;

USE atm_db;
# create accounts table
CREATE TABLE accounts (
    account_number BIGINT AUTO_INCREMENT PRIMARY KEY,
    account_name VARCHAR(40) NOT NULL UNIQUE,
    phone_number VARCHAR(10) NOT NULL,
    pin VARCHAR(4),
    balance DECIMAL(10, 2),
    CHECK(char_length(phone_number)=10)
)AUTO_INCREMENT=1000;
#create transaction table
CREATE TABLE transactions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    account_number BIGINT,
    transaction_type VARCHAR(10),
    amount DECIMAL(10, 2),
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (account_number) REFERENCES accounts(account_number)
);