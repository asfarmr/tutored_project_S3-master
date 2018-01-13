<?php
/**
 * Created by PhpStorm.
 * User: Othmane
 * Date: 26/12/2017
 * Time: 18:42
 */
namespace GeroWebSite\GeroBundle\DataFixtures\ORM;

use GeroWebSite\GeroBundle\Entity\Media;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;

class MediaData extends Fixture
{
    public function load(ObjectManager $manager)
    {
        $media1 = new Media();
        $media1->setPath('http://cdn3-elle.ladmedia.fr/var/plain_site/storage/images/minceur/dossiers-minceur/combien-de-calories-dans-les-aliments/combien-de-calories-dans-un-pain-au-chocolat/52170208-1-fre-FR/Combien-de-calories-dans-un-pain-au-chocolat.jpg');
        $media1->setAlt('Pain au chocolat');
        $manager->persist($media1);

        $media2 = new Media();
        $media2->setPath('https://debauve-et-gallais.fr/wp-content/uploads/2017/02/img_3299-1000x1000.jpg');
        $media2->setAlt('tablette de chocolat');
        $manager->persist($media2);

        $media3 = new Media();
        $media3->setPath('https://4.bp.blogspot.com/-fCll3M2qrgM/V_LEkuJJJMI/AAAAAAAAm-I/a-5fboqTvBgfGTwN5BKiiD9SMpNWmpyNwCLcB/s1600/IMG_3473.JPG');
        $media3->setAlt('baguette');
        $manager->persist($media3);

        $media4 = new Media();
        $media4->setPath('http://static.cuisineaz.com/610x610/i96056-chocolat-chaud-au-praline.jpg');
        $media4->setAlt('Chocolat Chaud');
        $manager->persist($media4);


        $media5 = new Media();
        $media5->setPath('https://cac.img.pmdstatic.net/fit/http.3A.2F.2Fwww.2Ecuisineactuelle.2Efr.2Fvar.2Fcui.2Fstorage.2Fimages.2Frecettes-de-cuisine.2Fdessert.2Fcookies.2Fcookies-moelleux-americain-196150.2F1389352-2-fre-FR.2Fcookies-moelleux-americains.2Ejpg/326x326/quality/80/crop-from/center/cookies-moelleux-americains.jpeg');
        $media5->setAlt('Cookies');
        $manager->persist($media5);


        $media6 = new Media();
        $media6->setPath('http://www.magimix.com/files/rec_22440/cf_204318589juice_expert_extracteur_de_jus_jus_orange_magimix.jpg');
        $media6->setAlt('Jus d\'orange');
        $manager->persist($media6);


        $media7 = new Media();
        $media7->setPath('http://cdn-image.myrecipes.com/sites/default/files/styles/4_3_horizontal_-_1200x900/public/image/recipes/ck/11/05/chocolate-chip-muffins-ck-x.jpg?itok=0Blce2s2');
        $media7->setAlt('Muffin');
        $manager->persist($media7);


        $media8 = new Media();
        $media8->setPath('https://www.bdgplus.com/wp-content/uploads/2012/01/Pain-au-lait.png');
        $media8->setAlt('Pain au lait');
        $manager->persist($media8);

        $media9 = new Media();
        $media9->setPath('https://www.browneyedbaker.com/wp-content/uploads/2010/10/baked-brownie-22-600.jpg');
        $media9->setAlt('Brownie');
        $manager->persist($media9);

        $media10 = new Media();
        $media10->setPath('https://recettes.de/images/blogs/entre-epices-et-macarons/tarte-aux-daims-et-au-snickers-facon-almondy.640x480.jpg');
        $media10->setAlt('Tarte au Daims');
        $manager->persist($media10);

        $media11 = new Media();
        $media11->setPath('https://www.grazia.fr/var/grazia/storage/images/cuisine/recettes/tarte-amandine-muroise-et-framboises/10372626-1-fre-FR/Tarte-amandine-Muroise-et-framboises.jpg');
        $media11->setAlt('Tarte au framboise');
        $manager->persist($media11);


        $manager->flush();

        $this->addReference('media1',$media1);
        $this->addReference('media2',$media2);
        $this->addReference('media3',$media3);
        $this->addReference('media4',$media4);
        $this->addReference('media5',$media5);
        $this->addReference('media6',$media6);
        $this->addReference('media7',$media7);
        $this->addReference('media8',$media8);
        $this->addReference('media9',$media9);
        $this->addReference('media10',$media10);
        $this->addReference('media11',$media11);

    }

    public  function getOrder(){
        return 1;
    }
}