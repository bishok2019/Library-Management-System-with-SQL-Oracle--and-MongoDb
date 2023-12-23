db.createCollection('Banks');
db.Customer.find()

    db.banks.insertMany([
    {
        branch_id: 101,
        branch_location: "KTM"
    },
    {
        branch_id: 102,
        branch_location: "Pokhara"
    },
    {
        branch_id: 103,
        branch_location: "Bhaktapur"
    },
    {
        branch_id: 104,
        branch_location: "Bhaktapur"
    },
    
    {
        branch_id: 105,
    branch_location: "Tikapur"
    }
    ])

db.createCollection('Customer');
    db.Customer.insertMany([
  {
    customer_id: 1001,
    CustomersName: 'Bishok Poudel',
    PhoneNo: '984234567',
    Address: 'KTM',
    AccountNo: '12345678909876543',
    branch_id: 101,
    Accounttype: 'SAVING'
  },
  {
    customer_id: 1001,
    CustomersName: 'Bishok Poudel',
    PhoneNo: '984234567',
    Address: 'KTM',
    AccountNo: '12345678909876543',
    branch_id: 102,
    Accounttype: 'SAVING'
  },
  {
    customer_id: 1001,
    CustomersName: 'Bishok Poudel',
    PhoneNo: '984234567',
    Address: 'KTM',
    AccountNo: '12345678909876543',
    branch_id: 103,
    Accounttype: 'SAVING'
  },
  {
    customer_id: 1002,
    CustomersName: 'Ramesh Bham',
    PhoneNo: '984123456',
    Address: 'Lalitpur',
    AccountNo: '23456789098765432',
    branch_id: 102,
    Accounttype: 'SAVING'
  },
  {
    customer_id: 1003,
    CustomersName: 'Keshab Bk',
    PhoneNo: '981234567',
    Address: 'Bhaktapur',
    AccountNo: '34567890187654321',
    branch_id: 103,
    Accounttype: 'SAVING'
  },
  {
    customer_id: 1004,
    CustomersName: 'Binod Chaudhari',
    PhoneNo: '980123456',
    Address: 'Patan',
    AccountNo: '45678901276543210',
    branch_id: 104,
    Accounttype: 'CURRENT'
  },
  {
    customer_id: 1005,
    CustomersName: 'Phool Kumari',
    PhoneNo: '986543210',
    Address: 'Kathmandu',
    AccountNo: '56789012365432109',
    branch_id: 105,
    Accounttype: 'CURRENT'
  },
  {
    customer_id: 1006,
    CustomersName: 'Ram Pyari',
    PhoneNo: '982345678',
    Address: 'Boudha',
    AccountNo: '67890123454321098',
    branch_id: 106,
    Accounttype: 'CURRENT'
  },
  {
    customer_id: 1007,
    CustomersName: 'Ravi Sharma',
    PhoneNo: '984123456',
    Address: 'Bhaktapur',
    AccountNo: '45678901276543213',
    branch_id: 107,
    Accounttype: 'SAVINGS'
  }
  ])
    
db.createCollection('Employees');
  db.employees.insertMany([
  {
    employee_id: 2001,
    name: 'RajMani khanal',
    phone: '9843256745',
    address: 'Bardiya',
    branch_id: '101'
  },
  {
    employee_id: 2002,
    name: 'Sujit Maharjan',
    phone: '9817234567',
    address: 'Kathmandu',
    branch_id: '102'
  },
  {
    employee_id: 2003,
    name: 'Anjana Thapa',
    phone: '9801234567',
    address: 'Pokhara',
    branch_id: '103'
  },
  {
    employee_id: 2004,
    name: 'Saroj KC',
    phone: '9841554488',
    address: 'Biratnagar',
    branch_id: '104'
  },
  {
    employee_id: 2005,
    name: 'Nischal Maharjan',
    phone: '9813123456',
    address: 'Lalitpur',
    branch_id: '105'
  },
  {
    employee_id: 2006,
    name: 'Ranjit Gurung',
    phone: '9867001234',
    address: 'Butwal',
    branch_id: '106'
  }
]);

