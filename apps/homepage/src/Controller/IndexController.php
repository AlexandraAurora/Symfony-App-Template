<?php
declare(strict_types = 1);

namespace App\Homepage\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;

class IndexController extends AbstractController {
    public function index(): Response {
        return $this->render('@Homepage/index/index.html.twig');
    }
}
