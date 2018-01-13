<?php

namespace GeroWebSite\GeroBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class CategorieController extends Controller
{
    public function CategorieNavAction(){
        $em = $this->getDoctrine()->getManager();
        $categories = $em->getRepository('GeroBundle:Categorie')->findAll();

        return $this->render('GeroBundle:Default:categories/ModuleUsed/categorieNav.html.twig', array('categories' => $categories));
    }
}
