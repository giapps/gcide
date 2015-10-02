<?php

/**
 * Routes
 * @copyright Copyright (c) 2011 - 2014 Aleksandr Torosh (http://wezoom.com.ua)
 * @author Aleksandr Torosh <webtorua@gmail.com>
 */

namespace Dictionary;

class Routes
{

    public function init($router)
    {
        $router->addML('/word/lookup', array(
            'module' => 'dictionary',
            'controller' => 'word',
            'action' => 'lookup',
        ), 'lookup');

        return $router;

    }

}