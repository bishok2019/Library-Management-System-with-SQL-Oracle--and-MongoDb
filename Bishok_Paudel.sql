DROP TYPE BankType ;
DROP TYPE CustomerType;
DROP TYPE EmployeeType ;
DROP TYPE TransactionType FORCE;
DROP TYPE WithdrawalType;
DROP TYPE DepositType;
DROP TYPE TransferType;

DROP TABLE Banks;
DROP TABLE Customer;
DROP TABLE Employees;
DROP TABLE Transaction;
DROP TABLE Withdrawal;
DROP TABLE Deposit;
DROP TABLE Transfer;

CREATE TYPE BankType AS OBJECT(
  branch_id NUMBER(10), 
  BranchLocation VARCHAR(255)
);
CREATE TABLE Banks OF BankType (
  branch_id PRIMARY KEY
);
INSERT INTO Banks(branch_id,BranchLocation) VALUES (101,'Tinkune');
INSERT INTO Banks(branch_id,BranchLocation) VALUES (102,'Koteshwor');
INSERT INTO Banks(branch_id,BranchLocation) VALUES (103,'Boudha');
INSERT INTO Banks(branch_id,BranchLocation) VALUES (104,'Thamel');
INSERT INTO Banks(branch_id,BranchLocation) VALUES (105,'Patan');
INSERT INTO Banks(branch_id,BranchLocation) VALUES (106,'Chabahil');
INSERT INTO Banks(branch_id,BranchLocation) VALUES (108,'Kirtipur');
INSERT INTO Banks(branch_id,BranchLocation) VALUES (109,'Kalanki');
INSERT INTO Banks(branch_id,BranchLocation) VALUES (110,'Lalitpur');
INSERT INTO Banks(branch_id,BranchLocation) VALUES (116,'Dharan');
INSERT INTO Banks(branch_id,BranchLocation) VALUES (117,'Janakpur');
INSERT INTO Banks(branch_id,BranchLocation) VALUES (118,'Hetauda');
INSERT INTO Banks(branch_id,BranchLocation) VALUES (119,'Nepalgunj');
INSERT INTO Banks(branch_id,BranchLocation) VALUES (120,'Biratnagar');

SELECT * FROM Banks;

CREATE TYPE CustomerType AS OBJECT (
  CustomersName VARCHAR2(50),
  customer_id NUMBER(10),
  PhoneNo VARCHAR2(20),
  Address VARCHAR2(100),
  AccountNo VARCHAR2(30),
  branch_id NUMBER(10),
  AccountType VARCHAR(50)
);

CREATE TABLE Customer OF CustomerType (
customer_id PRIMARY KEY,
FOREIGN KEY (branch_id) REFERENCES Banks(branch_id)
);

INSERT INTO Customer (customer_id,CustomersName,PhoneNo,Address,AccountNo,branch_id,Accounttype)
VALUES (1001,'Bishok Poudel','984234567','KTM','12345678909876543','101','SAVING');

INSERT INTO Customer (customer_id,CustomersName,PhoneNo,Address,AccountNo,branch_id,Accounttype)
VALUES (1001,'Bishok Poudel','984234567','KTM','12345678909876543','102','SAVING');

INSERT INTO Customer (customer_id,CustomersName,PhoneNo,Address,AccountNo,branch_id,Accounttype)
VALUES (1001,'Bishok Poudel','984234567','KTM','12345678909876543','103','SAVING');

INSERT INTO Customer (customer_id,CustomersName,PhoneNo,Address,AccountNo,branch_id,Accounttype)
VALUES (1002,'Ramesh Bham','984123456','Lalitpur','23456789098765432','102','SAVING');

INSERT INTO Customer (customer_id,CustomersName,PhoneNo,Address,AccountNo,branch_id,Accounttype)
VALUES (1003,'Keshab Bk','981234567','Bhaktapur','34567890187654321','103','SAVING');

INSERT INTO Customer (customer_id,CustomersName,PhoneNo,Address,AccountNo,branch_id,Accounttype)
VALUES (1004,'Binod Chaudhari','980123456','Patan','45678901276543210','104','CURRENT');

INSERT INTO Customer (customer_id,CustomersName,PhoneNo,Address,AccountNo,branch_id,Accounttype)
VALUES (1005,'Phool Kumari','986543210','Kathmandu','56789012365432109','105','CURRENT');

