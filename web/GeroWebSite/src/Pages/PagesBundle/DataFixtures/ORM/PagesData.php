<?php
/**
 * Created by PhpStorm.
 * User: Othmane
 * Date: 10/10/2017
 * Time: 23:07
 */

namespace Ecommerce\EcommerceBundle\DataFixtures\ORM;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;
use Pages\PagesBundle\Entity\Pages;

class PagesData extends Fixture
{
    public function load(ObjectManager $manager)
    {
        $page1 = new Pages();
        $page1->setTitre('A Propos');
        $page1->setContenu("<div class=\"container\">
        <div class=\"row\">
            <h4>Notre concept</h4>
            <p>L’association APERO (Association des Parents de l’Ecole de Rugby d’Orsay) distribue des goûters
                aux élèves de l’école de Rugby d’Orsay deux fois par semaine après leurs entraînements.
                La gestion de ces goûters se faisant manuellement, cette dernière reste très compliquée.
                Afin de remplacer l’ancien système manuel nous avons créé l’application GERO (Goûter pour l’Ecole
                de Rugby d’Orsay).
            </p>

            <p>    GERO est le premier site français qui permet aux utilisateurs de faciliter la distribution et la gestion
                de gouters de l’école de rugby d’Orsay.
            </p>

           <p> Grâce à une implémentation rigoureuse GERO est efficace, simple et rapide à utiliser. Elle est
               destinée aux parents bénévoles ainsi qu’au président de l’application.
           </p>

        </div>
    </div>
    <hr>  
        </div>
    </div>
    <hr>
    <div class=\"container\">
        <div class=\"row\">
            <h4>Notre concept</h4>
            <p>
                Notre histoire
                Fondé en 2017, GERO est le fruit d’un grand travail d’équipe composé de trois camarades issues de
                l’IUT d’Orsay. Les membres de ce trio commencent donc à écrire leurs propre histoire avec le site
                web GERO.
            </p>
        </div>
    </div>
");

        $manager->persist($page1);

        $page2 = new Pages();
        $page2->setTitre('Contact');
        $page2->setContenu(" <div class=\"container\">
        <div class=\"row\">
            <h4>Rejoignez-nous sur les réseaux sociaux</h4>


            <p>Pour vous tenir au courant des toutes dernières actualités de notre site GeRo, rejoignez-nous sur les réseaux sociaux :
            </p>

        </div>
    </div>
    <hr>
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"span2\">
                <h4>Nos réseaux sociaux</h4><br>
            </div>

            <div class=\"span3\">
                <a  href=\"https://www.instagram.com/gerogouter/\">
                    Instagram
                </a>
            </div>

            <div class=\"span3\">
                <a href=\"https://www.facebook.com/GEROgouter\">
                   Facebook

                </a>
         

            </div>
            <div class=\"span3\">
                <a href=\"https://www.pinterest.fr/gerogouter/\">
                   Pinterest
                </a>
              
            </div>
        </div>
    </div>");
        $manager->persist($page2);

        $manager->flush();

        $this->addReference('page1',$page1);
        $this->addReference('page2',$page2);
    }

    public  function getOrder(){
        return 8;
    }
}
?>