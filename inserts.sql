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

--Note: use -- to comment out a line in SQL. /* … */ to comment multiple lines

/*Everything that was done to edit data types*/
--DROP ALL FOREIGN KEYS
ALTER TABLE DonatorType
DROP CONSTRAINT donatortype_bookisbn_fk;


ALTER TABLE DonatorType
DROP CONSTRAINT donatortype_audiobookisbn_fk;


ALTER TABLE Authors 
DROP CONSTRAINT authors_bookisbn_fk;


--DROP PRIMARY KEY CONSTRAINT
ALTER TABLE Books
DROP CONSTRAINT books_isbn_pk;


ALTER TABLE AudioBooks
DROP CONSTRAINT ab_isbn_pk;


--CHANGE THE DATA TYPE
ALTER TABLE Books MODIFY ISBN VARCHAR2(15) CONSTRAINT books_isbn_pk PRIMARY KEY;


ALTER TABLE AudioBooks MODIFY ISBN VARCHAR2(15) CONSTRAINT ab_isbn_pk PRIMARY KEY;


--ALTER THE FOREIGN KEY DATA TYPES
ALTER TABLE DonatorType MODIFY BookISBN VARCHAR2(15);


ALTER TABLE Authors MODIFY BookISBN VARCHAR2(15);


ALTER TABLE DonatorType MODIFY AudioBookISBN VARCHAR2(15);


--RE ADD THE FOREIGN KEYS
ALTER TABLE DonatorType
ADD CONSTRAINT donatortype_bookisbn_fk FOREIGN KEY(BookISBN)
REFERENCES Books(ISBN);


ALTER TABLE Authors
ADD CONSTRAINT authors_bookisbn_fk FOREIGN KEY(BookISBN)
REFERENCES Books(ISBN);


ALTER TABLE DonatorType
ADD CONSTRAINT donatortype_audiobookisbn_fk FOREIGN KEY(AudioBookISBN)
REFERENCES AudioBooks(ISBN);

set define off

ALTER TABLE Publishers MODIFY City VARCHAR2(20);
ALTER TABLE Publishers MODIFY Name VARCHAR2(60);

ALTER TABLE Books MODIFY Title VARCHAR2(100);
ALTER TABLE AudioBooks MODIFY Title VARCHAR(100);

ALTER TABLE Books MODIFY Publisher VARCHAR2(40);
ALTER TABLE AudioBooks MODIFY Publisher VARCHAR2(40);

ALTER TABLE members MODIFY picture VARCHAR2(50);




/****************************************
    INSERT ALL Members
    UCAID, Phone, Picture, Fname, Lname, Minit, Dob, Username, Password
****************************************/


INSERT INTO members
VALUES (001178965, 1234567890, 'picture.jpeg', 'John', 'Smith', 'B', '09-Jan-1994', 'jsmith10', 'password');
INSERT INTO members
VALUES (001132654, 9876543210, 'picture.jpeg', 'Naomi','Washington','L', '03-May-1993', 'nwashinton3', 'star2345');
INSERT INTO members
VALUES (001165418, 9995553333,'picture.jpeg', 'Dwayne', 'King', 'R', '06-Jun-1994', 'dking25', 'balllife24');
INSERT INTO members
VALUES (001152398, 3334455556,'picture.jpeg', 'Michael',  'James','B', '01-July-1992', 'mjames8','rad23244');
INSERT INTO members
VALUES (001133345, 5554482223,'picture.jpeg', 'Luke',  'Cage', 'M','08-Jan-1994', 'lcage7', 'bullets4343');
INSERT INTO members
VALUES (001155589, 9997732212,'picture.jpeg', 'Samuel', 'Anderson','L',  '05-Dec-1994', 'sanderson4', 'neo3244');
INSERT INTO members
VALUES (001166989, 7775523636,'picture.jpeg', 'Mike',  'Lovelace','B', '02-Feb-1993', 'mlovelace4', 'lacegod34');
INSERT INTO members
VALUES (001133332, 3331127894,'picture.jpeg', 'Cameron',  'Conor','G', '03-Mar-1991', 'cconor2','terminater23');
INSERT INTO members
VALUES (001199987, 5551112323,'picture.jpeg', 'Jakobe',  'Bryant', 'B', '07-May-1994', 'jbryant24','lakers24');
INSERT INTO members
VALUES (001133178, 9994412223,'picture.jpeg', 'Sanjin',  'Vamsi','K', '06-Nov-1993', 'svamsi23', 'craig2323');
INSERT INTO members
VALUES (001199980, 9996632020,'picture.jpeg', 'Aiden',  'Smith','T', '06-Jan-1994', 'asmith9', 'smith49');
INSERT INTO members
VALUES (001188878, 2003336963,'picture.jpeg', 'Aaliyah',  'Love', 'S','04-Mar-1995', 'alove4', 'love1212');
INSERT INTO members
VALUES (001177779, 3337778889,'picture.jpeg', 'Ebony',  'Lane','Y', '08-Aug-1994', 'elane2','carter9848');
INSERT INTO members
VALUES (001199996, 5554447878,'picture.jpeg','Karena',  'Smith','S', '01-May-1994', 'ksmith2','smith90');
INSERT INTO members
VALUES (001122278, 4445551234,'picture.jpeg', 'Caitlin',  'Wong','B','04-Jan-1991', 'cwong2', 'wong3242');
INSERT INTO members
VALUES (001155558, 803667456,'picture.jpeg', 'Cansandra',  'Blane','L', '02-Jan-1993', 'cblane23', 'blane2323');
INSERT INTO members
VALUES (001177223, 6037784242,'picture.jpeg', 'Kaleena',  'James','M', '09-Apr-1991', 'kjames23', 'james2323');
INSERT INTO members
VALUES (001123239, 7036647890,'picture.jpeg','Monica',  'Nance','N', '23-Jan-1991', 'mnance67', 'nance54');
INSERT INTO members
VALUES ( 001199997, 7036363789,'picture.jpeg', 'Rachel',  'Hayes','B', '14-Mar-1994','rhayes2', 'hayes00');
INSERT INTO members
VALUES (001188887, 5036961212,'picture.jpeg', 'Cain',  'Dawn','L', '09-Jan-1965', 'cdawn9', 'dawn377');
INSERT INTO members
VALUES (001142429, 2037654545,'picture.jpeg','Pam',  'Main', 'D','20-may-1991', 'pmain23', 'main1234');
INSERT INTO members
VALUES (001112126, 2031115656,'picture.jpeg','Abby', 'Solone','G',  '16-Apr-1994', 'asolone34', 'solone55');
INSERT INTO members
VALUES (001198986, 3035641234,'picture.jpeg','John', 'Doe', 'G', '20-Dec-1993',  'jdoe34','doe4555');
INSERT INTO members
VALUES (001136361, 1015236987,'picture.jpeg','Bruce',  'Wayne','D', '14-Jun-1991', 'bwayne', 'wayne67');
INSERT INTO members
VALUES (001189897, 4045649999,'picture.jpeg', 'Ronald',  'Smith','D', '25-Nov-1992', 'rsmith', 'smith999');
--
INSERT INTO members
VALUES (001103336, 4048889999,'picture.jpeg','Samuel',  'Smith','O', '12-Dec-1991', 'ssmith23','smith777');
INSERT INTO members
VALUES (001101139, 8031234567,'picture.jpeg','Buddy',  'Williams','C', '03-Jul-1993', 'bwilliams254','williams34');
INSERT INTO members
VALUES (001185201, 8038527410,'picture.jpeg','Aaron',  'Lane','P', '05-May-1995', 'alane44','lane765');
INSERT INTO members
VALUES (001177778, 4048529630,'picture.jpeg','Bryan',  'Conor','K', '10-Mar-1992', 'bconor87','conor0909');
INSERT INTO members
VALUES (001199990, 3032222699,'picture.jpeg','Daniel',  'Van','D', '6-Feb-1994', 'dvan23','van2223');
INSERT INTO members
VALUES (001136332, 4041234569,'picture.jpeg','Bach',  'Jameson','K', '02-Jan-1990', 'bjameson2','jameson4');
INSERT INTO members
VALUES (001155556, 7039699999,'picture.jpeg','Ceasar',  'Jones','Q', '03-Jun-1993', 'cjones2','jones7');
INSERT INTO members
VALUES (001158589, 4041237896,'picture.jpeg','Cole',  'Bently','B', '02-Feb-1990', 'cbently','bently99');
INSERT INTO members
VALUES (001177771, 4044561230,'picture.jpeg','Caden',  'Cain','L', '13-Oct-1992', 'ccain28','can2222');
INSERT INTO members
VALUES (001144449, 4040321456,'picture.jpeg','Calvin',  'Smith', 'D','25-Nov-1992', 'csmith2323','smith1111');
INSERT INTO members
VALUES (001169693, 4045649988,'picture.jpeg','Wade',  'Lane','A', '08-Jun-1991', 'wlane22','lane444');
INSERT INTO members
VALUES (001189893, 4045649990,'picture.jpeg','Kolin',  'Penington','P', '04-Mar-1991', 'kpenington4','penington7');
INSERT INTO members
VALUES (001189823, 4045649977,'picture.jpeg','Walter',  'Range','T', '20-Jul-1994', 'wrange55','range66');
INSERT INTO members
VALUES (001178787, 4041414223,'picture.jpeg','Rob',  'James','F', '08-Feb-1993', 'rjames44','james2992');
INSERT INTO members
VALUES (001123236, 5036969633,'picture.jpeg','Walden',  'Scott', 'S','03-Jan-1994', 'wscott8','scott88');
INSERT INTO members
VALUES (001159556, 5033636122,'picture.jpeg','Walcott',  'Town','L', '02-Mar-1992', 'wtown44','town444');
INSERT INTO members
VALUES (001174441, 5031110236,'picture.jpeg','Steve',  'Joe','T', '19-Aug-1992', 'sjoe32323', 'joe94');
INSERT INTO members
VALUES (001133336, 5039998888,'picture.jpeg','Sage',  'Brown','R', '15-Oct-1994', 'sbrown44','brown9999');
INSERT INTO members
VALUES (001155551, 5032223333,'picture.jpeg','Chris',  'Williams','D', '05-Oct-1994', 'cwilliams','williams59');
INSERT INTO members
VALUES (001177777, 8037776633,'picture.jpeg','Saladin',  'Clover','G', '07-May-1994', 'sclover3','clover434');
INSERT INTO members
VALUES (001188888, 8031113334,'picture.jpeg','Sabrina',  'Lawson','L', '16-Oct-1992', 'slawson9','lawson22');
INSERT INTO members
VALUES (001199999, 8034442222,'picture.jpeg','Derrick',  'Payne','E', '01-Nov-1992', 'dpayne33','payne8888');
INSERT INTO members
VALUES (001100123, 8031114445,'picture.jpeg','Sable',  'Smith','J', '05-May-1991', 'ssmith32','smith555');
INSERT INTO members
VALUES (001199991, 8036969696,'picture.jpeg','Sachi',  'Zhao','Z', '04-Jan-1990', 'szhao2','zhao333');
INSERT INTO members
VALUES (001189890, 8037676767,'picture.jpeg','Talia',  'Law','G', '09-Oct-1992', 'tlaw222','law772');
INSERT INTO members
VALUES (001122222, 7036985555,'picture.jpeg','Tabitha',  'Donald','K', '12-Aug-1994', 'tdonald223','donald3');
INSERT INTO members
VALUES (001100002, 7037772223,'picture.jpeg','Tai',  'Chi','C', '23-Aug-1991', 'tchi32','chi23');
INSERT INTO members
VALUES (001166363, 7032229999,'picture.jpeg','Heather',  'Griffen','L', '08-Jun-1994', 'hgriffen2','griffen343');
INSERT INTO members
VALUES (001176769, 7034545698,'picture.jpeg','Hana', 'Smith','K',  '02-Jan-1994', 'hsmith3','smith333');
INSERT INTO members
VALUES (001189993, 7038889765,'picture.jpeg','Mei',  'Xing','Z', '06-Aug-1994', 'mxing33','xing000');


