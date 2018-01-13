<?php

namespace Gero\GeroBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class PanierController extends Controller
{
    public function indexAction()
    {
        return $this->render('GeroBundle:Default:index.html.twig');
    }
}
