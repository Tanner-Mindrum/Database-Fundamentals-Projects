CREATE TABLE customers (
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    street VARCHAR(50),
    zipcode VARCHAR(5));

SELECT * FROM customers;

INSERT INTO customers (first_name, last_name, phone, street, zipcode)
    VALUES ('Tom', 'Jewett', '562-555-1122', '123 Mockingbird Lane', '90210');

INSERT INTO customers (first_name, last_name, phone, street, zipcode)
    values ('Tom', 'Jewett', '562-555-1122', '123 Mockingbird Lane', '90210');

delete from customers where first_name = 'Tom';

alter table customers
add constraint customers_pk primary key (first_name, last_name, phone);

insert into customers (first_name, last_name, phone, street, zipcode)
values ('Tom', 'Jewett', '562-555-1122', '123 Mockingbird Lane', '90210');

-- Causes error because it would create a duplicate row. This can't happen
-- because of the primary key constraint customers_pk.
insert into customers (first_name, last_name, phone, street, zipcode)
values ('Tom', 'Jewett', '562-555-1122', '123 Mockingbird Lane', '90210');

-- Every table must have at least one superkey, the entire set of columns
-- Generally, we will not create such a uniqueness constraint because it is 
-- rare that other, more restrictive uniqueness constraints will catch a 
-- duplicate row before this "global" uniqueness constraint does.
alter table customers add constraint customer_uk01 
unique (first_name,last_name,phone,street,zipcode);

-- Causes error because it would create a duplicate row. This can't happen
-- because of the primary key constraint customers_pk
insert into customers (first_name, last_name, phone, street, zipcode)
values ('Tom', 'Jewett', '562-555-1122', '123 Mockingbird Lane', '90210');

alter table customers add constraint customer_uk02
unique (first_name,last_name,phone,street);

alter table customers add constraint customer_uk03
unique (first_name,last_name,phone,zipcode);

alter table customers add constraint customer_uk04
unique (first_name,last_name,street,zipcode);

insert into customers (first_name, last_name, phone, street, zipcode)
values ('Tom', 'Jewett', '714-888-1212', '123 Mockingbird Lane', '90713');

-- Causes a duplicate key error due to primary key customer_uk04
-- Error is that all values here already exist in the table.
insert into customers (first_name, last_name, phone, street, zipcode)
values ('Tom', 'Jewett', '714-888-7000', '123 Mockingbird Lane', '90210');

-- Causes error because existing data in the table violates this constraint.
alter table customers add constraint customer_uk05
unique (first_name,last_name,street);

-- Causes error because existing data in the table violates this constraint.
alter table customers add constraint customer_uk06
unique (first_name,last_name);