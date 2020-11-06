select * from contact c inner join AddressTable a on
c.addressID = a.addressID inner join Contact_ContactType_Mapping ctm on
c.contactId=ctm.contactId inner join ContactType ct on
ctm.typeID=ct.typeID where a.city='Mumbai' or a.state='Mahrsahtra'

select count(email) TotalPersons from contact

select * from contact c inner join AddressTable a on
c.addressID = a.addressID inner join Contact_ContactType_Mapping ctm on
c.contactId=ctm.contactId inner join ContactType ct on
ctm.typeID=ct.typeID where a.city='Mumbai' order by c.firstName

select count(email) TotalPersons from contact c
inner join Contact_ContactType_Mapping ctm on
c.contactId=ctm.contactId inner join ContactType ct on
ctm.typeID=ct.typeID where ct.typeName='Family'