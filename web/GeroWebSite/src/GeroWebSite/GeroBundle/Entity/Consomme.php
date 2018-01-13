<?php

namespace GeroWebSite\GeroBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Consomme
 *
 * @ORM\Table(name="consomme")
 * @ORM\Entity(repositoryClass="GeroWebSite\GeroBundle\Repository\ConsommeRepository")
 */
class Consomme
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;


    /**
     * @var \DateTime
     *
     * @ORM\Column(name="dateConso", type="datetime")
     */
    private $dateConso;

    /**
     * @var float
     *
     * @ORM\Column(name="qteConsommation", type="float")
     */
    private $qteConsommation;

    /**
     * @ORM\ManyToMany(targetEntity="Utilisateurs\UtilisateursBundle\Entity\Utilisateurs", cascade={"persist","remove"})
     * @ORM\JoinColumn(nullable=false)
     */
    private $utilisateur;

    /**
     * @ORM\ManyToOne(targetEntity="GeroWebSite\GeroBundle\Entity\Produit", cascade={"persist","remove"})
     * @ORM\JoinColumn(nullable=false)
     */
    private $produit;




    /**
     * Get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }


    /**
     * Set dateConso
     *
     * @param \DateTime $dateConso
     *
     * @return Consomme
     */
    public function setDateConso($dateConso)
    {
        $this->dateConso = $dateConso;

        return $this;
    }

    /**
     * Get dateConso
     *
     * @return \DateTime
     */
    public function getDateConso()
    {
        return $this->dateConso;
    }

    /**
     * Set qteConsommation
     *
     * @param float $qteConsommation
     *
     * @return Consomme
     */
    public function setQteConsommation($qteConsommation)
    {
        $this->qteConsommation = $qteConsommation;

        return $this;
    }

    /**
     * Get qteConsommation
     *
     * @return float
     */
    public function getQteConsommation()
    {
        return $this->qteConsommation;
    }
    /**
     * Constructor
     */
    public function __construct()
    {
        $this->utilisateur = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * Add utilisateur
     *
     * @param \Utilisateurs\UtilisateursBundle\Entity\Utilisateurs $utilisateur
     *
     * @return Consomme
     */
    public function addUtilisateur(\Utilisateurs\UtilisateursBundle\Entity\Utilisateurs $utilisateur)
    {
        $this->utilisateur[] = $utilisateur;

        return $this;
    }

    /**
     * Remove utilisateur
     *
     * @param \Utilisateurs\UtilisateursBundle\Entity\Utilisateurs $utilisateur
     */
    public function removeUtilisateur(\Utilisateurs\UtilisateursBundle\Entity\Utilisateurs $utilisateur)
    {
        $this->utilisateur->removeElement($utilisateur);
    }

    /**
     * Get utilisateur
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getUtilisateur()
    {
        return $this->utilisateur;
    }

    /**
     * Set produit
     *
     * @param \GeroWebSite\GeroBundle\Entity\Produit $produit
     *
     * @return Consomme
     */
    public function setProduit(\GeroWebSite\GeroBundle\Entity\Produit $produit)
    {
        $this->produit = $produit;

        return $this;
    }

    /**
     * Get produit
     *
     * @return \GeroWebSite\GeroBundle\Entity\Produit
     */
    public function getProduit()
    {
        return $this->produit;
    }
}
