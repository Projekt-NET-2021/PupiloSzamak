CREATE Database PupiloszamakDb;
Go
Use PupiloszamakDb;
Go

CREATE TABLE Users
(
	UserId int Primary Key Identity(1,1) NOT NULL,
	UserName Char(50) NOT NULL,
	UserMail Char(30) NOT NULL,
/*UserPassword*/
)
CREATE TABLE Animals
(
	AnimalId int Primary Key Identity(1,1) NOT NULL,
	AnimalName Char(20) NOT NULL,
	AnimalSpecies Char(50) NOT NULL,
	AnimalRace Char(50) NOT NULL,
	AnimalLarge Char(9) CHECK (AnimalLarge in('Huge','Large','Medium','Small','Minature')) NOT NULL,
	AnimalWeight TinyInt NOT NULL,
	AnimalSex  Char(6) check (AnimalSex in ('Female','Male'))NOT NULL,
	AnimalActivity TinyInt (10) NOT NULL,
	AnimalFertility Bit (1) NOT NULL,
	Foreign Key(UserId) REFERENCES Users ON DELETE CASCADE ON UPDATE CASCADE 
);