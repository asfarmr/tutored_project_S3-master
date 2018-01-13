<?php

namespace GeroWebSite\GeroBundle\Controller;

use Doctrine\DBAL\Types\FloatType;
use GeroWebSite\GeroBundle\Entity\Categorie;
use GeroWebSite\GeroBundle\Entity\UtilisateursSolde;
use GeroWebSite\GeroBundle\Form\SoldeType;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Validator\Constraints\Range;
use Utilisateurs\UtilisateursBundle\Entity\Utilisateurs;

class UtilisateursSoldeController extends Controller
{
    public function soldeAction(Request $request)
    {

        $form = $this->createFormBuilder()
            ->add('solde',IntegerType::class)
            ->add('valider', SubmitType::class)
            ->getForm();
        $form->handleRequest($request);
        $utilisateur = $this->container->get('security.token_storage')->getToken()->getUser();


        if($form->isSubmitted() && $form->isValid()){
            $solde = $form['solde']->getData();
            $solde = intval($solde);
            $em = $this->getDoctrine()->getManager();
            $utilisateur -> setSolde($utilisateur->getSolde() + $solde);
            $em->persist($utilisateur);
            $em->flush();
            $this->get('session')->getFlashBag()->add('success','Solde modifié avec succès');

//            return $this->redirect($this->generateUrl('Produit'));
        }
        return $this->render('GeroBundle:Default:solde/Layout/ajoutSolde.html.twig',array('form' => $form->createView()));
    }


    public function SoldeTraitementAction(Request $request){

        return $this->render('GeroBundle:Default:solde/Layout/ajoutSolde.html.twig');


    }


}
