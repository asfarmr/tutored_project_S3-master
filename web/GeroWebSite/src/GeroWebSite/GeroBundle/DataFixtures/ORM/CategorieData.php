<?php
/**
 * Created by PhpStorm.
 * User: Othmane
 * Date: 26/12/2017
 * Time: 18:43
 */
namespace GeroWebSite\GeroBundle\DataFixtures\ORM;

use GeroWebSite\GeroBundle\Entity\Categorie;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;

class CategorieData extends Fixture
{
    public function load(ObjectManager $manager)
    {
        $categorie1 = new Categorie();
        $categorie1->setNomCategorie('Sucrerie');
        $categorie1->setImage($this->getReference('media1'));
        $manager->persist($categorie1);



        $categorie2= new Categorie();
        $categorie2->setNomCategorie('Boisson froide');
        $categorie2->setImage($this->getReference('media2'));
        $manager->persist($categorie2);

        $categorie3= new Categorie();
        $categorie3->setNomCategorie('Boisson chaude');
        $categorie3->setImage($this->getReference('media3'));
        $manager->persist($categorie3);

        $categorie4= new Categorie();
        $categorie4->setNomCategorie('Gateaux');
        $categorie4->setImage($this->getReference('media9'));
        $manager->persist($categorie4);


        $manager->flush();
        $this->addReference('categorie1',$categorie1);
        $this->addReference('categorie2',$categorie2);
        $this->addReference('categorie3',$categorie3);
         $this->addReference('categorie4',$categorie4);


    }

    public function getDependencies()
    {
        return array(
            MediaData::class,
        );
    }

    public  function getOrder(){
        return 2;
    }
}
?>