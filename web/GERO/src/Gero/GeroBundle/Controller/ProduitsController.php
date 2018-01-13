<?php

namespace Gero\GeroBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class ProduitsController extends Controller
{
    public function produitAction()
    {
        return $this->render('GeroBundle:Default:produits/layout/produit.html.twig');
    }
    public function presentationAction()
    {
        return $this->render('GeroBundle:Default:produits/presentation.html.twig');
    }
}