/****************************************
    INSERT ALL Staff
    SSN, Address, DoB, Name, Email, Hired, Phone, Pay, Director 
****************************************/
ALTER TABLE staff MODIFY address VARCHAR2(30);
ALTER TABLE staff MODIFY name VARCHAR2(30);

INSERT INTO staff
VALUES (414872598,'torresoyn library 205', '12-Mar-1979', 'Dean Covington','dcovington@uca.edu','03-Mar-2005',5012502565, 32000,null);
INSERT INTO staff
VALUES (214495692, 'torresoyn library 213', '15-Jan-1975', 'Tina Murdock', 'tmurdock@uca.edu', '04-Feb-2007', 2508896542, 23000,null);
INSERT INTO staff
VALUES (456968945, 'torresoyn libray 115', '16-Jun-1980', 'Susan Burks', 'sburks@uca.edu', '09-Sep-2010', 4142568745, 45000,414872598);
INSERT INTO staff
VALUES (456981989, 'torreyson library 140','06-Oct-1985', 'Joanna Ewing','jewing@uca.edu', '12-Dec-2009', 2145647890,30000,414872598);
INSERT INTO staff
VALUES (125894563, 'torreyson library 212', '16-Nov-1974','Renee LeBeau-Ford','reneel@uca.edu','16-Jun-2012',356659874,22000,214495692);
INSERT INTO staff
VALUES (111236549, 'torreyson library 116', '06-Mar-1971','Tamela Smith','tsmith@uca.edu','03-May-2013', 5014505231,24000,214495692);
INSERT INTO staff
VALUES (123897412, 'torreyson library 112', '12-Jun-1990','Jessica Riedmueller','jriedmueller@uca.edu','12-Aug-2014', 5014505233,24000,214495692);
INSERT INTO staff
VALUES (236459875, 'torreyson library 141', '01-Jan-1990','Amber Smith','amberc@uca.edu','12-Oct-2012', 5014503236, 20000,214495692);
INSERT INTO staff
VALUES ( 456961234 , 'torreyson library 126', '16-Nov-1973','Lee Brewer','leeb@uca.edu','09-Feb-2014',5014505210,24000,214495692);
INSERT INTO staff
VALUES (222879654, 'torreyson library 102', '12-Jul-1992','Amanda Bryant','amandas@uca.edu','21-Oct-2014', 5014505205,27000,414872598);
INSERT INTO staff
VALUES (333778963, 'torreyson library 100', '06-Jun-1990','Kathy Burnette','kburnette@uca.edu','12-Mar-2014', 5014505205,23000,414872598);
INSERT INTO staff
VALUES (564891245, 'torreyson library 113', '05-Feb-1985','Gregg Doty','gdoty@uca.edu','07-Apr-2012', 5014505229,27000,214495692);
INSERT INTO staff
VALUES (333126547, 'torreyson library 129', '15-May-1992','Keely Furrow','kfurrow@uca.edu','18-Aug-2013', 5014500664,24000,214495692);
INSERT INTO staff
VALUES (444691236, 'torreyson library 101', '02-Jun-1983','Patrick Grant','pgrant@uca.edu','05-Apr-2012', 5014503174,27000,414872598);
INSERT INTO staff
VALUES ( 111234567, 'torreyson library 105', '11-Jul-1987','Sandra Hooper','sandrah@uca.edu','01-Aug-2014', 5014505232,25000,214495692);
INSERT INTO staff
VALUES ( 222879999, 'torreyson library 103', '04-Mar-1990','Jeremy Hunter','jhunter@uca.edu','09-Aug-2015', 5014503174,20000,214495692);
INSERT INTO staff
VALUES (222874654, 'torreyson library 125', '12-Jul-1992','Dot Jones','dotj@uca.edu','06-Oct-2014', 5014505254,23000,214495692);
INSERT INTO staff
VALUES (333627951, 'torreyson library 125', '09-May-1993','Pat Kitchens','patk@uca.edu','06-Aug-2014', 5014505213,25000,214495692);
INSERT INTO staff
VALUES (222879630, 'torreyson library 211', '12-May-1992','Daniel Klotz','dklotz@uca.edu','12-Apr-2014', 5014505861,22000,414872598 );
INSERT INTO staff
VALUES (222231596, 'torreyson library 103', '06-Jan-1991','Danielle Kraus','dkraus@uca.edu','05-Jul-2014', 5014503174,24000,414872598);

/****************************************
    INSERT ALL Donators
****************************************/
INSERT INTO donators
VALUES (001155556,'Ceasar Q Jones',4);
INSERT INTO donators
VALUES (001158589,'Cole B Bently',2);
INSERT INTO donators
VALUES (001177771,'Caden L Cain',1);
INSERT INTO donators
VALUES (001144449,'Calvin D Smith',5 );
INSERT INTO donators
VALUES (001169693,'Wade A Lane',1);
INSERT INTO donators
VALUES (001189893,'Kolin P Penington',2);
INSERT INTO donators
VALUES (001189823,'Walter T Range',7);
INSERT INTO donators
VALUES (001178787,'Rob F James',4);
INSERT INTO donators
VALUES (001123236,'Walden S Scott', 2);
INSERT INTO donators
VALUES (001159556, 'Walcott L Town',9);
INSERT INTO donators
VALUES (001174441,'Steve T Joe',1);
INSERT INTO donators
VALUES (001133336,'Sage R Brown',3);
INSERT INTO donators
VALUES (001155551,'Chris D Williams',5);
INSERT INTO donators
VALUES (001177777,'Saladin G Clover',3);
INSERT INTO donators
VALUES (001188888,'Sabrina L Lawson',2);
INSERT INTO donators
VALUES (001199999,'Derrick E Payne',6);
INSERT INTO donators
VALUES (001100123,'Sable J Smith',7);
INSERT INTO donators
VALUES (001199991,'Sachi Z Zhao',3);
INSERT INTO donators
VALUES (001189890,'Talia G Law',5);
INSERT INTO donators
VALUES (001122222,'Tabitha K Donald',8);
--
INSERT INTO donators
VALUES (001178965,'John B Smith',1 );
INSERT INTO donators
VALUES (001132654,'Naomi L Washington',3);
INSERT INTO donators
VALUES (001165418, 'Dwayne R King',5);
INSERT INTO donators
VALUES (001152398,  'Michael B James',7);
INSERT INTO donators
VALUES (001133345, 'Luke M Cage',9);
INSERT INTO donators
VALUES (001155589, 'Samuel L Anderson',2);
INSERT INTO donators
VALUES (001166989,  'Mike B Lovelace',4);
INSERT INTO donators
VALUES (001133332, 'Cameron G Conor',6);
INSERT INTO donators
VALUES (001199987, 'Jakobe B Bryant', 8);
INSERT INTO donators
VALUES (001133178,  'Sanjin K Vamsi',1);
INSERT INTO donators
VALUES (001199980,  'Aiden T Smith',2);
INSERT INTO donators
VALUES (001188878,  'Aaliyah S Love',3);
INSERT INTO donators
VALUES (001177779,  'Ebony Y Lane',4);
INSERT INTO donators
VALUES (001199996, 'Karena S Smith',5);
INSERT INTO donators
VALUES (001122278, 'Caitlin B Wong',6);
INSERT INTO donators
VALUES (001155558,  'Cansandra L Blane',2);
INSERT INTO donators
VALUES (001177223,  'Kaleena M James',1);
INSERT INTO donators
VALUES (001123239,'Monica N Nance',3);
INSERT INTO donators
VALUES ( 001199997, 'Rachel B Hayes',1);
INSERT INTO donators
VALUES (001188887, 'Cain L Dawn',1);
INSERT INTO donators
VALUES (001142429, 'Pam D Main',4);
INSERT INTO donators
VALUES (001112126, 'Abby G Solone',2);
INSERT INTO donators
VALUES (001198986,'John G Doe',3);
INSERT INTO donators
VALUES (001136361, 'Bruce D Wayne',7);
INSERT INTO donators
VALUES (001189897,  'Ronald D Smith',2);
INSERT INTO donators
VALUES (001103336,'Samuel O Smith',6);
INSERT INTO donators
VALUES (001101139,'Buddy C Williams',3);

