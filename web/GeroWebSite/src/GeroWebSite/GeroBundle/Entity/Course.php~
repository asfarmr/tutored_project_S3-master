<?php

namespace GeroWebSite\GeroBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Course
 *
 * @ORM\Table(name="course")
 * @ORM\Entity(repositoryClass="GeroWebSite\GeroBundle\Repository\CourseRepository")
 */
class Course
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
     * @var float
     *
     * @ORM\Column(name="MontantCourse", type="float")
     */
    private $montantCourse;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="DateCourse", type="datetime")
     */
    private $dateCourse;

    /**
     * @ORM\OneToOne(targetEntity="Utilisateurs\UtilisateursBundle\Entity\Utilisateurs", cascade={"persist","remove"})
     * @ORM\JoinColumn(nullable=false)
     */
    private $utilisateur;

    /**
     * @ORM\ManyToOne(targetEntity="GeroWebSite\GeroBundle\Entity\Produit", cascade={"persist"})
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
     * Set montantCourse
     *
     * @param float $montantCourse
     *
     * @return Course
     */
    public function setMontantCourse($montantCourse)
    {
        $this->montantCourse = $montantCourse;

        return $this;
    }

    /**
     * Get montantCourse
     *
     * @return float
     */
    public function getMontantCourse()
    {
        return $this->montantCourse;
    }

    /**
     * Set dateCourse
     *
     * @param \DateTime $dateCourse
     *
     * @return Course
     */
    public function setDateCourse($dateCourse)
    {
        $this->dateCourse = $dateCourse;

        return $this;
    }

    /**
     * Get dateCourse
     *
     * @return \DateTime
     */
    public function getDateCourse()
    {
        return $this->dateCourse;
    }

    /**
     * Set utilisateur
     *
     * @param \Utilisateurs\UtilisateursBundle\Entity\Utilisateurs $utilisateur
     *
     * @return Course
     */
    public function setUtilisateur(\Utilisateurs\UtilisateursBundle\Entity\Utilisateurs $utilisateur)
    {
        $this->utilisateur = $utilisateur;

        return $this;
    }

    /**
     * Get utilisateur
     *
     * @return \Utilisateurs\UtilisateursBundle\Entity\Utilisateurs
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
     * @return Course
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
