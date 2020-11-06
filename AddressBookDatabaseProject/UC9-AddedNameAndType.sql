  alter table AddressBook add type varchar(50),name varchar(50)
update AddressBook set type='Agent' where First_Name='Sven'
update AddressBook set name='ProfessionalContacts' where First_Name='Sven'
update AddressBook set type='Secretary' where First_Name='Teressa'
update AddressBook set name='ImportantContacts' where First_Name='Teressa'
select * from AddressBook