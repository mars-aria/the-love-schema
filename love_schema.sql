CREATE DATABASE The_Love_Schema;
USE The_Love_Schema;

CREATE TABLE person_1 (
person1_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
FirstName TINYTEXT,
LastName TINYTEXT,
BirthDate DATE,
Description VARCHAR(255),
Height VARCHAR(255),
Age SMALLINT,
BodyType TINYTEXT,
Race TINYTEXT,
Nationality TINYTEXT,
Gender TINYTEXT,
RomOrient TINYTEXT,
SexualOrient TINYTEXT,
MBTI TINYTEXT,
CharTrope TINYTEXT,
ZodiacSign TINYTEXT,
BloodType TINYTEXT,
Occupation TINYTEXT,
EQLevel TINYTEXT,
PRIMARY KEY (person1_id)
);

CREATE TABLE person_2 (
person2_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
FirstName TINYTEXT,
LastName TINYTEXT,
BirthDate DATE,
Description VARCHAR(255),
Height VARCHAR(255),
Age SMALLINT,
BodyType TINYTEXT,
Race TINYTEXT,
Nationality TINYTEXT,
Gender TINYTEXT,
RomOrient TINYTEXT,
SexualOrient TINYTEXT,
MBTI TINYTEXT,
CharTrope TINYTEXT,
ZodiacSign TINYTEXT,
BloodType TINYTEXT,
Occupation TINYTEXT,
EQLevel TINYTEXT,
PRIMARY KEY (person2_id)
);

CREATE TABLE Love (
love_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
person1_id INT UNSIGNED,
person2_id INT UNSIGNED,
duration VARCHAR(255),
type TINYTEXT,
PRIMARY KEY (love_id),
FOREIGN KEY (person1_id) REFERENCES person_1(person1_id),
FOREIGN KEY (person2_id) REFERENCES person_2(person2_id)
);

INSERT INTO person_1 (person1_id, FirstName, LastName, BirthDate, Description, Height, Age, BodyType, Race, Nationality, Gender, RomOrient, SexualOrient, MBTI, CharTrope, ZodiacSign, BloodType, Occupation, EQLevel) 
VALUES ("1","Esther", "Odekunle", "1997-09-11", "One lovely brown-skinned girl.", '5''11', "25", "Curvy", "Black", "British", "Female", "Aromantic", "Asexual", "ESTJ", "Tsundere", "Virgo", "O", "Scientist", "Varies");
                     
INSERT INTO person_2 (person2_id, FirstName, LastName, BirthDate, Description, Height, Age, BodyType, Race, Nationality, Gender, RomOrient, SexualOrient, MBTI, CharTrope, ZodiacSign, BloodType, Occupation, EQLevel) 
VALUES ("2","Adam", "Lee", "1996-11-22", "One handsome tan guy.", '5''7', "26", "Muscular", "Asian", "American", "Male", "Polyamorous", "Pansexual", "ESFP", "Himbo", "Leo", "AB-", "Pilot", "Varies");

INSERT INTO Love (person1_id, person2_id, duration, type)
VALUES (1, 2, "2020-Present", "Unrequited");

SELECT Love.duration, Love.type, person_1., person_2.
FROM person_1, person_2, Love 
WHERE 
AND person_1.person1_id = Love.person1_id
AND Love.person2_id = person_2.person2_id;