INSERT INTO Customer (customer_id,CustomersName,PhoneNo,Address,AccountNo,branch_id,Accounttype)
VALUES (1006,'Ram Pyari','982345678','Boudha','67890123454321098','106','CURRENT');

INSERT INTO Customer (customer_id, CustomersName, PhoneNo, Address, AccountNo, branch_id, Accounttype)
VALUES (1007,'Ravi Sharma','984123456','Bhaktapur','45678901276543213','107','SAVINGS');

INSERT INTO Customer (customer_id, CustomersName, PhoneNo, Address, AccountNo, branch_id, Accounttype)
VALUES (1008,'Sujan Singh','981123456','Kathmandu','45678901276543214','108','CURRENT');

INSERT INTO Customer (customer_id, CustomersName, PhoneNo, Address, AccountNo, branch_id, Accounttype)
VALUES (1009,'Prakash Adhikari','985123789','Lalitpur','45678901276543215','109','SAVINGS');

INSERT INTO Customer (customer_id, CustomersName, PhoneNo, Address, AccountNo, branch_id, Accounttype)
VALUES (1010,'Ram Sharma','980123123','Bhaktapur','45678901276543216','110','CURRENT');

INSERT INTO Customer (customer_id, CustomersName, PhoneNo, Address, AccountNo, branch_id, Accounttype)
VALUES (1011,'Sita Karki','981123789','Kathmandu','45678901276543217','101','SAVINGS');

INSERT INTO Customer (customer_id, CustomersName, PhoneNo, Address, AccountNo, branch_id, Accounttype)
VALUES (1012,'Hari KC','984123789','Patan','45678901276543218','102','CURRENT');

INSERT INTO Customer (customer_id, CustomersName, PhoneNo, Address, AccountNo, branch_id, Accounttype)
VALUES (1013,'Gita Sharma','985123123','Lalitpur','45678901276543219','103','SAVINGS');
SELECT * FROM Customer;


CREATE TYPE EmployeeType AS OBJECT(
  employee_id NUMBER(10),
  Name VARCHAR(255),
  PhoneNo NUMBER,
  Address VARCHAR(255),
  branch_id NUMBER(10)
);
CREATE TABLE Employees OF EmployeeType (
  employee_id PRIMARY KEY,
  FOREIGN KEY (branch_id) REFERENCES Banks(branch_id)
);

INSERT INTO Employees (employee_id,name,PhoneNo,Address,branch_id)
VALUES (2001,'RajMani khanal','9843256745','Bardiya','101');
INSERT INTO Employees (employee_id,name,PhoneNo,Address,branch_id)
VALUES (2002,'Sujit Maharjan','9817234567','Kathmandu','102');
INSERT INTO Employees (employee_id,name,PhoneNo,Address,branch_id)
VALUES (2003,'Anjana Thapa','9801234567','Pokhara','103');
INSERT INTO Employees (employee_id,name,PhoneNo,Address,branch_id)
VALUES (2004,'Saroj KC','9841554488','Biratnagar','104');
INSERT INTO Employees (employee_id,name,PhoneNo,Address,branch_id)
VALUES (2005,'Nischal Maharjan','9813123456','Lalitpur','105');
INSERT INTO Employees (employee_id,name,PhoneNo,Address,branch_id)
VALUES (2006,'Ranjit Gurung','9867001234','Butwal','106');

SELECT * FROM Employees;

CREATE TYPE TransactionType AS OBJECT (
transaction_id NUMBER,
transaction_type VARCHAR2(20),
AccountNo NUMBER,
amount NUMBER,
transaction_date DATE,
customer_id NUMBER(10),
branch_id NUMBER(10)
)NOT FINAL;
CREATE TABLE TRANSACTION OF TransactionType(
transaction_id PRIMARY KEY,
FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
FOREIGN KEY (branch_id) REFERENCES Banks(branch_id)
);
INSERT INTO TRANSACTION(transaction_id,AccountNo,transaction_type,amount,transaction_date,customer_id,branch_id)
VALUES (5001,'12345678909876543','DEPOSIT','100000','28-AUG-2022','1001','101');
INSERT INTO TRANSACTION(transaction_id, AccountNo, transaction_type, amount, transaction_date, customer_id, branch_id)
VALUES (5002,'12345678909876543','WITHDRAW','50000','29-AUG-2022','1002','102');
INSERT INTO TRANSACTION(transaction_id, AccountNo, transaction_type, amount, transaction_date, customer_id, branch_id)
VALUES (5003,'12345678909876543','DEPOSIT','75000','30-AUG-2022','1003','103');
INSERT INTO TRANSACTION(transaction_id, AccountNo, transaction_type, amount, transaction_date, customer_id, branch_id)
VALUES (5004,'12345678909876543','WITHDRAW','25000','31-AUG-2022','1004','104');

