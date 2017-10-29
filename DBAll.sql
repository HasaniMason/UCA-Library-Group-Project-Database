CREATE TABLE studio
(
Name	VARCHAR2 (20) CONSTRAINT studio_name_pk PRIMARY KEY,
 City	VARCHAR2 (20)
);

 CREATE TABLE donators
(
UCAID	NUMBER (9),
 Name	VARCHAR2 (25) CONSTRAINT donators_name_pk PRIMARY KEY,
 Amount	NUMBER (6,2)
);

CREATE TABLE Donatortype
(
 donatorID 	NUMBER(3) CONSTRAINT donatortype_donatorid_pk PRIMARY KEY,
 Donatortype	VARCHAR2 (10),
 UCAID		NUMBER (9),
 MovieEIDR 	int,
 BookISBN	int,
 JournalID	NUMBER(10),
 AudiobookISBN	int,
 MoneyAmount	NUMBER (6,2)
);

CREATE TABLE publishers
(
City	VARCHAR2 (10),
 Name	VARCHAR2 (25) CONSTRAINT publishers_name_pk PRIMARY KEY
);

CREATE TABLE Staff(
SSN		Number(9) constraint Staff_ssn_pk PRIMARY KEY,
Address		VARCHAR(20),
DOB		DATE,
Name		Char(15),
Email		Varchar(20),
Hired		DATE,
Phone		Number(11),
Pay		Number(10),
Director	Number(10) );

CREATE TABLE Dependents(
Name		Char(10) constraint Dependents_Name_pk PRIMARY KEY,
StaffSSN	NUMBER(9),
DOB		DATE );

CREATE TABLE Books (
ISBN	int CONSTRAINT books_isbn_pk PRIMARY KEY,
Genre	VARCHAR2(25),
Title	VARCHAR2(50),
YearPub	DATE,
BookFormat	VARCHAR2(25),
Publisher	VARCHAR2(25),
UCAID	NUMBER(9),
CheckoutDate	Date,
Cover	VARCHAR2(50)
);

CREATE TABLE Movies (
EIDR int CONSTRAINT movies_eidr_pk PRIMARY KEY,
Genre	VARCHAR2(25),
Title	VARCHAR2(50),
YearPub	DATE,
MovieFormat VARCHAR2(25),
Director 	VARCHAR2(25),
Cover	VARCHAR2(50),
Studio	VARCHAR2(20),
UCAID	NUMBER(9),
CheckoutDate	Date
);

CREATE TABLE AudioBooks (
ISBN	int CONSTRAINT ab_isbn_pk PRIMARY KEY,
Genre	VARCHAR2(25),
Title	VARCHAR2(50),
YearPub	DATE,
ABookFormat	VARCHAR2(25),
Publisher	VARCHAR2(25),
UCAID	NUMBER(9),
CheckoutDate	Date
);

CREATE TABLE Journal(
JournalID Number(10) CONSTRAINT journal_id_pk PRIMARY KEY,
JournalType Number(2),
JournalYear Date,
Title VarChar2(25),
Publisher VARCHAR2(25),
UCAID NUMBER(9)
);

CREATE TABLE members
(UCAID       NUMBER(9),
 Phone       NUMBER(10),
 Picture     CHAR(1),
 Fname       VARCHAR2(15) CONSTRAINT members_Fname_nn NOT NULL,
 Lname       VARCHAR2(15) CONSTRAINT members_Lname_nn NOT NULL,
 Minit       VARCHAR2(1) CONSTRAINT members_Minit_nn NOT NULL,
 DOB         DATE,
 Username    VARCHAR2(15),
 Password    VARCHAR2(15),
 CONSTRAINT members_UCAID_pk PRIMARY KEY (UCAID));

CREATE TABLE studentworkers
(UCAID       NUMBER(9),
 SSN         NUmber(9),
 CONSTRAINT studentworkers_UCAID_pk PRIMARY KEY (UCAID));
 
 CREATE TABLE Authors(
BookISBN int,
JournalID NUMBER(10),
AuthorName VARCHAR2(25) CONSTRAINT authors_name_pk PRIMARY KEY
);
 
 ALTER TABLE Staff
ADD CONSTRAINT staff_director_fk FOREIGN KEY(Director)
REFERENCES Staff(SSN);

ALTER TABLE StudentWorkers
ADD CONSTRAINT studentworkers_ucaid_fk FOREIGN KEY(UCAID)
REFERENCES Members(UCAID);

ALTER TABLE StudentWorkers
ADD CONSTRAINT studentworkers_ssn_fk FOREIGN KEY(SSN)
REFERENCES Staff(SSN);

ALTER TABLE Donators
ADD CONSTRAINT donators_ucaid_fk FOREIGN KEY(UCAID)
REFERENCES Members(UCAID);

ALTER TABLE Movies
ADD CONSTRAINT movies_studio_fk FOREIGN KEY(Studio)
REFERENCES Studio(Name);

ALTER TABLE Movies
ADD CONSTRAINT movies_ucaid_fk FOREIGN KEY(UCAID)
REFERENCES Members(UCAID);

ALTER TABLE Books
ADD CONSTRAINT books_publisher_fk FOREIGN KEY(Publisher)
REFERENCES Publishers(Name);

ALTER TABLE Books
ADD CONSTRAINT books_ucaid_fk FOREIGN KEY(UCAID)
REFERENCES Members(UCAID);

ALTER TABLE Journal
ADD CONSTRAINT journal_publisher_fk FOREIGN KEY(Publisher)
REFERENCES Publishers(Name);

ALTER TABLE Journal
ADD CONSTRAINT journal_ucaid_fk FOREIGN KEY(UCAID)
REFERENCES Members(UCAID);

ALTER TABLE AudioBooks
ADD CONSTRAINT audiobooks_publisher_fk FOREIGN KEY(Publisher)
REFERENCES Publishers(Name);

ALTER TABLE AudioBooks
ADD CONSTRAINT audiobooks_ucaid_fk FOREIGN KEY(UCAID)
REFERENCES Members(UCAID);

ALTER TABLE DonatorType
ADD CONSTRAINT donatortype_ucaid_fk FOREIGN KEY(UCAID)
REFERENCES Members(UCAID);

ALTER TABLE DonatorType
ADD CONSTRAINT donatortype_movieeidr_fk FOREIGN KEY(MovieEIDR)
REFERENCES Movies(EIDR);

ALTER TABLE DonatorType
ADD CONSTRAINT donatortype_bookisbn_fk FOREIGN KEY(BookISBN)
REFERENCES Books(ISBN);

ALTER TABLE DonatorType
ADD CONSTRAINT donatortype_journalid_fk FOREIGN KEY(JournalID)
REFERENCES Journal(JournalID);

ALTER TABLE DonatorType
ADD CONSTRAINT donatortype_audiobookisbn_fk FOREIGN KEY(AudioBookISBN)
REFERENCES AudioBooks(ISBN);

ALTER TABLE Dependents
ADD CONSTRAINT dependents_staffssn_fk FOREIGN KEY(StaffSSN)
REFERENCES Staff(SSN);

ALTER TABLE Authors
ADD CONSTRAINT authors_bookisbn_fk FOREIGN KEY(BookISBN)
REFERENCES Books(ISBN);

ALTER TABLE Authors
ADD CONSTRAINT authors_journalid_fk FOREIGN KEY(JournalID)
REFERENCES Journal(JournalID);





