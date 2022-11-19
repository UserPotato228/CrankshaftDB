CREATE DATABASE Crankshaft_Prod;

CREATE TABLE Order(
ID_item int PRIMARY KEY AUTO_INCREMENT NOT NULL,
Main_journals int NOT NULL,
Rod_journals int NOT NULL,
D_MJ float NOT NULL,
D_RJ float NOT NULL,
D_Flywheel_fl float NOT NULL,
D_Pulley_end float NOT NULL,
PN_carving nvarchar(10) NOT NULL,
Steel_grades nvarchar(10) NOT NULL,
FOREIGN KEY Steel_grades REFERENCES Storage(Name)
);

CREATE TABLE Storage(
ID_material PRIMARY KEY NOT NUll,
Name nvarchar(30) NOT NULL,
Amount int NOT NULL
);

CREATE TABLE Delivery(
ID_item int PRIMARY KEY NOT NULL,
FullName nvarchar(40) NOT NULL,
Phone_num nvarchar(12) NOT NULL,
Point_issue nvarchar(100) NOT NULL,

);

CREATE TABLE Est_unit(
ID_unit int PRIMARY KEY NOT NULL,
Name_div nvarchar(30) NOT NULL,
Rank_ nvarchar(30) NOT NULL
);

CREATE TABLE Sub_div(
ID_subdiv int PRIMARY KEY NOT NULL,
Name_subdiv nvarchar(30) NOT NULL
);

CREATE TABLE Employee(
ID_passport nvarchar(15) PRIMARY KEY UNIQUE,
FullName nvarchar(100) NOT NULL,
Name_subdiv nvarchar(30) NOT NULL,
Name_div nvarchar(30) NOT NULL,
Rank_ nvarchar(30) NOT NULL
);

CREATE TABLE Org(
INN int PRIMARY KEY UNIQUE,
GRN int UNIQUE,
OGRNIP int UNIQUE
);