--Givent schema
CREATE TABLE clients (
   client_i INT(11),
   PRIMARY KEY (client_id)
);
CREATE TABLE projects (
   project_id INT(11) UNSIGNED,
   client_id INT(11) UNSIGNED,
   PRIMARY KEY (project_id)
);
CREATE TABLE posts (
   post_id INT(11) UNSIGNED,
   project_id INT(11) UNSIGNED,
   PRIMARY KEY (post_id)
);

--How to delete single or multiple table data baed on JOIN syntax?
=======================
Single Table Delete   
=======================
In order to delete entries from posts table
--------------------------------------------

DELETE ps 
FROM clients C 
INNER JOIN projects pj ON C.client_id = pj.client_id
INNER JOIN posts ps ON pj.project_id = ps.project_id
WHERE C.client_id = :client_id;
In order to delete entries from projects table:


In order to delete entries from projects table
-----------------------------------------------
DELETE pj 
FROM clients C 
INNER JOIN projects pj ON C.client_id = pj.client_id
INNER JOIN posts ps ON pj.project_id = ps.project_id
WHERE C.client_id = :client_id;
In order to delete entries from clients table:

In order to delete entries from clients table
----------------------------------------------
DELETE C
FROM clients C 
INNER JOIN projects pj ON C.client_id = pj.client_id
INNER JOIN posts ps ON pj.project_id = ps.project_id
WHERE C.client_id = :client_id;

========================
Multiple Tables Delete
========================

In order to delete entries from multiple tables out of the joined results you need to specify the table names after DELETE as comma separated list:

Suppose you want to delete entries from all the three tables (posts,projects,clients) for a particular client:

DELETE C,pj,ps 
FROM clients C 
INNER JOIN projects pj ON C.client_id = pj.client_id
INNER JOIN posts ps ON pj.project_id = ps.project_id
WHERE C.client_id = :client_id
