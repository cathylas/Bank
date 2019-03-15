
-- Création base de donnée / si existe déjà, supprimer !
DROP DATABASE IF EXISTS Bank;
CREATE DATABASE Bank;
USE Bank;



-- Création table des clients
CREATE TABLE T_Customers ( 
       IdCust			    int(4)	        PRIMARY KEY AUTO_INCREMENT, 
       Name			varchar(20)		NOT NULL, 
       FirstName		varchar(20)		NOT NULL 
) ENGINE = InnoDB;			


-- Ajouter des clients à votre table
INSERT INTO T_Customers ( IdCust, Name, FirstName ) VALUES ( 1, 'Anderson' ,'Neo' );
INSERT INTO T_Customers ( IdCust, Name, FirstName ) VALUES ( 2, 'Dupond' ,'leon' );
INSERT INTO T_Customers ( IdCust, Name, FirstName ) VALUES ( 3, 'Durant' ,'Matheo' );
INSERT INTO T_Customers ( IdCust, Name, FirstName ) VALUES ( 4, 'Martin' ,'Thierry' );



-- Création table des comptes
CREATE TABLE T_Counts (
        NumCt		int(4)		PRIMARY KEY AUTO_INCREMENT,
        DateCreation   DATE(4)          NOT NULL,
        Balance		int(4)          NOT NULL DEFAULT 0, 
        IdCust		int(4)	        NOT NULL REFERENCES T_Customers (IdCust)
) ENGINE = InnoDB;


-- Ajouter des comptes
INSERT INTO  T_Counts (IdCust, NumCt, DateCreation, Balance) VALUES ( 1 , 34532 , 01/02/18 , 1432 );	
INSERT INTO  T_Counts (IdCust, NumCt, DateCreation, Balance) VALUES ( 1 , 98076 , 24/03/14 , 15432 );
INSERT INTO  T_Counts (IdCust, NumCt, DateCreation, Balance) VALUES ( 2 , 32143 , 13/07/87 , 5453 );
INSERT INTO  T_Counts (IdCust, NumCt, DateCreation, Balance) VALUES ( 3 , 87943 , 26/07/70 , 800 );
INSERT INTO  T_Counts (IdCust, NumCt, DateCreation, Balance) VALUES ( 4 , 65390 , 19/06/67 , 3521 );
INSERT INTO  T_Counts (IdCust, NumCt, DateCreation, Balance) VALUES ( 4 , 98706 , 20/06/70 , 6832 );



-- Création table des opérations
CREATE TABLE T_Operations ( 
       NumOp			int(4)		NOT NULL,
       Amount		      float(20)		NOT NULL, 
       NumCt			int(4)		NOT NULL REFERENCES T_Counts(NumCt)
) ENGINE = InnoDB;			


-- Ajouter des opérations
INSERT INTO T_Operations (NumOp, Amount, NumCt) VALUES ( 42 , 1000 , 98076 );
INSERT INTO T_Operations (NumOp, Amount, NumCt) VALUES ( 07 , 400 , 98076 );
INSERT INTO T_Operations (NumOp, Amount, NumCt) VALUES ( 06 , 1000 , 98076 );
INSERT INTO T_Operations (NumOp, Amount, NumCt) VALUES ( 02 , 2000 , 65390 );
INSERT INTO T_Operations (NumOp, Amount, NumCt) VALUES ( 03 , 500  , 65390 );
INSERT INTO T_Operations (NumOp, Amount, NumCt) VALUES ( 01 , 3000 , 32143 );
INSERT INTO T_Operations (NumOp, Amount, NumCt) VALUES ( 05 , 800 , 98706 );
INSERT INTO T_Operations (NumOp, Amount, NumCt) VALUES ( 09 , 500 , 65390 );


  
