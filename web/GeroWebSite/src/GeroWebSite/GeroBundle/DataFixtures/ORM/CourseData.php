<?php
/**
 * Created by PhpStorm.
 * User: Othmane
 * Date: 26/12/2017
 * Time: 18:54
 */
namespace GeroWebSite\GeroBundle\DataFixtures\ORM;

use GeroWebSite\GeroBundle\Entity\Course;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;
use Utilisateurs\UtilisateursBundle\DataFixures\ORM\UtilisateursData;

class CourseData extends Fixture
{
    public function load(ObjectManager $manager)
    {
        $course1 = new Course();
        $course1->setProduit($this->getReference('produit1'));
        $course1->setUtilisateur($this->getReference('user3'));
        $course1->setDateCourse(new \DateTime('01/02/2018'));
        $course1->setMontantCourse('100');

        $manager->persist($course1);

        $course2 = new Course();
        $course2->setProduit($this->getReference('produit1'));
        $course2->setUtilisateur($this->getReference('user2'));
        $course2->setDateCourse(new \DateTime('01/03/2018'));
        $course2->setMontantCourse('10');

        $manager->persist($course2);

        $course3 = new Course();
        $course3->setProduit($this->getReference('produit2'));
        $course3->setUtilisateur($this->getReference('user1'));
        $course3->setDateCourse(new \DateTime());
        $course3->setMontantCourse('33');

        $manager->persist($course3);

        $manager->flush();

        $this->addReference('course1',$course1);
        $this->addReference('course2',$course2);
        $this->addReference('course3',$course3);

    }
    public function getDependencies()
    {
        return array(
            ProduitData::class,
            UtilisateursData::class,
        );
    }

    public  function getOrder(){
        return 6;
    }
}