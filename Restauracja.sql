Use Restauracja;

drop table Reservation;
drop table TBL;
drop table Schedule;
drop table Chain;
drop table Restaurant;
drop table Users;


CREATE TABLE Users (
    userID int  not null primary key identity,
    firstName varchar(255) not null,
    lastName varchar(255) not null,
    student binary not null,
	email varchar(255) not null unique,
	birthDate date not null,
	phone int not null unique,
	userLogin varchar(255) not null,
	userPass varchar(255) not null
    );

CREATE TABLE Chain(
	chainID int primary key identity not null,
	chainName varchar(255) not null
);

CREATE TABLE Restaurant(
	restaurantID int primary key identity not null,
	foodType varchar(255) not null,
	restaurantName varchar(255) not null,
	localisation varchar(255) not null,
	chainID int FOREIGN KEY REFERENCES Chain(chainID)
);

CREATE TABLE Schedule(
	mon_opening time not null,
	mon_closing time not null,
	tue_opening time not null,
	tue_closing time not null,
	wed_opening time not null,
	wed_closing time not null,
	thu_opening time not null,
	thu_closing time not null,
	fri_opening time not null,
	fri_closing time not null,
	sat_opening time not null,
	sat_closing time not null,
	sun_opening time not null,
	sun_closing time not null,
	restaurantID int FOREIGN KEY REFERENCES Restaurant(restaurantID)
	);


CREATE TABLE TBL(
	tableID int primary key not null identity,
	chairNumber int not null,
	restaurantID int FOREIGN KEY REFERENCES Restaurant(restaurantID)
);


CREATE TABLE Reservation(
    reservationID int not null primary key identity,
	reservationDate datetime not null,
	duration int not null,
	guestNumber int not null,
	userID int FOREIGN KEY REFERENCES Users(userID),
	tableID int FOREIGN KEY REFERENCES TBL(tableID)
);



