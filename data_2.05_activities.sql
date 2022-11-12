-- Activity 1

-- During the lesson, we mentioned that one of the primary reasons for normalizing tables is to eliminate data redundancy. 
-- Otherwise, data redundancy can result in highly inefficient data storages. 
-- Which other problems you may think non-normalized structure may have?

-- Non normalisation can cause longer processing times, data duplication and unrelated data being put in the same table. 

-- --------------------------------

-- Activity 2

-- Identify the primary and foreign keys from the ER diagram.
-- Primary keys are normally in the first column, are unique, and cannot be null.
-- Secondary keys are not in the forst column of each table, and don't need to be unique 

-- Now use the bank database to make the following changes:

-- a. Use the insert command to create a new entry in the loan table with the following 
-- values (8000,8000000,930705,96396,12,8033.0,'C'). 
-- Here each element corresponds to the values in columns in the table (in the order the columns appear in the table). 
-- This might raise an error. Why is that?
use bank;
insert into loan
values (8000,8000000,930705,96396,12,8033.0,'C');
-- no errors


-- b. Use the delete command to delete an entry from the table account where the account_id is 11382. 
-- Does this result in an error? If it does, then why?
delete from account where account_id = 11382;
-- no errors

-- ------------------------------
 -- Activity 4
 
 -- Create the rest of the tables in the bank database (at least the client and the card tables).
-- Design and create a new database structure. Justify your changes.
-- Some ideas include renaming columns to ones that make more sense and, for eg., in the table district, adding foreign keys wherever necessary.
create database if not exists bank_demo;
use bank_demo;

create table account (
  `account_id` int UNIQUE NOT NULL, -- AS PRIMARY KEY
  `district_id` char(20) DEFAULT NULL,
  `frequency` varchar(20) DEFAULT NULL, -- char() , varchar(255) / They are similar, but char can have as many characters as needed, varchar can have only 255
  `date` int DEFAULT NULL,
  CONSTRAINT PRIMARY KEY (account_id)  -- constraint keyword is optional but its a good practice
);

create table card (
	`card_id` int unique not null, -- setting primary key
    `disp_id` int default null, -- I think an int for an ID is more appropriate
    `type` varchar(15), -- I don't offer card with a long name
    `issue_date` int default null,
    constraint primary key (card_id) -- card_id is the primary key
);

-- etc