/****************************************
    INSERT ALL Publishers
    City, Name
****************************************/
INSERT INTO Publishers VALUES ('Indianapolis, IN', 'Wiley');
INSERT INTO Publishers VALUES ('Waltham, MA', 'Morgan Kaufmann');
INSERT INTO Publishers VALUES ('Malden, MA', 'Polity Press');
INSERT INTO Publishers VALUES ('Emryville, CA', 'Key College Pub');
INSERT INTO Publishers VALUES ('Cambridgeshire', 'Cambridge University');
INSERT INTO Publishers VALUES ('Chicago, IL', 'Rand McNally');
INSERT INTO Publishers VALUES ('New York City, NY', 'G.P. Putnam''s Sons');
INSERT INTO Publishers VALUES ('New York City, NY', 'Penguin');
INSERT INTO Publishers VALUES ('London', 'Warne');
INSERT INTO Publishers VALUES ('New York, NY', 'Ballantine Books');
--10
INSERT INTO Publishers VALUES ('New York City, NY', 'Hachette Audio');
INSERT INTO Publishers VALUES ('Grand Haven, MI', 'Brilliance Audio');
INSERT INTO Publishers VALUES ('New York City, NY', 'Hyperion Books For Children');
INSERT INTO Publishers VALUES ('New York City, NY', 'Speak');
INSERT INTO Publishers VALUES ('Cambridge, MA', 'Harvard University Press');
INSERT INTO Publishers VALUES ('New York, NY', 'Oxford University Press');
INSERT INTO Publishers VALUES ('Columbus, OH', 'Ohio State University Press');
INSERT INTO Publishers VALUES ('New York City, NY', 'Atria Books');
INSERT INTO Publishers VALUES ('New York City, NY', 'Simon & Schuster');
INSERT INTO Publishers VALUES ('New York City, NY', 'Dial Press');
--20
INSERT INTO Publishers VALUES ('New York City, NY', 'Workman Pub');
INSERT INTO Publishers VALUES ('New York City, NY', 'Penguin Audio');
INSERT INTO Publishers VALUES ('New York City, NY', 'Random House Audio');
INSERT INTO Publishers VALUES ('New York City, NY', 'Weatherhill');
INSERT INTO Publishers VALUES ('Carmel, NY', 'Guideposts');
INSERT INTO Publishers VALUES ('New York City, NY','Harper Childrens Audio');
INSERT INTO Publishers VALUES ('New York City, NY', 'Katherine Tegen Books');
INSERT INTO Publishers VALUES ('New York City, NY', 'Harper Audio');
INSERT INTO Publishers VALUES ('New York City, NY', 'HarperCollins');
INSERT INTO Publishers VALUES ('Nashville, TN', 'Tommy Nelson');
--30
INSERT INTO Publishers VALUES ('New York City, NY', 'William Morrow & Co');
INSERT INTO Publishers VALUES ('Champaign, IL', 'Human Kinetics');
INSERT INTO Publishers VALUES ('New York City, NY', 'Plume');
INSERT INTO Publishers VALUES ('London', 'Reaktion');
INSERT INTO Publishers VALUES ('Seattle, WA', 'Pear Press');
INSERT INTO Publishers VALUES ('New York City, NY', 'Back Bay Books');
INSERT INTO Publishers VALUES ('New York City, NY', 'Metropolitan Books');
IINSERT INTO Publishers VALUES ('New York City','American Association for the Advancement of Science');
INSERT INTO Publishers VALUES('Berlin, Germany','Springer Science & Business Media');
INSERT INTO Publishers VALUES('New York City', 'R Foundation');
INSERT INTO Publishers VALUES('New York City', 'c++ Foundation');
INSERT INTO Publishers VALUES('Boston, MA', 'MIT Foundation');
INSERT INTO Publishers VALUES('New York City', 'Business Insider');
INSERT INTO Publishers VALUES('New York City', 'Tech Insider');
INSERT INTO Publishers VALUES('Irvine, CA', 'Entreprenuer Magazine');
INSERT INTO Publishers VALUES('New York City', 'VR Institute');
INSERT INTO Publishers VALUES('New York City', 'Tech-Crunch');
INSERT INTO Publishers VALUES('New York City', 'Smart People Inc.');
INSERT INTO Publishers VALUES('New York City', 'Catholics for Science');
INSERT INTO Publishers VALUES('New York City', 'Hacking 101');
INSERT INTO Publishers VALUES('New York City', 'Journals 101');
INSERT INTO Publishers VALUES('New York City', 'Code Webs');
INSERT INTO Publishers VALUES('New York City', 'Code Smart');
INSERT INTO Publishers VALUES('New York City', 'Quick Tips');
INSERT INTO Publishers VALUES('New York City', 'Steve Jobs Foundation');
INSERT INTO Publishers VALUES('Delhi, India', 'India Institute');
INSERT INTO Publishers VALUES('Beijing, China', 'China Institute');
INSERT INTO Publishers VALUES('New York City', 'Japan Inc.');
INSERT INTO Publishers VALUES('New York City', 'US News');
INSERT INTO Publishers VALUES('New York City', 'Hackathon Inc.');
INSERT INTO Publishers VALUES('New York City', 'Snowden');
INSERT INTO Publishers VALUES('New York City', 'Computer Science Group');
INSERT INTO Publishers VALUES('New York City', 'TI Insider');


--40

****************************************
    INSERT ALL BOOKS
    ISBN, Genre, Title, Year, Format, Publisher, UCAID, CheckoutDate, Cover
****************************************/
INSERT INTO Books VALUES('9781118900420', 'Educational', 'Learning computer architecture with Raspberry Pi', '05-01-2016', 'Hardcover', 'Wiley',001178965,'1-Jan-1753','cover');
INSERT INTO Books VALUES('9780124077263', 'Educational', 'Computer organization and design : the hardware/software interface', '10-OCT-2013', 'Paperback', 'Morgan Kaufmann',NULL,'1-Jan-1753','cover'); 
INSERT INTO Books VALUES('9780745641119', 'Social', 'Computer games and the social imaginary', '07-OCT-2013', 'Hardcover', 'Polity Press',NULL,'1-Jan-1753','cover');
INSERT INTO Books VALUES('1930190867', 'Educational', 'Discrete mathematics for computer science', '08-SEP-2005', 'Hardcover', 'Key College Pub',NULL,'1-Jan-1753','cover');
INSERT INTO Books VALUES('0521400287', 'Educational', 'Applications of process algebra', '30-NOV-1990', 'Hardcover', 'Cambridge University',NULL,'1-Jan-1753','cover');
INSERT INTO Books VALUES('0001381237', 'Childrens', 'King of the Wind', '01-OCT-1969', 'Hardcover', 'Rand McNally',NULL,'1-Jan-1753','cover');
INSERT INTO Books VALUES('9780399232466', 'Childrens', '26 Fairmount Avenu', '05-APR-1999', 'Hardcover', 'G.P. Putnam''s Sons',NULL,'1-Jan-1753','cover');
INSERT INTO Books VALUES('0723235988', 'Art', 'Beatrix Potter''s art : paintings and drawings / selected and introduced by Anne Stevenson Hobbs', '01-FEB-1990', 'Hardcover', 'Warne',NULL,'1-Jan-1753','cover');
INSERT INTO Books VALUES('9780723260158', 'Childrens', 'Appley Dapply''s nursery rhymes', '01-JAN-2007', 'Hardcover', 'Penguin',NULL,'1-Jan-1753','cover');
INSERT INTO Books VALUES('9780723260042', 'Childrens', 'The story of a fierce bad rabbit', '01-JAN-1968', 'Hardcover', 'Penguin',NULL,'1-Jan-1753','cover');
--10
INSERT INTO Books VALUES('9780345337665', 'Fiction', 'Interview with the vampire', '13-SEP-1991', 'Paperback', 'Ballantine Books',001132654,'1-Jan-1753','cover');
INSERT INTO Books VALUES('078681859X', 'Childrens', 'The Amulet of Samarkand', '20-SEP-2003', 'Hardcover', 'Hyperion Books For Children',001165418,'1-Jan-1753','cover');
INSERT INTO Books VALUES('9780142402511', 'Fiction', 'Looking for Alaska', '28-DEC-2006', 'Paperback', 'Speak',NULL,'1-Jan-1753','cover');
INSERT INTO Books VALUES('0674299582', 'History', 'Fierce communion : family and community in early America', '28-AUG-1990', 'Hardcover', 'Harvard University Press',NULL,'1-Jan-1753','cover');
INSERT INTO Books VALUES('0195052439', 'History', 'Incidents in the life of a slave girl', '14-APR-1988', 'Hardcover', 'Oxford University Press',001165418,'1-Jan-1753','cover');
INSERT INTO Books VALUES('0814205119', 'History', 'The Romanians : a history', '01-JUN-1991', 'Hardcover', 'Ohio State University Press',NULL,'1-Jan-1753','cover');
INSERT INTO Books VALUES('9781451642995', 'Fiction', 'White horse : a novel', '17-APR-2012','Hardcover', 'Atria Books',NULL,'1-Jan-1753','cover');
INSERT INTO Books VALUES('038533348X', 'Fiction', 'Cat''s cradle', '08-SEP-1998', 'Paperback', 'Dial Press',NULL,'1-Jan-1753','cover');
INSERT INTO Books VALUES('0894808532', 'Fiction', 'Good omens : the nice and accurate prophecies of Agnes Nutter, witch : a novel', '01-SEP-1990', 'Hardcover', 'Workman Pub',NULL,'1-Jan-1753','cover');
INSERT INTO Books VALUES('0143123513', 'Fiction', 'Cascade : [a novel]', '30-APR-2013', 'Paperback', 'Penguin',NULL,'1-Jan-1753','cover');
--20
INSERT INTO Books VALUES('0834800799', 'Religion', 'Zen mind, beginner''s mind', '01-JAN-2001', 'Paperback', 'Weatherhill',NULL,'1-Jan-1753','cover');
INSERT INTO Books VALUES('0425143694', 'Religion', 'Angels, miracles, and answered prayers', '01-JAN-1994', 'Paperback', 'Guideposts',001165418,'1-Jan-1753','cover');
INSERT INTO Books VALUES('9780062024022', 'Fiction', 'Divergent', '03-MAY-2011', 'Hardcover', 'Katherine Tegen Books',NULL,'1-Jan-1753','cover');
INSERT INTO Books VALUES('0060530839', 'Fiction', 'The lion, the witch, and the wardrobe', '04-NOV-2003', 'Hardcover', 'HarperCollins',NULL,'1-Jan-1753','cover');
INSERT INTO Books VALUES('1400307481', 'Fiction', 'Black Beauty: The Classic Collection', '30-JUL-2005', 'Paperback', 'Tommy Nelson',NULL,'1-Jan-1753','cover'); 
INSERT INTO Books VALUES('9780060888749', 'Fiction', 'The burning land : a novel', '19-JAN-2010', 'Hardcover', 'HarperCollins',NULL,'1-Jan-1753','cover');
INSERT INTO Books VALUES('9780745649252', 'Politics', 'Oil', '05-NOV-2012', 'Hardcover', 'Polity Press',001152398,'1-Jan-1753','cover');
INSERT INTO Books VALUES('9780745646794', 'Sociology', 'Work : a critique', '12-FEB-2011', 'Paperback', 'Polity Press',NULL,'1-Jan-1753','cover');
INSERT INTO Books VALUES('9780745634692', 'History', 'Science in the twentieth century and beyond', '09-APR-2012', 'Hardcover', 'Polity Press',NULL,'1-Jan-1753','cover');
INSERT INTO Books VALUES('9780674058095', 'History', 'Heart of Europe : a history of the Holy Roman Empire', '04-APR-2016', 'Hardcover', 'Harvard University Press',NULL,'1-Jan-1753','cover');
--30
INSERT INTO Books VALUES('0061146668', 'History', 'Sleepwalkers : how Europe went to war in 1914', '18-MAR-2014', 'Paperback', 'HarperCollins',001155589,'1-Jan-1753','cover');
INSERT INTO Books VALUES('9780143126485', 'Fiction', 'Silver Bay : a novel', '26-AUG-2014', 'Paperback', 'Penguin',NULL,'1-Jan-1753','cover');
INSERT INTO Books VALUES('0140272127', 'Translations', 'Mottled dawn : fifty sketches and stories of partition', '01-MAY-2004', 'Hardcover', 'Penguin',NULL,'1-Jan-1753','cover');
INSERT INTO Books VALUES('9780060530921', 'Fiction', 'The graveyard book', '01-JAN-2008', 'Hardcover', 'HarperCollins',NULL,'1-Jan-1753','cover');
INSERT INTO Books VALUES('9780062255662', 'Fiction', 'The ocean at the end of the lane', '03-JUN-2014', 'Paperback', 'William Morrow & Co',NULL,'1-Jan-1753','cover');
INSERT INTO Books VALUES('0062297376', 'Fiction', 'The long cosmos', '14-JUN-2016', 'Hardcover', 'HarperCollins',001166989,'1-Jan-1753','cover');
INSERT INTO Books VALUES('9780061161643', 'Fiction', 'Making money : a novel of Discworld', '18-SEP-2007', 'Hardcover', 'HarperCollins',NULL,'1-Jan-1753','cover');
INSERT INTO Books VALUES('9781450424394', 'Fitness', 'Running mechanics and gait analysis', '16-APR-2014', 'Paperback', 'Human Kinetics',NULL,'1-Jan-1753','cover');
INSERT INTO Books VALUES('9780452298453', 'Fitness', 'The barefoot running book : the art and science of barefoot and minimalist shoe running', '28-AUG-2012', 'Paperback', 'Plume',NULL,'1-Jan-1753','cover');
INSERT INTO Books VALUES('9781861895264', 'Fitness', 'Running : a global history', '30-JAN-2010', 'Hardcover', 'Reaktion',001199987,'1-Jan-1753','cover');
--40
INSERT INTO Books VALUES('0979777704', 'Leadership', 'Brain rules : 12 principles for surviving and thriving at work, home, and school', '26-FEB-2008', 'Hardcover', 'Pear Press',NULL,'1-Jan-1753','cover');
INSERT INTO Books VALUES('9780805074604', 'History', 'The Crimean War : a history', '12-APR-2011', 'Hardcover', 'Metropolitan Books',0011222278,'1-Jan-1753','cover');

