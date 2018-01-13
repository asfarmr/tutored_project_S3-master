<?php

namespace Pages\PagesBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class PagesController extends Controller
{
    public function menuAction(){
        $em = $this->getDoctrine()->getManager();
        $pages = $em->getRepository('PagesBundle:Pages')->findAll();

        return $this->render('PagesBundle:Default:ModulesUsed/menu.html.twig', array('pages' => $pages));
    }
    public function PagesAction($id)
    {
        $em = $this->getDoctrine()->getManager();
        $page = $em->getRepository('PagesBundle:Pages')->find($id);


        //test si la page n'existe pas pour ne pas etre vulnerable
        if(!$page) throw $this->createNotFoundException('La page n\'existe pas');
        return $this->render('PagesBundle:Default:Layout/page.html.twig', array('page' => $page));
    }
}
