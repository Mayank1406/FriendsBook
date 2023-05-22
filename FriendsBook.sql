drop database Friendsbook;
-- # Creating DataBase bio
CREATE DATABASE FriendsBook;

-- #Selecting Database
use Friendsbook;

-- #Creating Tables
create table register(
	user_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
     name varchar(100),
     lastname varchar(100),
     username varchar(100),
     email varchar(100),
     password varchar(100),
     dateofbirth date,
     gender varchar(20),
     city varchar(100),
     profile_pic varchar(100),
     date_joined timestamp
);

-- # checking data insertion
select * from register; 

drop table bio;
-- # bio table
create table bio(
	bio_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
	user_id int not null,
     about varchar(100),
     workingat varchar(100),
     studied varchar(100),
     highschool varchar(100),
     livingat varchar(100),
     from1 varchar(100),
     timestamp timestamp,
     FOREIGN KEY (user_id) REFERENCES register(user_id),
     index(email)
);

select * from bio;

-- # status table
create table status(
	email varchar(100),
     status_text varchar(100),
     status_img varchar(100),
     date1 varchar(100),
     time1 varchar(100),
     timestamp timestamp,
	 FOREIGN KEY (email) REFERENCES register(email)
);