/****************************************
    INSERT ALL AUDIOBOOKS
    ISBN, Genre, Title, Year, Format, Publisher, UCAID, CheckoutDate
****************************************/
INSERT INTO AudioBooks VALUES('9781611132151','Fiction','Abraham Lincoln [sound recording] : vampire hunter','03-APR-2012','Audio CD', 'Hachette Audio',001144449,'1-Jan-1753');
INSERT INTO AudioBooks VALUES('1423309162', 'Fiction',  'Dance of the gods', '03-OCT-2006', 'Audio CD', 'Brilliance Audio',NULL,'1-Jan-1753');
INSERT INTO AudioBooks VALUES('0743569997', 'Fiction', 'The 6 sacred stones [sound recording]','08-JAN-2008', 'Audio CD', 'Simon & Schuster',001169693,'1-Jan-1753');
INSERT INTO AudioBooks VALUES('9781611763737', 'Fiction', 'The girl on the train [sound recording] : a novel', '13-JAN-2015', 'Audio CD', 'Penguin Audio',NULL,'1-Jan-1753');
INSERT INTO AudioBooks VALUES('0142800767', 'Fiction', 'Olivia Joules and the overactive imagination [sound recording]', '03-JUN-2004', 'Audio CD', 'Penguin Audio',NULL,'1-Jan-1753');
INSERT INTO AudioBooks VALUES('9781478928133', 'Fiction', '15th affair [sound recording]', '02-MAY-2016',  'Audio CD', 'Hachette Audio',001189893,'1-Jan-1753');
INSERT INTO AudioBooks VALUES('9780451482211', 'Educational', 'Between the world and me [sound recording]', '08-SEP-2015', 'Audio CD', 'Random House Audio',NULL,'1-Jan-1753');
INSERT INTO AudioBooks VALUES('9780449808221', 'Biography', 'Mom & me & mom [sound recording]', '02-APR-2013',  'Audio CD', 'Random House Audio',NULL,'1-Jan-1753');
INSERT INTO AudioBooks VALUES('9780385366922', 'Fiction', 'The heist [sound recording] : a novel', '18-JUN-2013', 'Audio CD', 'Random House Audio',NULL,'1-Jan-1753');
INSERT INTO AudioBooks VALUES('9781423368281', 'Fiction', 'The mark of the assassin [sound recording]', '20-NOV-2009', 'Audio CD', 'Brilliance Audio',001189823,'1-Jan-1753');
--10
INSERT INTO AudioBooks VALUES('0060824026', 'Fiction', 'Revenge of the witch [sound recording]', '06-SEP-2005', 'Audio CD', 'Harper Childrens Audio',NULL,'1-Jan-1753');
INSERT INTO AudioBooks VALUES('9780062286437', 'Fiction','Divergent', '04-JUN-2013', 'Audio CD', 'Harper Audio',NULL,'1-Jan-1753');
INSERT INTO AudioBooks VALUES('9780062329004', 'Fiction', 'The enemy inside [sound recording]','12-MAY-2015', 'Audio CD', 'Harper Audio',NULL,'1-Jan-1753');
INSERT INTO AudioBooks VALUES('9780061774089', 'Childrens', 'Ramona the pest [sound recording]', '05-OCT-2010', 'Audio CD', 'Harper Audio',NULL,'1-Jan-1753');
INSERT INTO AudioBooks VALUES('9780061761027', 'Childrens', 'Prism [sound recording]', '23-JUN-2009', 'Audio CD', 'Harper Childrens Audio',001123236,'1-Jan-1753');
INSERT INTO AudioBooks VALUES('0060564407', 'Childrens', 'Prince Caspian : the return to Narnia. [sound recording]', '21-OCT-2003', 'Audio CD', 'Harper Childrens Audio',NULL,'1-Jan-1753');
INSERT INTO AudioBooks VALUES('0060732989', 'Childrens', 'The Neil Gaiman audio collection [sound recording]', '31-AUG-2004', 'Audio CD', 'Harper Childrens Audio',NULL,'1-Jan-1753');
INSERT INTO AudioBooks VALUES('9781611133929', 'History', 'After Camelot [sound recording] : a personal history of the Kennedy family 1968 to the present', '24-APR-2012', 'Audio CD', 'Hachette Audio',NULL,'1-Jan-1753');
INSERT INTO AudioBooks VALUES('9781480559820', 'Fiction', 'The handmaid''s tale: Unabridged ed. - AudioBook', '01-JAN-2014', 'Audio CD', 'Brilliance Audio',001174441,'1-Jan-1753');
INSERT INTO AudioBooks VALUES('9781501224683', 'Science', 'Rain : a natural and cultural history - Unabridged ed.', '21-APR-2015', 'Audio CD', 'Brilliance Audio',NULL,'1-Jan-1753');
--20
INSERT INTO AudioBooks VALUES('9781478902317', 'Biography', 'I am Malala Electronic Audiobook', '01-JAN-2015', 'eBook', 'Back Bay Books',001133336,'1-Jan-1753');
INSERT INTO AudioBooks VALUES('9781611762938', 'Fiction', 'The good lord bird : a novel', '13-FEB-2014', 'Audio CD', 'Penguin Audio', NULL, '1-JAN-1753');

/****************************************
    INSERT ALL Authors
    BookISBN, JournalID, AuthorsName
****************************************/
insert into Authors values ('9781451642995', null, 'Alex Adams');
insert into Authors values ('9780399232466',null, 'Tomie DePaola');
insert into Authors values ('9780345337665', null, 'Anne Rice');
--insert into Authors values ('9780723260158',null, 'Beatrix Potter');
insert into Authors values ('9780399232466',null, 'Tommie dePaola');
insert into Authors values ('9780142402511', null, 'John Green');
insert into Authors values ('0674299582',null,'Helena Wall');
insert into Authors values ('0195052439', null, 'Harriet Jacobs');
insert into Authors values ('0195052439',null, 'Valeria Smith');
insert into Authors values ('0814205119',null, 'Vlad Georgescu');
--10
insert into Authors values ('0814205119',null, 'Matei Calinescu');
insert into Authors values ('0894808532',null, 'Neil Gaiman');
insert into Authors values ('0894808532',null, 'Terry Pratchett');
insert into Authors values ('9780062024022',null, 'veronica Roth');
--insert into Authors values ('0060530839',null, 'C. S. Lewis');
insert into Authors values ('9781450424394',null, 'Reed Ferber');
insert into Authors values ('9780805074604',null, 'Orlando Figes');
insert into Authors values ('0143123513',null, 'Maryanne O''Hara');
insert into Authors values ('0834800799',null, 'Shunryu Suzuki');
insert into Authors values ('0425143694',null, 'Kelsey Tyler');
--20

/****************************************
    INSERT ALL STUDIOS
    Name, City
****************************************/
ALTER TABLE Studio MODIFY name VARCHAR2(30);

insert into Studio values ('Miramax','California');
insert into Studio values ('Sony','California');
insert into Studio values ('Warner Bros','California');
insert into Studio values ('Fox','California');
insert into Studio values ('Echo Bridge','Massachusett');
insert into Studio values ('Warner Home','California');
insert into Studio values ('Universal','California');
insert into Studio values ('Anchor Bay','Michigan');
insert into Studio values ('DreamWorks','California');
insert into Studio values ('Walt Disney','California');
--10
insert into Studio values ('SFS Media','California');
insert into Studio values ('PBS','New York');
insert into Studio values ('Media Education Foundation','Massachusett');
insert into Studio values ('Koch','Maryland');
insert into Studio values ('HBO','New York');
insert into Studio values ('Disney','California');
insert into Studio values ('Columbia Pictures', 'California');
--17


/****************************************
    INSERT ALL MOVIES
    EIDR, Genre, Title, Year, Format, Director, Cover, Studio, UCAID, CheckoutDate
****************************************/
ALTER TABLE movies MODIFY studio VARCHAR2(30);

