# UC1----create database and show database
show databases;
select database();

# UC2---- create table
create table address_book_service_database(
     first_name varchar(30) not null,
     last_name varchar(30) not null,
     address varchar(150) not null,
     city varchar(20) not null,
     state varchar(20) not null,
     zip varchar(10) not null,
     phone_no varchar(12) not null,
     email varchar(50) not null);

# UC3-----insert contacts
insert into address_book_service_database(first_name, last_name, address, city, state, zip,phone_no, email) values
			('suraj','khomane','baramati','pune','maharastra','413102','9977887766','sk@gmail.com'),
            ('kishor','kadam','barabanki','lucknow','UP','423762','8877665544','kk@gmail.com'),
            ('ram','mishra','rundh','surat','gujrat','443188','7788669944','rm@gmail.com');
select * from address_book_service_database;

# UC4 ----Edit Contact using name
update address_book_service_database set last_name = 'pant'
       where first_name = 'kishor';

# UC5 ----delete contact using person name
delete from address_book_service_database 
       where first_name = 'ram';

#UC6----- Retrieve Person belonging to a City or State from the Address Book
select * from address_book_service_database where 
         city = 'pune' or state = 'maharastra';
         
#UC7---- size of address book by City and State
select count(city),count(state) from address_book_service_database;

#UC8 ---- retrieve entries sorted alphabetically by Person’s name for a given city
select * from address_book_service_database order by first_name;
select * from address_book_service_database order by first_name desc;