db.createCollection('Transaction');
  db.Transaction.insertOne([
  {
  "transaction_id": 5001,
  "account_no": "12345678909876543",
  "transaction_type": "DEPOSIT",
  "amount": 100000,
  "transaction_date": "28-AUG-2022",
  "customer_id": 1001,
  "branch_id": "101"
  }
  ]);
 
db.createCollection('Withdrawal');
  db.withdrawal.insertMany([
  {
   "transaction_id": 5001,
   "AccountNo": "12345678909876543",
   "transaction_type": "WITHDRAW",
   "amount": 100000,
   "transaction_date": "28-AUG-2022",
   "customer_id": 1001,
   "branch_id": 101,
   "withdrawal_id": 5,
   "withdrawal_method": "CASH"
},
{
   "transaction_id": 5001,
   "AccountNo": "12345678909876543",
   "transaction_type": "WITHDRAW",
   "amount": 100000,
   "transaction_date": "28-AUG-2022",
   "customer_id": 1001,
   "branch_id": 101,
   "withdrawal_id": 5,
   "withdrawal_method": "ATM"
},
{
   "transaction_id": 5002,
   "AccountNo": "12345678909876544",
   "transaction_type": "WITHDRAW",
   "amount": 200000,
   "transaction_date": "29-AUG-2022",
   "customer_id": 1002,
   "branch_id": 102,
   "withdrawal_id": 6,
   "withdrawal_method": "CHEQUE"
},
{
   "transaction_id": 5003,
   "AccountNo": "12345678909876545",
   "transaction_type": "WITHDRAW",
   "amount": 300000,
   "transaction_date": "30-AUG-2022",
   "customer_id": 1003,
   "branch_id": 103,
   "withdrawal_id": 7,
   "withdrawal_method": "ATM"
},
{
   "transaction_id": 5004,
   "AccountNo": "12345678909876546",
   "transaction_type": "WITHDRAW",
   "amount": 400000,
   "transaction_date": "31-AUG-2022",
   "customer_id": 1004,
   "branch_id": 104,
   "withdrawal_id": 8,
   "withdrawal_method": "CHEQUE"
},
{
   "transaction_id": 5005,
   "AccountNo": "12345678909876547",
   "transaction_type": "WITHDRAW",
   "amount": 500000,
   "transaction_date": "01-SEP-2022",
   "customer_id": 1005,
   "branch_id": 105,
   "withdrawal_id": 9,
   "withdrawal_method": "ATM"
},
{
   "transaction_id": 5006,
   "AccountNo": "12345678909876548",
   "transaction_type": "WITHDRAW",
   "amount": 600000,
   "transaction_date": "02-SEP-2022",
   "customer_id": 1006,
   "branch_id": 106,
   "withdrawal_id": 10,
   "withdrawal_method": "CHEQUE"
},
{
   "transaction_id": 5008,
   "AccountNo": "12345678909876550",
   "transaction_type": "WITHDRAW",
   "amount": 800000,
   "transaction_date": "04-SEP-2022",
   "customer_id": 1008,
   "branch_id": 108,
   "withdrawal_id": 12,
   "withdrawal_method": "CHEQUE"
    }
  ]);
    
