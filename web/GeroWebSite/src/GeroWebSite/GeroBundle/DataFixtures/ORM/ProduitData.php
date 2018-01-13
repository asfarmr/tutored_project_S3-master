<?php
/**
 * Created by PhpStorm.
 * User: Othmane
 * Date: 26/12/2017
 * Time: 18:51
 */


namespace GeroWebSite\GeroBundle\DataFixtures\ORM;

use GeroWebSite\GeroBundle\Entity\Produit;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;

class ProduitData extends Fixture
{
    public function load(ObjectManager $manager)
    {
        $produit1 = new Produit();
        $produit1 ->setNom('pain au chocolat');
        $produit1 ->setDescription('pain avec du chocolat');
        $produit1 ->setDisponible('1');
        $produit1->setPrixUnitaire('4.5');
        $produit1 ->setCategorie($this->getReference('categorie1'));
        $produit1 ->setImage($this->getReference('media1'));
        $produit1->setStock(30);

        $manager->persist($produit1);


        $produit2 = new Produit();
        $produit2 ->setNom('pain au lait');
        $produit2 ->setDescription('pain avec du lait');
        $produit2 ->setDisponible('1');
        $produit2->setPrixUnitaire('3.5');
        $produit2 ->setCategorie($this->getReference('categorie1'));
        $produit2 ->setImage($this->getReference('media2'));
        $produit2->setStock(30);
        $manager->persist($produit2);


        $produit3 = new Produit();
        $produit3 ->setNom('Jus d\'orange');
        $produit3 ->setDescription('Hummm le jus d\'orange');
        $produit3 ->setDisponible('1');
        $produit3->setPrixUnitaire('2');
        $produit3 ->setCategorie($this->getReference('categorie2'));
        $produit3 ->setImage($this->getReference('media3'));
        $produit3->setStock(30);
        $manager->persist($produit3);


        $produit4 = new Produit();
        $produit4 ->setNom('Bownie');
        $produit4 ->setDescription('Hummm le brownie');
        $produit4 ->setDisponible('1');
        $produit4->setPrixUnitaire('1.5');
        $produit4 ->setCategorie($this->getReference('categorie4'));
        $produit4 ->setImage($this->getReference('media9'));
        $produit4->setStock(30);
        $manager->persist($produit4);


        $produit5 = new Produit();
        $produit5 ->setNom('tarte au framboise');
        $produit5 ->setDescription('Hummm les tartes au framboises');
        $produit5 ->setDisponible('1');
        $produit5->setPrixUnitaire('4.5');
        $produit5 ->setCategorie($this->getReference('categorie4'));
        $produit5 ->setImage($this->getReference('media11'));
        $produit5->setStock(30);
        $manager->persist($produit5);


        $produit6 = new Produit();
        $produit6 ->setNom('Jus d\'orange');
        $produit6 ->setDescription('Hummm le pain au lait');
        $produit6 ->setDisponible('1');
        $produit6->setPrixUnitaire('3');
        $produit6 ->setCategorie($this->getReference('categorie4'));
        $produit6 ->setImage($this->getReference('media8'));
        $produit6->setStock(30);
        $manager->persist($produit6);


        $manager->flush();

        $this->addReference('produit1',$produit1);
        $this->addReference('produit2',$produit2);
        $this->addReference('produit3',$produit3);
        $this->addReference('produit4',$produit4);
        $this->addReference('produit5',$produit5);
        $this->addReference('produit6',$produit6);
    }

    public function getDependencies()
    {
        return array(
            CategorieData::class,
            MediaData::class,
        );
    }

    public  function getOrder(){
        return 5;
    }
}