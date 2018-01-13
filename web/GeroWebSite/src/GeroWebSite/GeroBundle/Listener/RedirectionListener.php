<?php
/**
 * Created by PhpStorm.
 * User: Othmane
 * Date: 28/11/2017
 * Time: 21:14
 */
namespace GeroWebSite\GeroBundle\Listener;

use Symfony\Component\DependencyInjection\ContainerInterface;
use Symfony\Component\HttpFoundation\Session\Session;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\HttpKernel\Event\GetResponseEvent;


class RedirectionListener{
    public function __construct(ContainerInterface $container, Session $session)
    {
        $this->session = $session;
        $this -> router = $container->get('router');

        $this->securityContext = $container->get('security.token_storage');
    }

    public function onKernelRequest(GetResponseEvent $event){
        $route = $event->getRequest()->attributes->get('_route');

        if($route == 'validation' ){
            if($this->session->has('Panier')){
                if(count($this->session->get('Panier')) == 0 ){
                    $url = $this->router->generate('Panier');
                    $event->setResponse(new RedirectResponse($url));
                }
            }

            if(!is_object($this->securityContext->getToken()->getUser())){
                $this->session->getFlashBag()->add('notification','Vous devez vous identifier avant d\'acheter un gouter');
                $url = $this->router->generate('fos_user_security_login');
                $event->setResponse(new RedirectResponse($url));
            }
        }
    }
}