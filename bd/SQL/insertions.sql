Insert into  PERSONNE ( NOMPERSONNE,PRENOMPERSONNE) values ('Martin','Pierre');
Insert into  PERSONNE ( NOMPERSONNE,PRENOMPERSONNE) values ('Pique','Georges');
Insert into  PERSONNE ( NOMPERSONNE,PRENOMPERSONNE) values ('Bonami','Marguerite');
Insert into  PERSONNE ( NOMPERSONNE,PRENOMPERSONNE) values ('Lapierre','Magnolia');
Insert into  PERSONNE ( NOMPERSONNE,PRENOMPERSONNE) values ('Gamelin','Estelle');
Insert into  PERSONNE ( NOMPERSONNE,PRENOMPERSONNE) values ('Boisclair','Caroline');
Insert into  PERSONNE ( NOMPERSONNE,PRENOMPERSONNE) values ('Richer','Richard');
Insert into  PERSONNE ( NOMPERSONNE,PRENOMPERSONNE) values ('Bouvier','Martin');
Insert into  PERSONNE ( NOMPERSONNE,PRENOMPERSONNE) values ('Salois','Christine');
Insert into  PERSONNE ( NOMPERSONNE,PRENOMPERSONNE) values ('Granville','Gauvin');
Insert into  PERSONNE ( NOMPERSONNE,PRENOMPERSONNE) values ('Martin','Maxime');
Insert into  PERSONNE ( NOMPERSONNE,PRENOMPERSONNE) values ('Pique','Antoine');
Insert into  PERSONNE ( NOMPERSONNE,PRENOMPERSONNE) values ('Bonami','Quentin');
Insert into  PERSONNE ( NOMPERSONNE,PRENOMPERSONNE) values ('Lapierre','Lucas');
Insert into  PERSONNE ( NOMPERSONNE,PRENOMPERSONNE) values ('Gamelin','Matheo');
Insert into  PERSONNE ( NOMPERSONNE,PRENOMPERSONNE) values ('Boisclair','Enzo');
Insert into  PERSONNE ( NOMPERSONNE,PRENOMPERSONNE) values ('Richer','Alex');
Insert into  PERSONNE ( NOMPERSONNE,PRENOMPERSONNE) values ('Bouvier','Lucien');
Insert into  PERSONNE ( NOMPERSONNE,PRENOMPERSONNE) values ('Salois','Tom');
Insert into  PERSONNE ( NOMPERSONNE,PRENOMPERSONNE) values ('Granville','Hugo');

Insert into  CATEGORIE ( LIBELLECATEGORIE) values ('U14');
Insert into  CATEGORIE ( LIBELLECATEGORIE) values ('U6');
Insert into  CATEGORIE ( LIBELLECATEGORIE) values ('U8');
Insert into  CATEGORIE ( LIBELLECATEGORIE) values ('U10');
Insert into  CATEGORIE ( LIBELLECATEGORIE) values ('U12');
Insert into  CATEGORIE ( LIBELLECATEGORIE) values ('U16');


Insert into  PRODUIT ( LIBELLEPRODUIT) values ('Bonbons');
Insert into  PRODUIT ( LIBELLEPRODUIT) values ('Canette');
Insert into  PRODUIT ( LIBELLEPRODUIT) values ('Caf¨¦');
Insert into  PRODUIT ( LIBELLEPRODUIT) values ('Sucette');
Insert into  PRODUIT ( LIBELLEPRODUIT) values ('Barre chocalat¨¦');
Insert into  PRODUIT ( LIBELLEPRODUIT) values ('Pain au chocalat');
Insert into  PRODUIT ( LIBELLEPRODUIT) values ('Pain');
Insert into  PRODUIT ( LIBELLEPRODUIT) values ('Tablette de chocolat');
Insert into  PRODUIT ( LIBELLEPRODUIT) values ('Sandwich au chocolat');


Insert into  PRODUIT_COMPOSE (ID_PRODUIT) values (6);

Insert into  PRODUIT_SIMPLE (PRIXUNITAIRE,STOCK,ID_PRODUIT) values (2,2,7);
Insert into  PRODUIT_SIMPLE (PRIXUNITAIRE,STOCK,ID_PRODUIT) values (4,2,8);

