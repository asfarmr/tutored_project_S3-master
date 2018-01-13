<?php
/**
 * Created by PhpStorm.
 * User: Othmane
 * Date: 10/10/2017
 * Time: 23:07
 */

namespace Utilisateurs\UtilisateursBundle\DataFixures\ORM;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;
use Utilisateurs\UtilisateursBundle\Entity\Utilisateurs;
use Doctrine\Common\DataFixtures\FixtureInterface;

class UtilisateursData extends Fixture implements FixtureInterface
{
    public function load(ObjectManager $manager)
    {
        $user1 = new Utilisateurs();
        $user1->setUsername('othmane');
        $user1->setEmail('otayadi@gmail.com');
        $user1->setSolde(30.2);
        $user1->setValider('1');
        $user1->setEnabled('1');
        $user1->setRoles(array('ROLE_BENEVOLE'));
        $encoder = $this->container->get('security.password_encoder');
        $password = $encoder->encodePassword($user1,'1234');
        $user1->setPassword($password);
        $manager->persist($user1);


        $user2 = new Utilisateurs();
        $user2->setUsername('client');
        $user2->setEmail('client@gmail.com');
        $user2->setSolde(25.3);
        $user2->setValider('1');
        $user2->setEnabled('1');
        $encoder = $this->container->get('security.password_encoder');
        $password = $encoder->encodePassword($user2,'client');
        $user2->setPassword($password);
        $manager->persist($user2);


        $user3 = new Utilisateurs();
        $user3->setUsername('pauline');
        $user3->setEmail('pauline@gmail.com');
        $user3->setValider('1');
        $user3->setSolde(28.9);
        $user3->setEnabled(1);
        $user3->setPassword($this->container->get('security.encoder_factory')->getEncoder($user3)->encodePassword('pauline', $user3->getSalt()));
        $manager->persist($user3);

        $user4 = new Utilisateurs();
        $user4->setUsername('tiffany');
        $user4->setEmail('tiffany@gmail.com');
        $user4->setValider('1');
        $user4->setSolde(23);
        $user4->setEnabled(1);
        $user4->setPassword($this->container->get('security.encoder_factory')->getEncoder($user4)->encodePassword('tiffany', $user4->getSalt()));
        $manager->persist($user4);

        $user5 = new Utilisateurs();
        $user5->setUsername('dominique');
        $user5->setEmail('dominique@gmail.com');
        $user5->setValider('1');
        $user5->setSolde(4);
        $user5->setEnabled(1);
        $user5->setPassword($this->container->get('security.encoder_factory')->getEncoder($user5)->encodePassword('dominique', $user5->getSalt()));
        $manager->persist($user5);

        $user6 = new Utilisateurs();
        $user6->setUsername('root');
        $user6->setEmail('root@gmail.com');
        $user6->setSolde(10000);
        $user6->setValider('1');
        $user6->setEnabled('1');
        $user6->setRoles(array('ROLE_ADMIN'));
        $encoder = $this->container->get('security.password_encoder');
        $password = $encoder->encodePassword($user6,'root');
        $user6->setPassword($password);
        $manager->persist($user6);




        $manager->flush();

        $this->addReference('user1',$user1);
        $this->addReference('user2',$user2);
        $this->addReference('user3',$user3);
        $this->addReference('user4',$user4);
        $this->addReference('user5',$user5);
        $this->addReference('user6',$user6);


    }


    public  function getOrder(){
        return 3;
    }
}
?>