db.createCollection('Deposits');
db.deposits.insertMany([
  {
    transaction_id: 5001,
    AccountNo: '12345678909876543',
    transaction_type: 'DEPOSIT',
    amount: 100000,
    transaction_date: new Date('2022-08-28'),
    customer_id: 1001,
    branch_id: 101,
    deposit_id: 5,
    deposit_method: 'CASH'
  },
  {
    transaction_id: 5002,
    AccountNo: '12345678909876543',
    transaction_type: 'DEPOSIT',
    amount: 50000,
    transaction_date: new Date('2022-08-29'),
    customer_id: 1002,
    branch_id: 102,
    deposit_id: 6,
    deposit_method: 'CASH'
  },
  {
    transaction_id: 5003,
    AccountNo: '23456789098765432',
    transaction_type: 'DEPOSIT',
    amount: 20000,
    transaction_date: new Date('2022-08-29'),
    customer_id: 1003,
    branch_id: 103,
    deposit_id: 7,
    deposit_method: 'CHEQUE'
  },
  {
    transaction_id: 5004,
    AccountNo: '34567890987654321',
    transaction_type: 'DEPOSIT',
    amount: 150000,
    transaction_date: new Date('2022-08-30'),
    customer_id: 1004,
    branch_id: 104,
    deposit_id: 8,
    deposit_method: 'CASH'
  },
  {
    transaction_id: 5005,
    AccountNo: '45678909876543210',
    transaction_type: 'DEPOSIT',
    amount: 25000,
    transaction_date: new Date('2022-08-30'),
    customer_id: 1005,
    branch_id: 105,
    deposit_id: 9,
    deposit_method: 'CHEQUE'
  },
  {
    transaction_id: 5006,
    AccountNo: '56789098765432109',
    transaction_type: 'DEPOSIT',
    amount: 100000,
    transaction_date: new Date('2022-08-31'),
    customer_id: 1006,
    branch_id: 106,
    deposit_id: 10,
    deposit_method: 'CASH'
  },
  {
    transaction_id: 5007,
    AccountNo: '67890987654321098',
    transaction_type: 'DEPOSIT',
    amount: 50000,
    transaction_date: new Date('2022-08-31'),
    customer_id: 1007,
    branch_id: 107,
    deposit_id: 11,
    deposit_method: 'CHEQUE'
  },
  {
    transaction_id: 5008,
    AccountNo: '78909876543210987',
    transaction_type: 'DEPOSIT',
    amount: 75000,
    transaction_date: new Date('2022-09-01'),
    customer_id: 1008,
    branch_id: 108,
    deposit_id: 12,
    deposit_method: 'CASH'
  }
  ]);
  
db.createCollection('Transfer');
  db.Transfer.insertMany([
  {
      transaction_id: 5001,
      AccountNo: '12345678909876543',
      transaction_type: 'TRANSFER',
      amount: 100000,
      transaction_date: new Date('2022-08-28'),
      customer_id: 1001,
      branch_id: 101,
      transfer_id: 5,
      Receiver_account_number: '123456787654323456776543'
   },
   {
      transaction_id: 5002,
      AccountNo: '22345678909876543',
      transaction_type: 'TRANSFER',
      amount: 200000,
      transaction_date: new Date('2022-08-29'),
      customer_id: 1002,
      branch_id: 102,
      transfer_id: 6,
      Receiver_account_number: '223456787654323456776543'
   },
   {
      transaction_id: 5003,
      AccountNo: '32345678909876543',
      transaction_type: 'TRANSFER',
      amount: 300000,
      transaction_date: new Date('2022-08-30'),
      customer_id: 1003,
      branch_id: 103,
      transfer_id: 7,
      Receiver_account_number: '323456787654323456776543'
   },
   {
      transaction_id: 5004,
      AccountNo: '42345678909876543',
      transaction_type: 'TRANSFER',
      amount: 400000,
      transaction_date: new Date('2022-08-31'),
      customer_id: 1004,
      branch_id: 104,
      transfer_id: 8,
      Receiver_account_number: '423456787654323456776543'
   },
   {
      transaction_id: 5005,
      AccountNo: '52345678909876543',
      transaction_type: 'TRANSFER',
      amount: 500000,
      transaction_date: new Date('2022-09-01'),
      customer_id: 1005,
      branch_id: 105,
      transfer_id: 9,
      Receiver_account_number: '523456787654323456776543'
   },
   {
      transaction_id: 5006,
      AccountNo: '62345678909876543',
      transaction_type: 'TRANSFER',
      amount: 600000,
      transaction_date: new Date('2022-09-02'),
      customer_id: 1006,
      branch_id: 106,
      transfer_id: 10,
      Receiver_account_number: '623456787654323456776543'
   },
   {
      transaction_id: 5007,
      AccountNo: '72345678909876543',
      transaction_type: 'TRANSFER',
      amount: 700000,
      transaction_date: new Date('2022-09-03'),
      customer_id: 1007,
      branch_id: 107,
      transfer_id: 11,
      Receiver_account_number: '723456787654323456776543'
   },
   {
      transaction_id: 5008,
      AccountNo: '82345678909876543',
      transaction_type: 'TRANSFER',
      amount: 800000,
      transaction_date: new Date('2022-09-04'),
      customer_id: 1008,
      branch_id: 108,
      transfer_id: 12,
      Receiver_account_number: '823456787654323456776543'
      }
  ]);
      
 ////inner-join
      b.Transaction.aggregate([
  {
    $lookup: {
      from: "Customer",
      localField: "customer_id",
      foreignField: "customer_id",
      as: "customer"
    }
  },
  {
    $unwind: "$customer"
  },
  {
    $project: {
      transaction_id: "$transaction_id",
      CustomersName: "$customer.CustomersName",
      PhoneNo: "$customer.PhoneNo",
      Address: "$customer.Address",
      branch_id: "$customer.branch_id",
      AccountType: "$customer.AccountType"
    }
  }
])
////UNION
  db.Withdrawal.aggregate([
  {
    $project: {
      transaction_id: "$customer_id",
      transaction_type: "$withdrawal_method",
      receiver_account_number: null,
      branch_id: 1,
      customer_id: 1
    }
  },
  {
    $unionWith: {
      coll: "Transfer",
      pipeline: [
        {
          $project: {
            transaction_id: "$customer_id",
            transaction_type: "Transfer",
            receiver_account_number: "$receiver_account_number",
            branch_id: 1,
            customer_id: 1
          }
        }
      ]
    }
  }
])
///nested table
  db.createCollection("staff")