SELECT * FROM TRANSACTION;

CREATE TYPE DepositType UNDER TransactionType (
    deposit_id NUMBER,
    deposit_method VARCHAR2(20)
);
CREATE TABLE Deposit OF DepositType(
deposit_id PRIMARY KEY,
FOREIGN KEY (branch_id) REFERENCES Banks(branch_id),
FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);
INSERT INTO DEPOSIT(transaction_id,AccountNo,transaction_type,amount,transaction_date,customer_id,branch_id,deposit_id,deposit_method)
VALUES (5001,'12345678909876543','DEPOSIT','100000','28-AUG-2022','1001','101',5,'CASH');
INSERT INTO DEPOSIT(transaction_id,AccountNo,transaction_type,amount,transaction_date,customer_id,branch_id,deposit_id,deposit_method)
VALUES (5002,'12345678909876543','DEPOSIT','50000','29-AUG-2022','1002','102',6,'CASH');
INSERT INTO DEPOSIT(transaction_id,AccountNo,transaction_type,amount,transaction_date,customer_id,branch_id,deposit_id,deposit_method)
VALUES (5003,'23456789098765432','DEPOSIT','20000','29-AUG-2022','1003','103',7,'CHEQUE');

INSERT INTO DEPOSIT(transaction_id,AccountNo,transaction_type,amount,transaction_date,customer_id,branch_id,deposit_id,deposit_method)
VALUES (5004,'34567890987654321','DEPOSIT','150000','30-AUG-2022','1004','104',8,'CASH');

INSERT INTO DEPOSIT(transaction_id,AccountNo,transaction_type,amount,transaction_date,customer_id,branch_id,deposit_id,deposit_method)
VALUES (5005,'45678909876543210','DEPOSIT','25000','30-AUG-2022','1005','105',9,'CHEQUE');

INSERT INTO DEPOSIT(transaction_id,AccountNo,transaction_type,amount,transaction_date,customer_id,branch_id,deposit_id,deposit_method)
VALUES (5006,'56789098765432109','DEPOSIT','100000','31-AUG-2022','1006','106',10,'CASH');

INSERT INTO DEPOSIT(transaction_id,AccountNo,transaction_type,amount,transaction_date,customer_id,branch_id,deposit_id,deposit_method)
VALUES (5007,'67890987654321098','DEPOSIT','50000','31-AUG-2022','1007','107',11,'CHEQUE');

INSERT INTO DEPOSIT(transaction_id,AccountNo,transaction_type,amount,transaction_date,customer_id,branch_id,deposit_id,deposit_method)
VALUES (5008,'78909876543210987','DEPOSIT','75000','01-SEP-2022','1008','108',12,'CASH');

INSERT INTO DEPOSIT(transaction_id,AccountNo,transaction_type,amount,transaction_date,customer_id,branch_id,deposit_id,deposit_method)
VALUES (5009,'89098765432109876','DEPOSIT','10000','01-SEP-2022','1009','109',13,'CHEQUE');

INSERT INTO DEPOSIT(transaction_id,AccountNo,transaction_type,amount,transaction_date,customer_id,branch_id,deposit_id,deposit_method)
VALUES (5010,'09876543210987654','DEPOSIT','30000','02-SEP-2022','1010','110',14,'CASH');

INSERT INTO DEPOSIT(transaction_id,AccountNo,transaction_type,amount,transaction_date,customer_id,branch_id,deposit_id,deposit_method)
VALUES (5011,'98765432109876543','DEPOSIT','5000','02-SEP-2022','1011','101',15,'CHEQUE');

SELECT * FROM DEPOSIT;

DROP TYPE WITHDRAWALTYPE FORCE;
DROP TABLE WITHDRAWAL;

CREATE TYPE WithdrawalType UNDER TransactionType (
    withdrawal_id NUMBER,
    withdrawal_method VARCHAR2(20)
);
CREATE TABLE Withdrawal OF WithdrawalType(
    withdrawal_id PRIMARY KEY,
    FOREIGN KEY (branch_id) REFERENCES Banks(branch_id),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);
