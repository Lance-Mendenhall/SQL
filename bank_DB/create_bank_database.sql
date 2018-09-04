-- create and select the database
DROP DATABASE IF EXISTS bank_db;
CREATE DATABASE bank_db;
USE bank_db;

-- create the Product table
CREATE TABLE Accounts (
  ID         	   INT             PRIMARY KEY     AUTO_INCREMENT,
  Account_Holder   VARCHAR(30)     NOT NULL,
  Balance          DECIMAL(10,2)   NOT NULL,
  Fees             DECIMAL(10,2)   NOT NULL
);

-- insert some rows into the Accounts table
INSERT INTO Accounts VALUES
(3, 'Angie Snyder', 3333.00, 88.00),
(2, 'Michael Page', 5444.00, 175),
(1, 'Racheal Baumann', 8888, 250),
(4, 'Robert Mahoney', 3322, 88);

-- create the Transactions table
CREATE TABLE Transactions (
  ID             INT              PRIMARY KEY  AUTO_INCREMENT,
  Amount         Decimal(10,2)    NOT NULL,
  Txn_type       VARCHAR(25)      NOT NULL,
  AccountID      INT              NOT NULL,
  Foreign Key (AccountID) references Accounts(ID)
);

-- insert some rows into the Transactions table
INSERT INTO Transactions VALUES
(1, 500, 'Deposit', 3),
(2, -200, 'Withdrawal', 4),
(3, 200, 'Deposit', 4),
(4, 248, 'Deposit', 1);



-- create a user and grant privileges to that user
GRANT SELECT, INSERT, DELETE, UPDATE
ON bank_db.*
TO bank_db_user@localhost
IDENTIFIED BY 'sesame';