Insert into  EST_COMPOSE_DE (QTECOMPOSITION,ID_PRODUIT ,ID_PRODUIT_PRODUIT) values (1,6,7);
Insert into  EST_COMPOSE_DE (QTECOMPOSITION,ID_PRODUIT, ID_PRODUIT_PRODUIT) values (1,6,8);


Insert into  ROLE (ID_ROLE) values (1);
Insert into  ROLE (ID_ROLE) values (2);
Insert into  ROLE (ID_ROLE) values (3);
Insert into  ROLE (ID_ROLE) values (4);


Insert into  BENEVOLE (LOGINBENEVOLE,MOTDEPASSEBENEVOLE,ID_PERSONNE) values ('pierremartin@gmail.com','pm001',1);
Insert into  BENEVOLE (LOGINBENEVOLE,MOTDEPASSEBENEVOLE,ID_PERSONNE) values ('georgespique@gmail.com','gp001',2);
Insert into  BENEVOLE (LOGINBENEVOLE,MOTDEPASSEBENEVOLE,ID_PERSONNE) values ('estellegamelin@gmail.com','eg001',5);
Insert into  BENEVOLE (LOGINBENEVOLE,MOTDEPASSEBENEVOLE,ID_PERSONNE) values ('richardricher@gmail.com','rr001',7);
Insert into  BENEVOLE (LOGINBENEVOLE,MOTDEPASSEBENEVOLE,ID_PERSONNE) values ('martinbouvier@gmail.com','mb001',8);
Insert into  BENEVOLE (LOGINBENEVOLE,MOTDEPASSEBENEVOLE,ID_PERSONNE) values ('christinesalois@gmail.com','cs001',9);
Insert into  BENEVOLE (LOGINBENEVOLE,MOTDEPASSEBENEVOLE,ID_PERSONNE) values ('gauvingranville@gmail.com','gg001',10);
Insert into  BENEVOLE (LOGINBENEVOLE,MOTDEPASSEBENEVOLE,ID_PERSONNE) values ('margueriteb@gmail.com','mb001',3);
Insert into  BENEVOLE (LOGINBENEVOLE,MOTDEPASSEBENEVOLE,ID_PERSONNE) values ('magnolial@gmail.com','ml001',4);
Insert into  BENEVOLE (LOGINBENEVOLE,MOTDEPASSEBENEVOLE,ID_PERSONNE) values ('carolieb@gmail.com','cb001',6);


Insert into  A_POUR_ROLE (LOGINBENEVOLE, ID_personne,ID_ROLE) values ('pierremartin@gmail.com',1,1);

Insert into  ENFANT ( MAILCONTACTENFANT,TELCONTACTENFANT,id_personne, ID_CATEGORIE) values ('pierremartin@gmail.com','0102030405',11,1);
Insert into  ENFANT ( MAILCONTACTENFANT,TELCONTACTENFANT, ID_personne,ID_CATEGORIE) values ('georgespique@gmail.com','0102034405',12,1);
Insert into  ENFANT ( MAILCONTACTENFANT,TELCONTACTENFANT,ID_personne, ID_CATEGORIE) values ('margueriteb@gmail.com','0102230405',13,2);
Insert into  ENFANT ( MAILCONTACTENFANT,TELCONTACTENFANT,ID_personne,ID_CATEGORIE) values ('magnolial@gmail.com','0102038405',14,3);
Insert into  ENFANT ( MAILCONTACTENFANT,TELCONTACTENFANT, ID_personne,ID_CATEGORIE) values ('estellegamelin@gmail.com','0102330405',15,5);
Insert into  ENFANT ( MAILCONTACTENFANT,TELCONTACTENFANT, ID_personne,ID_CATEGORIE) values ('carolieb@gmail.com','0102465405',16,4);
Insert into  ENFANT ( MAILCONTACTENFANT,TELCONTACTENFANT,ID_personne, ID_CATEGORIE) values ('richardricher@gmail.com','0101230405',17,2);
Insert into  ENFANT ( MAILCONTACTENFANT,TELCONTACTENFANT, ID_personne,ID_CATEGORIE) values ('martinbouvier@gmail.com','0108030405',18,1);
Insert into  ENFANT ( MAILCONTACTENFANT,TELCONTACTENFANT,ID_personne,ID_CATEGORIE) values ('christinesalois@gmail.com','0102030405',19,4);
Insert into  ENFANT ( MAILCONTACTENFANT,TELCONTACTENFANT,ID_personne, ID_CATEGORIE) values ('gauvingranville@gmail.com','0102078705',20,3);