db.staff.insertOne({
  staff_id: 1,
  staff_surname: "bhandari",
  staff_forename: "binod",
  staff_dob: ISODate("2000-09-10"),
  staff_address: []
})
db.staff.updateOne(
  { staff_id: 1 },
  { $push: { staff_address: {
        street: "sanoshree",
        town: "bardiya",
        postcode: "447455"
  }}}
)
db.staff.updateOne(
  { staff_id: 1 },
  { $push: { staff_address: {
        street: "Kohalpur",
        town: "banke",
        postcode: "444543"
  }}}
)
db.getCollection('staff').find({});

///////////////Timestamp(
  db.Transfer.find({ transaction_date: { $lte: new Date() } }, 
                 { transaction_id: 1, branch_id: 1, transaction_date: 1 })
                 
//////////////////////OLAP--group by grouping sets
 db.Customer.aggregate([
  {
    $group: {
      _id: {
        Address: "$Address",
        AccountType: "$AccountType",
        branch_id: "$branch_id"
      },
      CustomerCount: { $sum: 1 },
      TotalBalance: {
        $sum: {
          $cond: {
            if: { $eq: ["$AccountType", "SAVING"] },
            then: 10000,
            else: 50000
          }
        }
      }
    }
  },
  {
    $group: {
      _id: {
        Address: "$_id.Address",
        AccountType: "$_id.AccountType"
      },
      CustomerCount: { $sum: "$CustomerCount" },
      TotalBalance: { $sum: "$TotalBalance" },
      branch_id: { $first: "$_id.branch_id" }
    }
  },
  {
    $group: {
      _id: { Address: "$_id.Address" },
      CustomerCount: { $sum: "$CustomerCount" },
      TotalBalance: { $sum: "$TotalBalance" },
      branch_id: { $first: "$branch_id" },
      AccountType: { $push: { AccountType: "$_id.AccountType", TotalBalance: "$TotalBalance", branch_id: "$branch_id" } }
    }
  },
  {
    $group: {
      _id: null,
      CustomerCount: { $sum: "$CustomerCount" },
      TotalBalance: { $sum: "$TotalBalance" },
      Address: {
        $push: {
          Address: "$_id.Address",
          AccountType: "$AccountType"
        }
      }
    }
  }
]);