INSERT INTO withdrawal(transaction_id,AccountNo,transaction_type,amount,transaction_date,customer_id,branch_id,withdrawal_id,withdrawal_method)
VALUES (5001,'12345678909876543','WITHDRAW','100000','28-AUG-2022','1001','101','5','CASH');
INSERT INTO withdrawal(transaction_id,AccountNo,transaction_type,amount,transaction_date,customer_id, branch_id, withdrawal_id, withdrawal_method)
VALUES (5001,'12345678909876543','WITHDRAW','100000','28-AUG-2022','1001','101','5','ATM');
INSERT INTO withdrawal(transaction_id,AccountNo,transaction_type,amount,transaction_date,customer_id, branch_id, withdrawal_id, withdrawal_method)
VALUES (5002,'12345678909876544','WITHDRAW','200000','29-AUG-2022','1002','102','6','CHEQUE');
INSERT INTO withdrawal(transaction_id,AccountNo,transaction_type,amount,transaction_date,customer_id, branch_id, withdrawal_id, withdrawal_method)
VALUES (5003,'12345678909876545','WITHDRAW','300000','30-AUG-2022','1003','103','7','ATM');
INSERT INTO withdrawal(transaction_id,AccountNo,transaction_type,amount,transaction_date,customer_id, branch_id, withdrawal_id, withdrawal_method)
VALUES (5004,'12345678909876546','WITHDRAW','400000','31-AUG-2022','1004','104','8','CHEQUE');
INSERT INTO withdrawal(transaction_id,AccountNo,transaction_type,amount,transaction_date,customer_id, branch_id, withdrawal_id, withdrawal_method)
VALUES (5005,'12345678909876547','WITHDRAW','500000','01-SEP-2022','1005','105','9','ATM');
INSERT INTO withdrawal(transaction_id,AccountNo,transaction_type,amount,transaction_date,customer_id, branch_id, withdrawal_id, withdrawal_method)
VALUES (5006,'12345678909876548','WITHDRAW','600000','02-SEP-2022','1006','106','10','CHEQUE');
INSERT INTO withdrawal(transaction_id,AccountNo,transaction_type,amount,transaction_date,customer_id, branch_id, withdrawal_id, withdrawal_method)
VALUES (5008,'12345678909876550','WITHDRAW','800000','04-SEP-2022','1008','108','12','CHEQUE');
INSERT INTO withdrawal(transaction_id,AccountNo,transaction_type,amount,transaction_date,customer_id, branch_id, withdrawal_id, withdrawal_method)
VALUES (5009,'12345678909876551','WITHDRAW','900000','05-SEP-2022','1009','109','13','ATM');
INSERT INTO withdrawal(transaction_id,AccountNo,transaction_type,amount,transaction_date,customer_id, branch_id, withdrawal_id, withdrawal_method)
VALUES (5010,'12345678909876552','WITHDRAW','1000000','06-SEP-2022','1010','110','14','CHEQUE');

SELECT * FROM Withdrawal;
DROP TABLE TRANSFER;
DROP TYPE TRANSFERTYPE;
CREATE TYPE TransferType UNDER TransactionType (
    transfer_id NUMBER,
    receiver_account_number NUMBER
);
CREATE TABLE Transfer OF TransferType(
     transfer_id PRIMARY KEY,
     FOREIGN KEY (branch_id) REFERENCES Banks(branch_id),
     FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);