Insert into  AJOUT_ARGENT ( MONTANTARGENT,DATEAJOUT, ID_PERSONNE, ID_enfant) values (30,sysdate,12,1);
Insert into  AJOUT_ARGENT ( MONTANTARGENT,DATEAJOUT, ID_PERSONNE, ID_enfant) values (30,sysdate,12,2);
Insert into  AJOUT_ARGENT ( MONTANTARGENT,DATEAJOUT, ID_PERSONNE, ID_enfant) values (30,sysdate,13,3);
Insert into  AJOUT_ARGENT ( MONTANTARGENT,DATEAJOUT, ID_PERSONNE, ID_enfant) values (30,sysdate,14,4);
Insert into  AJOUT_ARGENT ( MONTANTARGENT,DATEAJOUT, ID_PERSONNE, ID_enfant) values (30,sysdate,15,5);
Insert into  AJOUT_ARGENT ( MONTANTARGENT,DATEAJOUT, ID_PERSONNE, ID_enfant) values (30,sysdate,16,6);
Insert into  AJOUT_ARGENT ( MONTANTARGENT,DATEAJOUT, ID_PERSONNE, ID_enfant) values (30,sysdate,17,7);
Insert into  AJOUT_ARGENT ( MONTANTARGENT,DATEAJOUT, ID_PERSONNE, ID_enfant) values (30,sysdate,18,8);
Insert into  AJOUT_ARGENT ( MONTANTARGENT,DATEAJOUT, ID_PERSONNE, ID_enfant) values (30,sysdate,12,2);
Insert into  AJOUT_ARGENT ( MONTANTARGENT,DATEAJOUT, ID_PERSONNE, ID_enfant) values (30,sysdate,20,10);
Insert into  AJOUT_ARGENT ( MONTANTARGENT,DATEAJOUT, ID_PERSONNE, ID_enfant) values (30,sysdate,11,1);




Insert into  CONSOMME (DATECONSOMMATION,QTECONSOMMATION,ID_produit,  ID_PERSONNE, ID_enfant) values (sysdate,1,6,12,2);
Insert into  CONSOMME (DATECONSOMMATION,QTECONSOMMATION,ID_produit,  ID_PERSONNE, ID_enfant) values (sysdate,1,8,13,3);
Insert into  CONSOMME (DATECONSOMMATION,QTECONSOMMATION, ID_produit, ID_PERSONNE, ID_enfant) values (sysdate,2,6,14,4);
Insert into  CONSOMME (DATECONSOMMATION,QTECONSOMMATION, ID_produit, ID_PERSONNE, ID_enfant) values (sysdate,3,7,15,5);
Insert into  CONSOMME (DATECONSOMMATION,QTECONSOMMATION,ID_produit,  ID_PERSONNE, ID_enfant) values (sysdate,1,8,16,6);
Insert into  CONSOMME (DATECONSOMMATION,QTECONSOMMATION,  ID_produit,ID_PERSONNE, ID_enfant) values (sysdate,1,6,17,7);
Insert into  CONSOMME (DATECONSOMMATION,QTECONSOMMATION,ID_produit,  ID_PERSONNE, ID_enfant) values (sysdate,2,7,18,8);
Insert into  CONSOMME (DATECONSOMMATION,QTECONSOMMATION,ID_produit,  ID_PERSONNE, ID_enfant) values (sysdate,1,7,12,2);

Insert into  COURSE (MONTANTCOURSE,DATECOURSE,LOGINBENEVOLE,ID_PERSONNE) values (50,sysdate,'pierremartin@gmail.com',1);













--------------------------------------------------------