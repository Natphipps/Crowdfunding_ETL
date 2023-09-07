--create subcategory table
create table subcategory(
	subcategory_id VARCHAR(50),
	subcategory VARCHAR(50),
	primary key (subcategory_id) 
);

--create category table
create table category(
	category_id VARCHAR(50),
	category VARCHAR(50),
	primary key (category_id)

);

--create contact table
create table contacts(
	contact_id int not null,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	primary key(contact_id)
);
--create campaign table
create table campaign(
	cf_id int not null,
	contact_id int not null,
	company_name VARCHAR(100) not null,
	description VARCHAR(100) not null,
	goal decimal,
	pledged decimal,
	outcome VARCHAR(50),
	backers_count int not null,
	country VARCHAR(50) not null,
	currency CHAR(3),
	launched_date date,
	end_date date,
	category_id VARCHAR(100),
	subcategory_id VARCHAR(100),
	primary key (contact_id),
	foreign key (subcategory_id) references subcategory(subcategory_id),
	foreign key (category_id) references category(category_id)
);


select * from campaign;

select * from category;

select * from subcategory;

select * from contacts;

