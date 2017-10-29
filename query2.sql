CREATE TABLE P3 as SELECT ucaid FROM journal WHERE  ucaid > 0 ;
CREATE TABLE P4 as SELECT SSN FROM P3, studentworkers WHERE P3.ucaid=studentworkers.ucaid;
SELECT SSN FROM P4;