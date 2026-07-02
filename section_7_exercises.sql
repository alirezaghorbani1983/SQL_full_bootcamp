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

SELECT surname, firstname, joindate
FROM cd.members
order by joindate DESC
LIMIT 1;

SELECT COUNT(*) FROM cd.facilities
WHERE guestcost >10;

select * from cd.bookings;

SELECT facid, SUM(slots) AS total_slots
FROM cd.bookings
WHERE starttime >= '2012-09-01' AND starttime < '2012-10-01'
GROUP BY facid
ORDER BY SUM(slots);


select facid, SUM(slots) AS total_slots
from cd.bookings
GROUP BY facid
HAVING sum(slots) > 1000
ORDER BY facid;

select FROM cd.bookings;

select * FROM cd.facilities;

SELECT starttime, name FROM cd.bookings
INNER JOIN cd.facilities
ON cd.bookings.facid = cd.facilities.facid
WHERE cd.bookings.starttime = '2012-09-21'
ORDER BY starttime;

SELECT starttime, name
FROM cd.bookings AS b
INNER JOIN cd.facilities AS f
ON b.facid = f.facid
WHERE b.starttime >= '2012-09-21'
  AND b.starttime < '2012-09-22'
  AND f.name IN('Tennis Court 1', 'Tennis Court 2')
ORDER BY b.starttime;


select * FROM cd.bookings;

select * FROM cd.members;


SELECT starttime
FROM cd.bookings AS b
LEFT JOIN cd.members AS m
ON b.memid = m.memid
WHERE m.firstname = 'David' AND surname = 'Farrell';