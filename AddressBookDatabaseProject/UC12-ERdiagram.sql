create table AddressTable
(
addressID int  not null primary key,
address varchar(200) not null,
city varchar(25) not null,
state varchar(25) not null,
zip int not null
)
insert into AddressTable values
(101,'MH','Mumbai','Maharahtra',7243549),
(102,'MH','Mumbai','Maharahtra',7353527),
(103,'sandip','Valsad','Gujurat',7678534),
(104,'ashokanagar','nasik','Maharashtra',7237),
(105,'navsari123','navsari','gujarat',123433),
(106,'Delhi123','London','Haryana',789)
select * from AddressTable
create table ContactType
(
typeID int  not null primary key,
typeName varchar(20) not null
)
insert into ContactType values
(201,'Family'),
(202,'Friend'),
(203,'Self')
select * from ContactType
create table contact
(
contactID int  not null primary key,
addressID int  not null,
firstName varchar(25) not null,
lastName varchar(25) not null,
phoneNumber bigint not null,
email varchar(100) not null,
contact_name varchar(20) not null,
FOREIGN KEY(addressID) REFERENCES AddressTable(addressID),
)
insert into contact values
(1,101,'Poorvin','Desai',76788,'poorvin@gmail.com','poorvinJob'),
(2,102,'Abhijeet','Gaikwad',76688,'abhijeet@gmail.com','Abhifriend'),
(5,103,'Sameer','Shaikh',993459,'sameer@gmail.com','SelfContact')
select * from contact
create table Contact_ContactType_Mapping
(
MapID int  not null primary key,
contactID int  not null,
typeID int  not null,
FOREIGN KEY(contactID) REFERENCES Contact(contactID),
FOREIGN KEY(typeID) REFERENCES ContactType(typeID)
)
insert into Contact_ContactType_Mapping values
(301,1,201),
(302,1,202),
(303,2,201),
(304,2,202),
(307,5,203)
select * from Contact_ContactType_Mapping