INSERT INTO Transfer(transaction_id,AccountNo,transaction_type,amount,transaction_date,customer_id,branch_id,transfer_id,Receiver_account_number)
VALUES (5001,'12345678909876543','TRANSFER','100000','28-AUG-2022','1001','101','5','123456787654323456776543');
INSERT INTO Transfer(transaction_id,AccountNo,transaction_type,amount,transaction_date,customer_id,branch_id,transfer_id,Receiver_account_number)
VALUES (5002,'22345678909876543','TRANSFER','200000','29-AUG-2022','1002','102','6','223456787654323456776543');
INSERT INTO Transfer(transaction_id,AccountNo,transaction_type,amount,transaction_date,customer_id,branch_id,transfer_id,Receiver_account_number)
VALUES (5003,'32345678909876543','TRANSFER','300000','30-AUG-2022','1003','103','7','323456787654323456776543');
INSERT INTO Transfer(transaction_id,AccountNo,transaction_type,amount,transaction_date,customer_id,branch_id,transfer_id,Receiver_account_number)
VALUES (5004,'42345678909876543','TRANSFER','400000','31-AUG-2022','1004','104','8','423456787654323456776543');
INSERT INTO Transfer(transaction_id,AccountNo,transaction_type,amount,transaction_date,customer_id,branch_id,transfer_id,Receiver_account_number)
VALUES (5005,'52345678909876543','TRANSFER','500000','01-SEP-2022','1005','105','9','523456787654323456776543');
INSERT INTO Transfer(transaction_id,AccountNo,transaction_type,amount,transaction_date,customer_id,branch_id,transfer_id,Receiver_account_number)
VALUES (5006,'62345678909876543','TRANSFER','600000','02-SEP-2022','1006','106','10','623456787654323456776543');
INSERT INTO Transfer(transaction_id,AccountNo,transaction_type,amount,transaction_date,customer_id,branch_id,transfer_id,Receiver_account_number)
VALUES (5007,'72345678909876543','TRANSFER','700000','03-SEP-2022','1007','107','11','723456787654323456776543');
INSERT INTO Transfer(transaction_id,AccountNo,transaction_type,amount,transaction_date,customer_id,branch_id,transfer_id,Receiver_account_number)
VALUES (5008,'82345678909876543','TRANSFER','800000','04-SEP-2022','1008','108','12','823456787654323456776543');
INSERT INTO Transfer(transaction_id,AccountNo,transaction_type,amount,transaction_date,customer_id,branch_id,transfer_id,Receiver_account_number)
VALUES (5009,'92345678909876543','TRANSFER','900000','05-SEP-2022','1009','109','13','923456787654323456776543');
INSERT INTO Transfer(transaction_id,AccountNo,transaction_type,amount,transaction_date,customer_id,branch_id,transfer_id,Receiver_account_number)
VALUES (5010,'02345678909876543','TRANSFER','1000000','06-SEP-2022','1010','110','14','023456787654323456776543');
SELECT * FROM TRANSFER; 

-----------inner join
SELECT t.transaction_id, c.CustomersName, c.PhoneNo, c.Address, c.branch_id, c.AccountType
FROM Transaction t
JOIN Customer c ON t.customer_id = c.customer_id;

-----------------Union
SELECT customer_id AS transaction_id, withdrawal_method AS
transaction_type, NULL AS branch_id, customer_id
FROM Withdrawal
UNION
SELECT customer_id, 'Transfer', branch_id, customer_id
FROM Transfer;
-------------------nested
CREATE TYPE AddressType as OBJECT
(
street VARCHAR2(30),
town VARCHAR2(20),
postcode VARCHAR2(10)
);
CREATE TYPE NestedAddressType AS TABLE OF AddressType;
CREATE TYPE EmployeeType AS OBJECT
(employee_id NUMBER(5),
employee_surname VARCHAR2(20),
employee_forename VARCHAR2(25),
employee_dob DATE,
employee_address NestedAddressType);
CREATE TABLE Employees OF EmployeeType
(employee_id PRIMARY KEY)
NESTED TABLE employee_address STORE AS NestedAddressTable;
INSERT INTO Employees VALUES
(1, 'bhandari', 'Binod', '10-SEP-2000', NestedAddressType());
INSERT INTO TABLE(
SELECT e.employee_address
FROM Employees e
WHERE e.employee_id = 1)
VALUES ('sanoshree', 'bardiya', '447525');
INSERT INTO TABLE
(SELECT e.employee_address
FROM Employees e
WHERE e.employee_id = 1)
VALUES ('kohalpur', 'banke', '445452');
SELECT * FROM Employees;

---------------------timestamp---------------
SELECT t.transaction_id, t.branch_id, t.transaction_date
FROM Transfer t
WHERE transaction_date <= SYSTIMESTAMP;

-----------------OLAP--------group by grouping sets
SELECT Address, AccountType, branch_id,
COUNT(*) AS CustomerCount,
SUM(CASE WHEN AccountType = 'SAVING' THEN 10000 ELSE 50000 END) AS TotalBalance
FROM Customer
GROUP BY GROUPING SETS ((Address, AccountType, branch_id), (Address, AccountType), (Address), ());

