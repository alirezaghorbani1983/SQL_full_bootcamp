select * from cd.facilities;

select name, membercost FROM cd.facilities;

SELECT facid, name, membercost, monthlymaintenance
FROM cd.facilities
WHERE membercost > 0;

SELECT facid, name, membercost, monthlymaintenance
FROM cd.facilities
WHERE membercost > 0 AND membercost < (monthlymaintenance/50.0);


SELECT * FROM cd.facilities
WHERE name LIKE '%Tennis%';

SELECT * FROM cd.facilities
WHERE facid = 1 or facid = 5;

select * from cd.members;

SELECT memid, surname, firstname, joindate
FROM cd.members
WHERE joindate >= '2012-09-01';

SELECT memid, surname, firstname, joindate
FROM cd.members
WHERE joindate >= '2012-09-01';

SELECT DISTINCT(surname)
FROM cd.members
order by surname
LIMIT 10;



