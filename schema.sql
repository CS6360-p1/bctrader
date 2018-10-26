CREATE TABLE User(id integer primary key, 
     firstName varchar(50), 
     lastName varchar(50),
     password varchar(63));
CREATE TABLE Client(id integer primary key,
                    cell varchar(13), -- country code (2), area(3), local(7)
                    foreign key id references User(id));
CREATE TABLE Transaction(); --  When transactions are cancelled, we create a new cancellation transaction which references the transaction that was cancelled
CREATE TABLE Trader(id integer primary key, );
CREATE TABLE Account();
CREATE TABLE Address(city varchar(60), -- apparently the longest in the US is 48 chars...just giving some buffer
                     state varchar(15), -- Massachusetts -- probably limimt in the UI
                     zip varchar(9), -- zip 5 + 4
                     street varchar(50));
CREATE TABLE Manager();
CREATE TABLE Cancellation();
