select * from bank_db.accounts;
-- INSERT INTO Accounts VALUES
-- (99, 'Wombat Bob', 7777, 2);

insert into accounts (account_holder, balance, fees)
values ('Dave Grohl', 2450000,0);

update accounts 
set account_holder = 'Donald J Duck'
where ID = 4;

-- select before update
select * from accounts 
where balance <= 10000000;

update accounts
set fees = 100
where balance <= 100000;

delete from accounts where ID = 5;

select * from accounts
where ID in (4,5,6);

-- % iswildcard

select * from accounts
where account_holder like '% J %';

-- last name starts with B
select * from accounts
where account_holder like '% B%';

-- first name starts with vowel
select * from accounts
where account_holder like 'a%'
or account_holder like 'e%'
or account_holder like 'i%'
or account_holder like 'o%'
or account_holder like 'u%';

-- select statement with regular expression

select * from accounts
where account_holder REGEXP "^[aeiou].*";

select balance from accounts;

select distinct(balance) 
from accounts;

-- insert into accounts (account_holder, balance, fees)
-- values ('Dave Grohl', 2450000,0);

insert into accounts  (fees, balance,account_holder)
values (2, 2000, 'Bruce Wayne');

insert into accounts values (111, 'Diana', 100, 20);

insert into accounts (account_holder, balance, fees)
values ('Barry Allen', 12345, 20); 

insert into accounts values (121, 'John Jones',234, 1);

insert into accounts (account_holder, balance, fees)
values ('Dane Whitman', 12, 1);

insert into accounts values (177, 'Lorna Dane', 2345, 22);

update accounts 
set fees = 1000
where ID = 177; 

delete from accounts
where account_holder = 'Dane Whitman';

insert into accounts (account_holder, balance, fees)
values ('Bruce Banner', 9000, 9);

insert into accounts values (200, 'Franklin Richards', 4321, 321);

-- inner join
select account_holder,balance, fees, amount, txn_type
	from
		accounts a
			inner join
		transactions t
			on a.ID = t.accountID;
            
-- left outer join            
select account_holder, balance, fees, amount, txn_type
	from accounts accts
    left outer join transactions
    on accts.id = AccountID;
    
            


















