<?php

namespace Dictionary;

class Module
{

    public function registerAutoloaders()
    {

    }

    public function registerServices($di)
    {
        $dispatcher = $di->get('dispatcher');
        $dispatcher->setDefaultNamespace('Dictionary\Controller');
        $di->set('dispatcher', $dispatcher);

    }

}