--------------------------------------------------------
--  文件已创建 - 星期一-十一月-27-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for View VUECALCULM
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "VUECALCULM" ("ID_ENFANT", "NOMPERSONNE", "PRENOMPERSONNE", "MONTANT") AS 
  SELECT 
    enfant.id_enfant,personne.nompersonne,personne.prenompersonne,sum(montantargent) as montant
FROM 
    enfant,ajout_argent,personne
    where
    enfant.id_enfant = ajout_argent.id_enfant
    and
    enfant.id_personne = personne.id_personne
    group by enfant.id_enfant,personne.nompersonne,personne.prenompersonne
;
--------------------------------------------------------
--  DDL for View VUEPRODUIT
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "VUEPRODUIT" ("ID_PRODUIT", "PRIX") AS 
  (SELECT 
    produit.id_produit,prixunitaire as prix
FROM 
    produit,produit_simple
where
    produit.id_produit = produit_simple.id_produit
    )
union
    (
    select 
    produit.id_produit,sum(prixunitaire*qtecomposition )as prix
    from
    produit,produit_compose,est_compose_de,produit_simple
    where
    produit.id_produit = produit_compose.id_produit
    and
    produit_compose.id_produit = est_compose_de.id_produit
    and
    est_compose_de.id_produit_produit = produit_simple.id_produit
    group by produit.id_produit)
;
--------------------------------------------------------
--  DDL for View VUEPRIXTOTAL
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "VUEPRIXTOTAL" ("ID_ENFANT", "PRENOMPERSONNE", "NOMPERSONNE", "TOTAL") AS 
  SELECT 
    enfant.id_enfant,personne.prenompersonne,personne.nompersonne, sum(prix * qteconsommation) as total
FROM 
    enfant,personne,vueproduit,consomme
    where
    enfant.id_personne = personne.id_personne
    and
    enfant.id_enfant = consomme.id_enfant
    and
    vueproduit.id_produit = consomme.id_produit
    group by  enfant.id_enfant,personne.prenompersonne,personne.nompersonne
;
--------------------------------------------------------
--  DDL for View VUESOLDE
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "VUESOLDE" ("ID_ENFANT", "PRENOMPERSONNE", "NOMPERSONNE", "SOLDE") AS 
  (SELECT 
    vueprixtotal.id_enfant,vueprixtotal.prenompersonne,vueprixtotal.nompersonne,montant-total as solde
    

FROM 
    vueprixtotal,vuecalculm
    where
    vueprixtotal.id_enfant = vuecalculm.id_enfant)
union
(select "ID_ENFANT","NOMPERSONNE","PRENOMPERSONNE","MONTANT" from vuecalculm where id_enfant not in(select id_enfant from vueprixtotal))
;
