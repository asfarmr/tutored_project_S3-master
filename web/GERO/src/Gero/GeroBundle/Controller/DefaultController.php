<?php

namespace Gero\GeroBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction()
    {
        return $this->render('GeroBundle:Default:index.html.twig');
    }
}
