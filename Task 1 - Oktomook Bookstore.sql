CREATE DATABASE Oktomook;

USE Oktomook;

CREATE TABLE Branch(
	branchNumber int NOT NULL AUTO_INCREMENT,
    branchName VARCHAR(16),
    streetNo int, 
    streetName VARCHAR(32),
    branchCity VARCHAR(32),
    branchState VARCHAR(3),
    numberEmployees int,
    PRIMARY KEY (branchNumber)
);

CREATE TABLE Publisher (
	publisherCode int NOT NULL AUTO_INCREMENT,
    publisherName VARCHAR(20),
    publisherCity VARCHAR(20),
    publisherState ENUM('QLD','VIC','NSW','WA','TAS','NT','SA'),
    PRIMARY KEY (publisherCode)
);

CREATE TABLE Author(
	authorID int NOT NULL AUTO_INCREMENT,
    firstName VARCHAR(16) NOT NULL,
    lastName VARCHAR(16) NOT NULL,
    PRIMARY KEY (authorID)
);

CREATE TABLE Book(
	ISBN VARCHAR(13) NOT NULL,
    title VARCHAR(16) NOT NULL,
    publisherCode VARCHAR(16),
    genre ENUM('Non-Fiction','Science Fiction','Fantasy','Crime','Mystery','Young Adult','Romance','General Fiction'),
    retailPrice int,
    paperback bool,
    PRIMARY KEY (ISBN)
);

CREATE TABLE Wrote(
	ISBN VARCHAR(13) NOT NULL,
    authorID int,
    sequenceNumber int,
    PRIMARY KEY (ISBN, authorID),
    FOREIGN KEY (ISBN) REFERENCES Book(ISBN),
    FOREIGN KEY (authorID) REFERENCES Author(authorID)
);

CREATE TABLE Inventory(
	ISBN VARCHAR(13) NOT NULL,
    branchNumber int,
    quantityInStock int DEFAULT 0,
    PRIMARY KEY (ISBN, branchNumber),
    FOREIGN KEY (ISBN) REFERENCES BOOK(ISBN),
    FOREIGN KEY (branchNumber) REFERENCES Branch (branchNumber)
);