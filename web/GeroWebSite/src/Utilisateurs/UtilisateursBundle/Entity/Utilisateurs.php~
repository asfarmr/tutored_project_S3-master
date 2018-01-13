<?php
/**
 * Created by PhpStorm.
 * User: Othmane
 * Date: 08/12/2017
 * Time: 15:38
 */

namespace Utilisateurs\UtilisateursBundle\Entity;

use FOS\UserBundle\Model\User as BaseUser;
use Doctrine\ORM\Mapping as ORM;


/**
 * @ORM\Entity
 * @ORM\Table(name="utilisateur")
 */
class Utilisateurs extends BaseUser
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    public function __construct()
    {
        parent::__construct();
        $this->setEnabled(0);
        $this->valider = false;
        $this->setSolde(0);
    }

    /**
     * @var float
     *
     * @ORM\Column(name="solde", type="float",nullable=false, options={"default":0})
     */
    private $solde;

    /**
     * @var bool
     *
     * @ORM\Column(name="valider", type="boolean",nullable=false, options={"default":false})
     */
    private $valider;
    
    /**
     * Set valider
     *
     * @param boolean $valider
     *
     * @return Utilisateurs
     */
    public function setValider($valider)
    {
        $this->valider = $valider;

        return $this;
    }

    /**
     * Get valider
     *
     * @return boolean
     */
    public function getValider()
    {
        return $this->valider;
    }

    /**
     * Set solde
     *
     * @param float $solde
     *
     * @return Utilisateurs
     */
    public function setSolde($solde)
    {
        $this->solde = $solde;

        return $this;
    }

    /**
     * Get solde
     *
     * @return float
     */
    public function getSolde()
    {
        return $this->solde;
    }
}
