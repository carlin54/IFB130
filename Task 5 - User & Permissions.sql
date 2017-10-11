CREATE USER 'Nikki'@'localhost';
GRANT INSERT 
ON treasurehunters.player
TO 'Nikki'@'localhost';
GRANT DELETE 
ON treasurehunters.player
TO 'Nikki'@'localhost';


CREATE USER 'Phil'@'localhost';
GRANT INSERT 
ON treasurehunters.player
TO 'Phil'@'localhost';
GRANT DELETE 
ON treasurehunters.player
TO 'Phil'@'localhost';
REVOKE INSERT 
ON treasurehunters.player
FROM 'Phil'@'localhost';
REVOKE DELETE 
ON treasurehunters.player
FROM 'Phil'@'localhost';