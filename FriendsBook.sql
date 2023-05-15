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