insert into Movies values (9786314204693, 'Comedy', 'Chocolat', '01-Jan-2014','DVD', 'Lasse Hallstrom','cover', 'Miramax',001152398, '1-Jan-1753');
insert into Movies values (9781435992900, 'Comedy', 'Zombieland', '23-Feb-2010','DVD', 'Michael Bonvillian','cover', 'Sony', 001133345, '1-Jan-1753');
insert into Movies values (9781419873294, 'Comedy','Being There', '11-Feb-2009','DVD', 'Caleb Deschanel','cover', 'Warner Bros', null, '1-Jan-1753');
insert into Movies values (9781419845338, 'Comedy', 'Little Shop of Horrors','13-Dec-2009','DVD', 'Frank Oz','cover', 'Warner Bros', null, '1-Jan-1753');
insert into Movies values (9781435992357, 'Comedy', 'The Incredible Mr. Limpet','02-Mar-2009','DVD', 'Sammy Fain','cover', 'Warner Bros',null, '1-Jan-1753');
insert into Movies values (9781435943567, 'Comedy', 'Diary of a Wimpy Kid','18-Nov-2010', 'DVD','Jack Green','cover', 'Fox', 001133345, '1-Jan-1753');
insert into Movies values (0960091259000, 'Comedy', 'The Big Bad Swim','10-Apr-2007','DVD', 'Josh Silfen','cover', 'Echo Bridge', 001199996, '1-Jan-1753');
insert into Movies values (9781419844966, 'Comedy', 'Music and Lyrics','19-Nov-2007','DVD', 'Xavier Perez Brobert','cover','Warner Home', 001155558, '1-Jan-1753');
insert into Movies values (0245436653110, 'Comedy', 'Date Night', '09-Jun-2010', 'DVD','David Gropman','cover', 'Fox', null, '1-Jan-1753');
insert into Movies values (9781419868382, 'Comedy', 'Beetle Juice', '23-July-2008', 'DVD','Michael McDowell','cover', 'Warner Home', 001188878, '1-Jan-1753');
--10
insert into Movies values (2519322942464, 'Comedy', 'The Tale of Despereux', '18-July-2009','DVD', 'Brad Blackbourn','cover', 'Universal', null,'1-Jan-1753');
insert into Movies values (0131380033935, 'Comedy', 'Sunshine Cleaning', '01-Feb-2009','DVD', 'John Toon','cover', 'Anchor Bay', 001133345, '1-Jan-1753');
insert into Movies values (9781435992900, 'Comedy', 'Back to the Future', '10-Feb-2009','DVD', 'Alan Silvestri','cover', 'Universal', null, '1-Jan-1753');
insert into Movies values (9781419878725, 'Musical', 'The Wizard of Oz', '11-Jun-2009','DVD', 'Harold Rosson','cover', 'Warner Home', 001123239, '1-Jan-1753');
insert into Movies values (9781419887338, 'Musical', 'Little Shop of Horrors', '07-Jan-2009','DVD', 'Frank Oz','cover', 'Warner Home',001165418, '1-Jan-1753');
insert into Movies values (9781419887307, 'Musical', 'The Incredible Mr. Limpet', '15-Jul-2009','DVD', 'Sammy Fain','cover', 'Warner Home', 001165418, '1-Jan-1753');
insert into Movies values (0245436658920, 'Musical', 'Crazy Heart', '21-May-2010','DVD', 'Waldemar Kalinowski','cover', 'Fox', 001188878, '1-Jan-1753');
insert into Movies values (9781419851186, 'Musical', 'Jailhouse Rock', '01-May-2007', 'DVD','Robert Bronner','cover', 'Warner Home', null, '1-Jan-1753');
insert into Movies values (9781415731536, 'Musical', 'Dreamgirls', '04-May-2007','DVD', 'Tobias Schliessler','cover', 'DreamWorks', null,'1-Jan-1753');
insert into Movies values (9780788859540, 'Musical', 'The Little Mermaid', '09-Dec-2006','DVD', 'Mark A. Hester','cover', 'Walt Disney', null,'1-Jan-1753');
--20
insert into Movies values (8219360041970, 'Documentary', 'Mahler', '02-Jan-2011','DVD', 'Joan Saffa','cover', 'SFS Media', 001155589,'1-Jan-1753');
insert into Movies values (0433963691600, 'Documentary', 'Inside Job', '11-Mar-2011','DVD', 'Svetlana Cvetko','cover', 'Sony', 001177779,'1-Jan-1753');
insert into Movies values (9780793670253,'Documentary','Jerusalem','03-Sept-2009', 'DVD','Ray Suarez','cover', 'PBS', null,'1-Jan-1753');
insert into Movies values (9781932869514, 'Documentary', 'This Land is Our Land', '06-Feb-2010','DVD', 'Andrew Killoy','cover', 'Media Education Foundation', null,'1-Jan-1753');
insert into Movies values (9781422987674, 'Documentary', 'The Age of Stupid', '11-Sept-2010','DVD', 'John Battsek','cover', 'Docurama Films', null,'1-Jan-1753');
insert into Movies values (9781932869392, 'Documentary', 'The Codes of Gender', '20-Mar-2009','DVD', 'Sut Jhally','cover', 'Media Education Foundation', 001177223,'1-Jan-1753');
insert into Movies values (9781417201877, 'Documentary', 'Imaginary Witness', '09-Dec-2009','DVD', 'Diana Holtzberg','cover', 'Koch', 001152398,'1-Jan-1753');
insert into Movies values (9780783157184, 'Documentary', 'Little Rock Central', '10-June-2007','DVD', 'Brent Renaud','cover', 'HBO', 001178965,'1-Jan-1753');
insert into Movies values (9781435918375, 'Documentary', 'Standard Operating Procedure', '31-Jan-2008','DVD', 'Robert Chappell','cover', 'Sony', 001199996,'1-Jan-1753');
insert into Movies values (9781419823183, 'Documentary', 'Tennessee Williams South', '07-July-2006', 'DVD','Aria Saare','cover', 'Warner Home', null, '1-Jan-1753');
--30
insert into Movies values (9780788872242, 'Children Film', 'Peter Pan', '08-June-2007','DVD', 'Robert O. Cook','cover', 'Walt Disney',001133345 ,'1-Jan-1753');
insert into Movies values (9781419846243, 'Children Film', 'Happy Feet', '14-July-2007','DVD', 'Christian Gazal','cover', 'Warner Home',null,'1-Jan-1753');
insert into Movies values (9780788861178, 'Children Film', 'Toy Story', '21-Jan-2005','DVD', 'Randy Newman','cover', 'Disney', 001177779,'1-Jan-1753');
insert into Movies values (9781419856983, 'Children Film', 'Harry Potter and the Sorcerers Stone', '08-June-2007','DVD', 'John Seale','cover', 'Warner Home', null,'1-Jan-1753');
insert into Movies values (9781419818073, 'Children Film', 'The Ant Bully', '22-May-2006','DVD', 'Jon Price','cover', 'Warner Home', null,'1-Jan-1753');
insert into Movies values (9781419818707, 'Children Film', 'The Polar Express', '2-Sept-2005', 'DVD','Don Burgess','cover', 'Warner Home', 001123239,'1-Jan-1753');
insert into Movies values (9781424818839, 'Children Film', 'Alice in Wonderland', '07-Jan-2006','DVD', 'Fred J. Koenekamp','cover', 'Sony', 001133345,'1-Jan-1753');
insert into Movies values (9780788855214, 'Children Film', 'The Incredibles', '13-Nov-2005','DVD', 'Kori Rae','cover', 'Walt Disney', null,'1-Jan-1753');
insert into Movies values (9780788874130, 'Children Film', 'The Many Adventures of Winnie the Pooh', '27-Feb-2007','DVD', 'Aria Saare','cover', 'Walt Disney', null,'1-Jan-1753');
insert into Movies values (0251950164450, 'Children Film', 'Coraline', '09-July-2009','DVD', 'Travis Knight','cover', 'Universal', 001133332,'1-Jan-1753');
--40
insert into Movies values (9780767876513, 'Feature Film', 'Boyz n the Hood','07-June-2003','DVD','John Singleton','cover','Columbia Pictures',null,'1-Jan-1753');
insert into Movies values (9781404941755, 'Feature Film', 'Knafayim Shvurot','19-May-2004','DVD','Nir Bergman','cover','Columbia Pictures',null,'1-Jan-1753');
insert into Movies values (9780767898799, 'Feature Film', 'Close Encounters of the Third Kind','11-Dec-2002','DVD','Steven Spielberg','cover','Columbia Pictures',null,'1-Jan-1753');
insert into Movies values (9781404938595, 'Feature Film', 'Snatch','16-May-2003','DVD','Guy Ritchie','cover','Columbia Pictures',null,'1-Jan-1753');
insert into Movies values (9781404950542, 'Feature Film', 'Mac','18-July-2004','DVD','John Turturro','cover','Columbia Pictures',null,'1-Jan-1753');
insert into Movies values (9781404900172, 'Feature Film', 'Das Boot','07-Dec-2004','DVD','Jost Vacano','cover','Columbia Pictures',null,'1-Jan-1753');
insert into Movies values (9780767834025, 'Feature Film', 'Tootsie', '29-Jan-2001','DVD','Sydney Pollack','cover','Columbia Pictures',null,'1-Jan-1753');
insert into Movies values (9780767853521, 'Feature Film', 'Monty Python and the Hooly Grail', '29-Feb-2001','DVD','Terry Gilliam','cover','Columbia Pictures',null,'01-Jan-1753');
insert into Movies values (9781404961845, 'Feature Film', 'The China Syndrome', '29-Jan-2004','DVD','James Bridges','cover','Columbia Pictures',null,'1-Jan-1753');
insert into Movies values (9780767804271, 'Feature Film', 'On the Waterfront', '29-Jan-2001','DVD','Elia Kazan','cover','Columbia Pictures',null,'1-Jan-1753');
--50
insert into Movies values (9780767881371, 'Feature Film', 'Born Free', '29-Jan-2003','DVD','James Hill','cover','Columbia Pictures',null,'1-Jan-1753');
insert into Movies values (9781404940864, 'Feature Film', 'Nirgendwo in Afrika', '29-Jan-2003','DVD','Peter Herrmann','cover','Columbia Pictures',null,'1-Jan-1753');
insert into Movies values (9780767881494, 'Feature Film', 'The Awful Truth', '29-Jan-2003','DVD','Leo McCarey','cover','Columbia Pictures',null,'1-Jan-1753');
insert into Movies values (9780767868273, 'Feature Film', 'St. Elmos Fire', '29-Jan-2001','DVD','Joel Schumacher','cover','Columbia Pictures',null,'1-Jan-1753');
insert into Movies values (9780767870627, 'Feature Film', 'Black Hawk Down', '29-Jan-2002','DVD','Ridley Scott','cover','Columbia Pictures',null,'1-Jan-1753');
insert into Movies values (9780767824934, 'Feature Film', 'Funny Girl', '29-Jan-2001','DVD','William Wyler','cover','Columbia Pictures',null,'1-Jan-1753');
insert into Movies values (9780767867061, 'Feature Film', 'Pollock', '29-Jan-2001','DVD','Ed Harris','cover','Columbia Pictures',null,'1-Jan-1753');
insert into Movies values (9780780665637, 'Feature Film', 'The Rite', '29-Jan-2011','DVD','Mikael Hafstrom','cover','Warner Home',null,'1-Jan-1753');
insert into Movies values (9780780672215, 'Feature Film', 'Antony and Cleopatra', '29-Jan-2011','DVD','Charlton Heston','cover','Warner Home',null,'1-Jan-1753');
insert into Movies values (9781419855450, 'Feature Film', 'Deliverance', '29-Jan-2007','DVD','John Boorman','cover','Warner Home',null,'1-Jan-1753');
--60
insert into Movies values (9780780660892, 'Feature Film', 'Hamlet', '29-Jan-2010','DVD','Gregory Doran','cover','Warner Home',null,'1-Jan-1753');
insert into Movies values (9781419893124, 'Feature Film', 'Inception', '29-Jan-2010','DVD','Christopher','cover','Warner Home',null,'1-Jan-1753');
insert into Movies values (9781419885945, 'Feature Film', 'Doctor Zhivago', '29-Jan-2010','DVD','David Lean','cover', 'Warner Home', null,'1-Jan-1753');
********************************************************************************************************
INSERT INTO Staff
VALUES ( 396408215 , 'Torreyson library 205', '05-Apr-1950' , 'Cass Martel', 'CMartel@uca.edu', '13-May-2000', 5011935846, 36000, null);


