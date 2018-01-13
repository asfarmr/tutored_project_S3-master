<?php

namespace GeroWebSite\GeroBundle\Controller;

use GeroWebSite\GeroBundle\Entity\Categorie;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

class ProduitsController extends Controller
{
    public function homeAction()
    {
        $em = $this->getDoctrine()->getManager();
        $produits = $em->getRepository('GeroBundle:Produit')->findAll();

        return $this->render('GeroBundle:Default:produits/layout/home.html.twig', array('produits' => $produits));
    }

    public function categorieAction($categorie){
             $em = $this->getDoctrine()->getManager();
            $produits = $em->getRepository('GeroBundle:Produit')->byCategorie($categorie);

        return $this->render('GeroBundle:Default:produits/layout/produits.html.twig', array('produits' => $produits));
    }
    public function ProduitAction(){

        $em = $this->getDoctrine()->getManager();
        $produits = $em->getRepository('GeroBundle:Produit')->findAll();


        return $this->render('GeroBundle:Default:produits/layout/produits.html.twig', array('produits' => $produits));
    }

    public function presentationAction($id){
        $em = $this->getDoctrine()->getManager();
        $produit = $em->getRepository('GeroBundle:Produit')->find($id);

        if(!$produit) throw $this->createNotFoundException('La page n\'existe pas');

        return $this->render('GeroBundle:Default:Produits/Layout/presentation.html.twig',  array('produit' => $produit));
    }

    public function rechercheAction(){
        $form = $this->createFormBuilder()->add('recherche')->getForm();
        return $this->render('GeroBundle:Default:Recherche/ModuleUsed/recherche.html.twig', array('form' => $form->createView()));
    }

    public function RechercherTraitementAction(Request $request){

        $form = $this->createFormBuilder()
            ->add('recherche')
            ->getForm();
        $request = $this->get('request_stack')->getCurrentRequest();
        $form->handleRequest($request);


        if ($form->isSubmitted() && $form->isValid())
        {
            $em = $this->getDoctrine()->getManager();
            $produits = $em->getRepository('GeroBundle:Produit')->recherche($form['recherche']->getData());
        } else {
            throw $this->createNotFoundException('La page n\'existe pas.');
        }

        return $this->render('GeroBundle:Default:produits/layout/produits.html.twig', array('produits' => $produits));

    }
}
