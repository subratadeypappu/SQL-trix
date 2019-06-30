Question #1:
============
SELECT COUNT(1); 

Ans: 1 row

Question #2:
============
SELECT COUNT(-1);

Ans: 1 row

Question #3:
============
SELECT COUNT(0);

Ans: 1 row

Question #4:
============
SELECT COUNT(NULL);

Ans: 0 row

=======
Reason
=======
`COUNT` counts the number of non-null rows. 