INSERT INTO Staff
VALUES ( 804788565 , 'Torreyson library 126', '25-Sep-1991' , 'Laurence Conner', 'LConner@uca.edu', '22-Aug-2015', 5010340450, 21000, 396408215);


INSERT INTO Staff
VALUES ( 928965985 , 'Torreyson library 116', '25-Jan-1984' , 'Sandy Tanner', 'STanner@uca.edu', '06-Sep-2008', 5014288354, 28000, 396408215);


INSERT INTO Staff
VALUES ( 989477373 , 'Torreyson library 139', '05-Oct-1994' , 'Chris Williams', 'CWilliams@uca.edu', '10-Jan-1999', 5015761842, 28000, 414872598);


INSERT INTO Staff
VALUES ( 576582828 , 'Torreyson library 208', '20-Nov-1994' , 'Daniel Van', 'Dvan@uca.edu', '07-Aug-2000', 5014615190, 31000, 396408215);


INSERT INTO Staff
VALUES (  619413779 , 'Torreyson library 119', '10-Jan-1994' ,'Saladin Clover', 'SClover00@uca.edu', '17-Oct-1995', 5016258614, 23000, 414872598);


INSERT INTO Staff
VALUES ( 956865651 , 'Torreyson library 104', '25-Jul-1992' , 'Bryan Connor', 'BConnor@uca.edu', '30-Aug-2005', 5015440296, 23000, 214495692);


INSERT INTO Staff
VALUES ( 950276941 , 'Torreyson library 211', '03-Dec-1992' , 'Sabrina Lawson', 'SLawson@uca.edu', '14-Apr-1998', 5017859584, 22000, 414872598);


INSERT INTO Staff
VALUES ( 548122362 , 'Torreyson library 109', '10-Jul-1996' , 'Devon Caldwell', 'DCaldwell@uca.edu', '22-Aug-2013', 5017126107, 32000, 396408215);


INSERT INTO Staff
VALUES ( 953059514 , 'Torreyson library 114', '12-Nov-1995' , 'Austen House', 'AHouse@uca.edu', '05-Mar-2014', 5017609480, 34000, 396408215);


INSERT INTO Staff
VALUES ( 279952236 , 'Torreyson library 128', '16-Oct-1993' , 'Rob James', 'RJames@uca.edu', '06-Sep-2004', 5010249163, 21000, 396408215);


INSERT INTO Staff
VALUES ( 375969768 , 'Torreyson library 112', '31-Oct-1978' , 'Michael Hyland', 'MiHyland@uca.edu', '15-Sep-2002', 5016168340, 22000, 396408215);


INSERT INTO Staff
VALUES ( 840260169 , 'Torreyson library 210', '13-Dec-1998' , 'Wynne Butts', 'WButts@uca.edu', '26-Dec-2015', 5015056551, 22000, 214495692);


INSERT INTO Staff
VALUES ( 385031043 , 'Torreyson library 118', '17-May-1996' , 'Jewell Beck', 'JBeck@uca.edu', '10-Nov-2014', 5018678356, 34000, 414872598);


INSERT INTO Staff
VALUES ( 423349215, 'Torreyson library 206', '02-Mar-1992' , 'Derrick Payne', 'DPayne@uca.edu', '15-Nov-1995', 5016314197, 32000, 396408215);


INSERT INTO Staff
VALUES ( 722274603 , 'Torreyson library 132', '14-Mar-1994' , 'Walter Range', 'WRange@uca.edu', '10-Mar-2002', 5010900277, 25000, 214495692);


INSERT INTO Staff
VALUES ( 676530552, 'Torreyson library 123', '17-Jan-1991' , 'Wade Lane', 'WLane@uca.edu', '14-Feb-2004', 5017839455, 21000, 414872598);


INSERT INTO Staff
VALUES ( 507986764 , 'Torreyson library 209', '12-Aug-1994' , 'Tabitha Donald', 'TDonald@uca.edu', '23-Dec-2011', 7036985555, 21000, 214495692);


INSERT INTO Staff
VALUES ( 373937262 , 'Torreyson library 140', '14-Oct-1998' , 'Jimmie Triggs', 'JTriggs@uca.edu', '23-Sep-2015', 5013763188, 21000, 414872598);


INSERT INTO Staff
VALUES ( 707692529 , 'Torreyson library 111', '22-Oct-1986' , 'Gavin Kelsey', 'GKelsey@uca.edu', '19-Jul-2015', 5019432645, 21000, 396408215);


INSERT INTO Staff
VALUES ( 198303173 , 'Torreyson library 102', '06-Jun-1991' , 'Kollin Penington', 'KPenington@uca.edu', '29-Oct-1995', 5016042564, 22000, 414872598);


INSERT INTO Staff
VALUES ( 335598857 , 'Torreyson library 201', '03-Dec-1996' , 'Quincy Timberlake', 'QTimberlake@uca.edu', '05-Jul-2015', 5019171341, 28000, 396408215);


INSERT INTO Staff
VALUES ( 902690740 , 'Torreyson library 137', '12-May-1990' , 'Gilbert Abbot', 'GAbbott@uca.edu', '16-Jul-2014', 5013588531, 21000, 396408215);


INSERT INTO Staff
VALUES ( 915786054 , 'Torreyson library 202', '07-Feb-1995' , 'Aaron Lane', 'ALane@uca.edu', '31-Jan-2008', 5013922274, 31000, 214495692);


INSERT INTO Staff
VALUES ( 508922842 , 'Torreyson library 112', '03-May-1997' , 'Norris Allard', 'NAllard@uca.edu', '07-Mar-2015', 5019473817, 21000, 396408215);


INSERT INTO Staff
VALUES ( 604413594 , 'Torreyson library 135', '30-Jan-1976' , 'Alfie Stack', 'AStack@uca.edu', '07-Sep-2005', 5013148252, 23000, 414872598);


INSERT INTO Staff
VALUES ( 920679898 , 'Torreyson library 203', '21-Jun-1997' , 'Matthew Honeycutt', 'MHoneycutt@uca.edu', '03-Mar-2015', 5015112158, 23000, 214495692);


INSERT INTO Staff
VALUES ( 232368829 , 'Torreyson library 117', '23-Aug-1991' , 'Tai Chi', 'TChi@uca.edu', '26-Apr-1997', 7037772223, 33000, 214495692);


INSERT INTO Staff
VALUES ( 677494772 , 'Torreyson library 122', '27-Sep-1980' , 'Koby Eliot', 'KEliott@uca.edu', '19-Jun-2013', 5015831374, 24000, 396408215);


INSERT INTO Staff
VALUES ( 129504015 , 'Torreyson library 104', '08-Jun-1994' , 'Heather Griffen', 'HGriffen@uca.edu', '18-Oct-2003', 5016406109, 29000, 414872598);


INSERT INTO Staff
VALUES ( 179077142 , 'Torreyson library 129', '29-Dec-1995' , 'Cullen West', 'CWest@uca.edu', '14-Dec-2012', 5018120160, 31000, 396408215);


INSERT INTO Staff
VALUES ( 982320904 , 'Torreyson library 200', '11-Feb-1988' , 'Randolf Cobb', 'RCobb@uca.edu', '17-Dec-2007', 5011854605, 26000, 396408215);


INSERT INTO Staff
VALUES ( 766286864 , 'Torreyson library 132', '27-Jul-1976' , 'Caleb Suggitt', 'CSuggitt@uca.edu', '11-Feb-2005', 5019860963, 25000, 214495692);


INSERT INTO Staff
VALUES ( 616407869 , 'Torreyson library 136', '14-May-1974' , 'Chuck Sydney', 'CSidney@uca.edu', '05-Sep-2010', 5015964466, 22000, 396408215);


INSERT INTO Staff
VALUES ( 958712445, 'Torreyson library 210', '06-Aug-1994' , 'Mei Xing', 'MXing@uca.edu', '05-May-2011', 5018142811, 21000, 414872598);


INSERT INTO Staff
VALUES ( 685399542, 'Torreyson library 138', '12-Feb-1978' , 'Oliver Park', 'OPark@uca.edu', '18-Jul-2014', 5015841342, 21000, 396408215);


INSERT INTO Staff
VALUES ( 219932339 , 'Torreyson library 114', '04-May-1998' , 'Chester Masters', 'CMasters@uca.edu', '29-Apr-2015', 5012504849, 24000, 214495692);


INSERT INTO Staff
VALUES ( 775321515 , 'Torreyson library 121', '11-Jan-1994' , 'Devyn Jacobs', 'DJacobs@uca.edu', '27-Oct-2015', 5014384315, 34000, 414872598);


INSERT INTO Staff
VALUES ( 824257819 , 'Torreyson library 207', '29-Jul-1982' , 'Thornton Edwardson', 'TEdwardson@uca.edu', '20-Dec-2002', 5012229918, 22000, 396408215);


INSERT INTO Staff
VALUES ( 125193770 , 'Torreyson library 103', '15-Oct-1994' , 'Sage Brown', 'SBrown@uca.edu', '19-Apr-1982', 5018291142, 38000, 414872598);


INSERT INTO Staff
VALUES ( 596807975 , 'Torreyson library 131', '22-Nov-1991' , 'Zack Christophers', 'ZChristophers@uca.edu', '25-Feb-2014', 5014802601, 27000,396408215);


INSERT INTO Staff
VALUES ( 107290163 , 'Torreyson library 124', '10-Oct-1980' , 'Brad Blackbourne', 'BBlackbourne@uca.edu', '01-Sep-1998', 5010843221, 27000,396408215);


