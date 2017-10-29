CREATE TABLE P1 as SELECT title,publisher FROM Books;
CREATE TABLE P2 as SELECT * FROM P1,publishers WHERE publisher = name;
SELECT * FROM P2;