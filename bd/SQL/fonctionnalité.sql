/*-------------------------------------------------------------*/
/*----------------------Gerer les produit----------------------*/
/*-------------------------------------------------------------*/
/*Ajouter un produit*/
Insert into PRODUIT (LIBELLEPRODUIT) values ('Lait');




/*Modifier un produit (ici le numero 2)*/
UPDATE PRODUIT
SET libelleProduit = 'nouvelle valeur'
WHERE id_produit = 2;




/*Supprimer un produit (ici le numero 2)*/
DELETE FROM PRODUIT
WHERE id_produit = 2;



/*-------------------------------------------------------------*/
/*----------------------Gerer les comptes----------------------*/
/*-------------------------------------------------------------*/

/*Creer le compte d'un enfant */
Insert into Personne (nompersonne,prenompersonne) values ('martin','pierre');
Insert into ENFANT (MAILCONTACTENFANT,TELCONTACTENFANT,ID_PERSONNE,ID_CATEGORIE) values ('pierremartin@gmail.com','0102030405',21,1);


/*Creer un compte d'un parent membre*/
Insert into PERSONNE (NOMPERSONNE,PRENOMPERSONNE) values ('Martin','Pierre');

/*Supprimer un compte d'un parent membre  (ici le numero 1)*/
DELETE FROM PERSONNE
WHERE id_Personne = 1;

/*Supprimer un compte d'un enfant (ici le numero 1)*/
DELETE FROM ENFANT
WHERE id_enfant = 1;

/*-------------------------------------------------------------*/
/*-------------------Gerer les produit consome-----------------*/    
/*-------------------------------------------------------------*/

/*ajouter ce que l'enfant a consome*/
Insert into CONSOMME (DATECONSOMMATION,QTECONSOMMATION,ID_PRODUIT,ID_ENFANT,ID_PERSONNE) values (sysdate,1,2,1,11);

/*supprimer ce que l'enfant a consome*/
DELETE FROM consomme
WHERE id_Produit = 1
AND ID_ENFANT = 1
AND ID_PERSONNE = 11;




/*-------------------------------------------------------------*/
/*----------------------Gerer les courses----------------------*/
/*-------------------------------------------------------------*/

/*Consulter les stock*/

SELECT STOCK
FROM  PRODUIT_SIMPLE;

/*Indiquer montant total de l'achat (ici le numero 1)*/
SELECT montantCourse
FROM COURSE
WHERE idCourse = 1;


/*?????????????????/Mettre a jour le stock de produit ????????????/*/

UPDATE PRODUIT_simple
SET stock = stock + 1
WHERE id_produit = 8;