INSERT INTO Staff
VALUES ( 334496196 , 'Torreyson library 203', '25-Aug-1969' , 'Sullivan Rupertson', 'SRupertson@uca.edu', '08-Jul-2009', 5011431729, 21000, 396408215);


INSERT INTO Staff
VALUES ( 468369420 , 'Torreyson library 120', '02-Jan-1994' , 'Hana Smith', 'HSmith@uca.edu', '23-Dec-1995', 5013454511, 22000, 396408215);


INSERT INTO Staff
VALUES ( 682568482 , 'Torreyson library 135', '25-Jun-1998' , 'Benjy Winston', 'BWinston@uca.edu', '31-Dec-2015', 5014325743, 22000, 214495692);


INSERT INTO Staff
VALUES ( 365598549 , 'Torreyson library 128', '05-May-1992' , 'Calvin Smith', 'CSmith@uca.edu', '16-Feb-1999', 5012140810, 23000, 396408215);


INSERT INTO Staff
VALUES ( 256958246 , 'Torreyson library 120', '25-Jun-1972' , 'Cyrus Bronson', 'CBronson@uca.edu', '14-Nov-2014', 5018321037, 36000, 414872598);


INSERT INTO Staff
VALUES ( 724028044 , 'Torreyson library 106', '14-Jul-1991' , 'Samuel Smith', 'SSmith@uca.edu', '11-Jun-2013', 5011954057, 22000, 396408215);


INSERT INTO Staff
VALUES ( 426664870 , 'Torreyson library 210', '27-May-1993' , 'Buddy Williams', 'BWilliams@uca.edu', '19-Jan-1999', 5018251646, 27000, 396408215);


INSERT INTO Staff
VALUES ( 423183402, 'Torreyson library 100', '29-Jul-1982' , 'Corwin Francis', 'CFrancis@uca.edu', '27-Apr-2000', 5014219987, 25000, 396408215);




***************************************************************************************************************************

INSERT INTO studentworkers
VALUES (001122222, 507986764);

INSERT INTO studentworkers
VALUES (001100002, 232368829);

INSERT INTO studentworkers
VALUES (001166363, 129504015);

INSERT INTO studentworkers
VALUES (001176769, 468369420);

INSERT INTO studentworkers
VALUES (001189993, 958712445);

INSERT INTO studentworkers
VALUES (001133336, 125193770);

INSERT INTO studentworkers
VALUES (001155551, 989477373);

INSERT INTO studentworkers
VALUES (001177777, 619413779);

INSERT INTO studentworkers
VALUES (001188888, 950276941);

INSERT INTO studentworkers
VALUES (001199999, 423349215);

INSERT INTO studentworkers
VALUES (001169693, 676530552);

INSERT INTO studentworkers
VALUES (001189893, 198303173);

INSERT INTO studentworkers
VALUES (001189823, 722274603);

INSERT INTO studentworkers
VALUES (001178787, 279952236); 

INSERT INTO studentworkers
VALUES (001144449, 365598549);

INSERT INTO studentworkers
VALUES (001103336, 724028044);

INSERT INTO studentworkers
VALUES (001101139, 426664870);

INSERT INTO studentworkers
VALUES (001185201, 915786054);

INSERT INTO studentworkers
VALUES (001177778, 956865651);

INSERT INTO studentworkers
VALUES (001199990, 576582828);

***************************************************************************************************************************

INSERT INTO Dependents
VALUES ( 'Alyssa', 804788565, '19-Sep-2013');

INSERT INTO Dependents
VALUES ( 'Robert', 804788565, '11-May-2015');

INSERT INTO Dependents
VALUES ( 'Faith', 804788565, '25-Jun-2016');

INSERT INTO Dependents
VALUES ( 'Peter', 928965985, '19-Jul-2009');

INSERT INTO Dependents
VALUES ('Tamra',507986764,'26-Mar-2016');

INSERT INTO Dependents
VALUES ( 'Corwin',902690740, '21-Aug-2015');

INSERT INTO Dependents
VALUES ( 'Davey', 423183402,'29-Aug-2012');

INSERT INTO Dependents
VALUES ( 'Lisha', 423183402,'11-Nov-2013');

INSERT INTO Dependents
VALUES ( 'Tracie', 982320904,'28-Feb-2014');

INSERT INTO Dependents
VALUES ( 'Stacie', 982320904,'28-Feb-2014');

INSERT INTO Dependents
VALUES ( 'Xaviour',766286864,'07-Jul-1999');

INSERT INTO Dependents
VALUES ( 'Carmen',766286864,'05-Dec-2002');

INSERT INTO Dependents
VALUES ( 'Gary', 616407869, '18-Feb-2001');

INSERT INTO Dependents
VALUES ( 'Brennan', 685399542,'21-Jan-2004');

INSERT INTO Dependents
VALUES ( 'Brandon', 685399542,'12-Nov-2005');

INSERT INTO Dependents
VALUES ( 'Julius',604413594,'28-Feb-1997');

INSERT INTO Dependents
VALUES ( 'Phebe',604413594,'26-Mar-2000');

INSERT INTO Dependents
VALUES ( 'Vicky',604413594,'2-Dec-2002');

INSERT INTO Dependents
VALUES ( 'Gyles',604413594,'12-Jun-2005');

INSERT INTO Dependents
VALUES ( 'Joe',604413594,'16-Jan-2007');

INSERT INTO Dependents
VALUES ( 'Guy',677494772,'02-May-1998');

INSERT INTO Dependents
VALUES ( 'Dexter',824257819,'15-May-1999');

INSERT INTO Dependents
VALUES ( 'Christian',707692529, '28-Oct-2003' );

INSERT INTO Dependents
VALUES ( 'Kristin', 256958246 , '21-Oct-1999');

INSERT INTO Dependents
VALUES ( 'Lane', 256958246 , '07-Feb-2001');

INSERT INTO Dependents
VALUES ( 'Lyssa', 596807975 , '31-Jul-2013');

INSERT INTO Dependents
VALUES ( 'Joyce', 107290163, '9-Sep-2015');

INSERT INTO Dependents
VALUES ( 'Rosy',928965985 , '11-Apr-2008');

INSERT INTO Dependents
VALUES ( 'Devon',928965985 , '12-Jun-2010');

INSERT INTO Dependents
VALUES ( 'Phyllis',928965985 , '27-Jan-2014');

/***********************************************************
INSERT ALL Journals 
************************************************************/

--ALTER TABLE Journal ADD CheckoutDate DATE;
ALTER TABLE Journal MODIFY JournalTYPE VARCHAR2(25);
ALTER TABLE Journal MODIFY JournalYear NUMBER(4);
ALTER TABLE Journal MODIFY Title VARCHAR2(100);

ALTER TABLE Publishers MODIFY Name VARCHAR2(60);
ALTER TABLE Journal MODIFY Publisher VARCHAR2(60);



INSERT INTO Journal
VALUES(118959541,'Editorial',2016, 'A short presidential reading list','American Association for the Advancement of Science',001176769,'11-DEC-2016');
INSERT INTO Journal
VALUES(00368075,'Editorial',2015,'Preimplantation genetic screens','American Association for the Advancement of Science',001178965,'9-DEC-2016');
INSERT INTO Journal
VALUES(00368076,'Editorial',2016,'Leave No City Behind','American Association for the Advancement of Science',001178965,'18-DEC-2016');
INSERT INTO Journal
VALUES(00368077,'Article',2013,'A Very Dilute Superconductor','American Association for the Advancement of Science',001132654,'8-DEC-2013');
INSERT INTO Journal
VALUES(00368078,'Article',2013,'Protestors Steal Animals, Destroy Research','American Association for the Advancement of Science',001132654,'28-DEC-2014');
INSERT INTO Journal
VALUES(00368079,'Article',2013,"Japan",'American Association for the Advancement of Science',001165418,'8-DEC-2014');
INSERT INTO Journal
VALUES(00368070,'Article',2012,'THIS WEEK IN Science','American Association for the Advancement of Science',001165418,'18-OCT-2016');
INSERT INTO Journal
VALUES(00368031,'Article',2012,'Community Matters','American Association for the Advancement of Science',001152398,'18-DEC-2013');
INSERT INTO Journal
VALUES(00368032,'Article',2012,'BY THE NUMBERS','American Association for the Advancement of Science',001152398,'28-OCT-2014');
INSERT INTO Journal
VALUES(00368033,'Article',2012,'Experts Agree Global Warming Is Melting the World Rapidly','American Association for the Advancement of Science',001133345,'28-DEC-2016');
INSERT INTO Journal
VALUES(13594328,'Scholarly Journal',2016,'An evaluation of asymmetric interfaces for bimanual virtual assembly with haptic','Springer Science & Business Media',001133345,'28-NOV-2016');
INSERT INTO Journal
VALUES(13504338,'Scholarly Journal',2016,'Remote collaboration in virtual reality: asymmetrical effects of...','Springer Science & Business Media',001155589,'10-DEC-2016');
INSERT INTO Journal
VALUES(13594334,'Scholarly Journal',2016,'3D model reconstruction with common hand-held cameras','Springer Science & Business Media',001155589,'28-DEC-2016');
INSERT INTO Journal
VALUES(13594335,'Scholarly Journal',2016,'A questionnaire for measuring presence in virtual environments: factor analysis of the presence...','Springer Science & Business Media',001166989,'28-AUG-2016');
INSERT INTO Journal
VALUES(13594336,'Scholarly Journal',2008,'Medical imaging and virtual reality: a personal perspective','Springer Science & Business Media',001166989,'28-APR-2014');
INSERT INTO Journal
VALUES(13594337,'Scholarly Journal',2008,'Virtual reality with fMRI: a breakthrough cognitive treatment tool','Springer Science & Business Media',001155556,'18-MAY-2016');
INSERT INTO Journal
VALUES(13594338,'Scholarly Journal',2008,'Design and implementation of medical training simulators','Springer Science & Business Media',001133332,'8-MAR-2016');
INSERT INTO Journal
VALUES(13594339,'Scholarly Journal',2008,'Medical interface research at the HIT Lab','Springer Science & Business Media',001133332,'15-FEB-2016');
INSERT INTO Journal
VALUES(13594238,'Scholarly Journal',2008,'The Visible Human® at the University of Colorado 15 years later','Springer Science & Business Media',001199987,'8-AUG-2008');
INSERT INTO Journal
VALUES(13594438,'Scholarly Journal',2008,'The road to surgical simulation and surgical navigation','Springer Science & Business Media',001199987,'18-JUN-2015');
INSERT INTO Journal
VALUES(13594738,'Scholarly Journal',2002,'An Investigation of Visual Cues used to Create and Support Frames of...','Springer Science & Business Media',001133178,'18-OCT-2014');
INSERT INTO Journal
VALUES(16155262,'Scholarly Journal',2016,'Message from the guest editors','Springer Science & Business Media',001133178,'28-DEC-2016');
INSERT INTO Journal
VALUES(16155263,'Scholarly Journal',2016,'Measuring protocol strength with security goals','Springer Science & Business Media',001199980,'28-OCT-2016');
INSERT INTO Journal
VALUES(16155264,'Scholarly Journal',2016,'Analyzing proposals for improving authentication on the TLS-/SSL-protected Web','Springer Science & Business Media',001199980,'10-OCT-2016');
INSERT INTO Journal
VALUES(16155265,'Scholarly Journal',2016,'Secure modular password authentication for the web using channel bindings','Springer Science & Business Media',001188878,'11-OCT-2016');
INSERT INTO Journal
VALUES(18121345,'Scolarly Journal',2014,'How to Program in R','R Foundation',001178965,'12-NOV-2014');
INSERT INTO Journal
VALUES(19236745,'Scholarly Journal',2015,'How to Program in C++','C++ Foundation',001177779,'4-NOV-2016');
INSERT INTO Journal
VALUES(17236798,'Scholarly Journal',2008,'How to Code Effectively','MIT Foundation',001165418,'9-SEP-2011');
INSERT INTO Journal
VALUES(19236783,'Article',2014,'Coding vs Developing','Business Insider',001152398,'3-SEP-2015');
INSERT INTO Journal
VALUES(12345678,'Editorial',2006,'Virtual vs Augement Reality','Tech Insider',001133345,'5-AUG-2007');
INSERT INTO Journal
VALUES(15678912,'Editorial',2007,'Virtual Reality','VR Institute',001155589,'6-OCT-2008');
INSERT INTO Journal
VALUES(16782367,'Article',2016,'Will Tech Fall','Tech-Crunch',001166989,'11-DEC-2016');
INSERT INTO Journal
VALUES(17234823,'Article',2015,'Tech Will Rise','Tech Insider',001133332,'10-NOV-2016');
INSERT INTO Journal
VALUES(19736756,'Article',2016,'Be an Entrprnr','Entreprenuer Magazine',001199987,'11-DEC-2016');
INSERT INTO Journal
VALUES(14562378,'Editorial',2014,'Be Smart','Smart People Inc.',001133178,'10-DEC-2015');
INSERT INTO Journal
VALUES(19237845,'Article',2015,'Jesus and Technology','Catholics for Science',NULL,'01-JAN-1753');
INSERT INTO Journal
VALUES(19783456,'Sholarly Journal',2016,'The Code Bible','Hacking 101',001188878,'11-DEC-2016');
INSERT INTO Journal
VALUES(16782312,'Article',2016,'How to Write Code Journals','Journals 101',001177779,'10-APR-2016');
INSERT INTO Journal
VALUES(19638123,'Article',2015,'Spider Code','Code Webs',001177779,'11-NOV-2016');
INSERT INTO Journal
VALUES(14561234,'Article',2014,'Code Smart than your CW','Code Smart',001122227,'1-JAN-2016');
INSERT INTO Journal
VALUES(12893478,'Scholarly Journal',2013,'How to eat with Code','Quick Tips',001199996,'2-NOV-2014');
INSERT INTO Journal
VALUES(19283746,'Article',2015,'Code Genius','Steve Jobs Foundation',001199996,'3-NOV-2016');
INSERT INTO Journal
VALUES(19678912,'Article',2014,'Coding in India','India Institute',001122278,'8-DEC-2014');
INSERT INTO Journal
VALUES(19562378,'Editorial',2016,'Coding in China','China New Network',001122278,'10-APR-2016');
INSERT INTO Journal
VALUES(12568912,'Article',2015,'Coding in Japan','Japan Inc.',001188887,'10-DEC-2015');
INSERT INTO Journal
VALUES(17364859,'Article',2016,'Cyber Wars','US News',001155558,'11-NOV-2016');
INSERT INTO Journal
VALUES(13579135,'Editorial',2015,'Why Coding Is Amazing','Hackathon Inc.',001112126,'12-DEC-2015');
INSERT INTO Journal
VALUES(16283629,'Article',2016,'Coding vs Networking','Snowden',001198986,'11-APR-2016');
INSERT INTO Journal
VALUES(17485968,'Article',2014,'Code War HPE','Computer Science Group',001136361,'10-APR-2016');
INSERT INTO Journal
VALUES(12893467,'Article',2015,'Why do an Internship','TI Insider',001189897,'1-JAN-2016');
INSERT INTO Journal
VALUES(14592637,'Article',2016,'How will Donald Effect Tech','Business Insider',001103336,'9-NOV-2016');
INSERT INTO Journal
VALUES(17293948,'Article',2015,'How Hillary will Help Tech','Tech-Crunch',001101139,'2-NOV-2016');

/********************************
INSERTS ALL Donatortypes
DonatorID, Donatortype, UCAID, MovieEIDR, BookISBN, JournalID, AudiobookISBN, MoneyAmount
********************************/
ALTER TABLE Donatortype MODIFY donatorID NUMBER(9);

INSERT INTO donatortype
VALUES(001178963,'student',001155556,NULL,'9781118900420',NULL, NULL,4);
INSERT INTO donatortype
VALUES(001122223,'student',001158589,NULL,'9781118900420',NULL,NULL,2);
INSERT INTO donatortype
VALUES(001133333,'student',001177771,NULL,'9780124077263',NULL,NULL,1);
INSERT INTO donatortype
VALUES(001144442,'student',001144449,NULL,'9780745641119',NULL,NULL,5);
INSERT INTO donatortype
VALUES(001155556,'student',001169693,NULL,NULL,NULL,NULL,1);
INSERT INTO donatortype
VALUES(001166663,'student',001189823,NULL,'1930190867',00368075,'9781611132151',7);
INSERT INTO donatortype
VALUES(001177776,'student',001178787,NULL,NULL,00368075,'1423309162',4);
INSERT INTO donatortype
VALUES(001188889,'student',001123236,NULL,NULL,NULL,'0743569997',4);
INSERT INTO donatortype
VALUES(001199998,'student',001159556,NULL,NULL,00368075,NULL,9);
INSERT INTO donatortype
VALUES(001122336,'student',001174441,NULL,NULL,00368075,'9781611763737',1);
INSERT INTO donatortype
VALUES(001133225,'student',001133336,NULL,NULL,00368075,'0142800767',3);
INSERT INTO donatortype
VALUES(001144335,'student',001155551,NULL,NULL,00368075,NULL,5);
INSERT INTO donatortype
VALUES(001155546,'student',001177777,NULL,'0001381237',00368075,NULL,3);
INSERT INTO donatortype
VALUES(001156565,'student',001188888,NULL,'9780399232466',00368075,'9781478928133',2);
INSERT INTO donatortype
VALUES(001163636,'student',001199999,NULL,'0723235988',NULL,'9780451482211',6);
INSERT INTO donatortype
VALUES(001152525,'student',001100123,NULL,'9780723260158',NULL,NULL,7);
INSERT INTO donatortype
VALUES(001141414,'student',001199991,NULL,'9780345337665',00368075,NULL,3);
INSERT INTO donatortype
VALUES(001152639,'student',001189890,NULL,'078681859X',NULL,NULL,5);
INSERT INTO donatortype
VALUES(001178561,'student',001122222,NULL,'9780142402511',NULL,'9780449808221',8);
INSERT INTO donatortype
VALUES(001176769,'student',001189893,NULL,'0674299582',NULL,'9780385366922',2);
INSERT INTO donatortype
VALUES(001178965,'student',001178965,9786314204693,NULL,NULL,NULL,1);
INSERT INTO donatortype
VALUES(001132654,'student',001132654,9781435992900,NULL,NULL,NULL,3);
INSERT INTO donatortype
VALUES(001165418,'student',001165418,9781419873294,NULL,NULL,NULL,5);
INSERT INTO donatortype
VALUES(001152398,'student',001152398,9781419845338,NULL,NULL,NULL,7);
INSERT INTO donatortype
VALUES(001133345,'student',001133345,9781435992357,NULL,NULL,NULL,9);
INSERT INTO donatortype
VALUES(001155589,'student',001155589,9781435943567,NULL,NULL,NULL,2);
INSERT INTO donatortype
VALUES(001166989,'student',001166989,0960091259000,NULL,NULL,NULL,4);
INSERT INTO donatortype
VALUES(001133332,'student',001133332,9781419844966,NULL,NULL,NULL,6);
INSERT INTO donatortype
VALUES(001199987,'student',001199987,0245436653110,NULL,NULL,NULL,8);
INSERT INTO donatortype
VALUES(001133178,'student',001133178,9781419868382,NULL,NULL,NULL,1);
INSERT INTO donatortype
VALUES(001199980,'student',001199980,NULL,NULL,18121345,NULL,2);
INSERT INTO donatortype
VALUES(001188878,'student',001188878,NULL,NULL,NULL,NULL,3);
INSERT INTO donatortype
VALUES(001177779,'student',001177779,NULL,NULL,17236798,NULL,9);
INSERT INTO donatortype
VALUES(001199996,'student',001199996,NULL,NULL,19236783,NULL,5);
INSERT INTO donatortype
VALUES(001122278,'student',001122278,NULL,NULL,12345678,NULL,6);
INSERT INTO donatortype
VALUES(001155558,'student',001155558,NULL,NULL,16782367,NULL,2);
INSERT INTO donatortype
VALUES(001177223,'student',001177223,NULL,NULL,17234823,NULL,1);
INSERT INTO donatortype
VALUES(001123239,'student',001123239,NULL,NULL,19736756,NULL,3);
INSERT INTO donatortype
VALUES(001199997,'student',001199997,NULL,NULL,14562378,NULL,1);
INSERT INTO donatortype
VALUES(001188887,'student',001188887,NULL,NULL,19237845,NULL,1);
INSERT INTO donatortype
VALUES(001142429,'student',001142429,NULL,NULL,19783456,NULL,4);
INSERT INTO donatortype
VALUES(001112126,'student',001112126,9781422987674,NULL,NULL,NULL,2);
INSERT INTO donatortype
VALUES(001198986,'student',001198986,0131380033935,NULL,NULL,NULL,3);
INSERT INTO donatortype
VALUES(001136361,'student',001136361,9781435992900,NULL,NULL,NULL,7);
INSERT INTO donatortype
VALUES(001189897,'student',001189897,9781419878725,NULL,NULL,NULL,2);
INSERT INTO donatortype
VALUES(001103336,'student',001103336,9781419887338,NULL,NULL,NULL,6);
INSERT INTO donatortype
VALUES(001101139,'student',001101139,9781419887307,NULL,NULL,NULL,3);
INSERT INTO donatortype
VALUES(001188889,'student',001123236,NULL,NULL,NULL,'0142800767',4);
INSERT INTO donatortype
VALUES(001112126,'student',001112126,9780788872242,NULL,NULL,NULL,2);







