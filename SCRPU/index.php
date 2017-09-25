<?php

$controller = 'clientes';

// Todo esta lógica hara el papel de un FrontController
if(!isset($_REQUEST['c']))
{
    require_once "controller/".$controller."controller.php";
    $controller = ucwords($controller) . 'Controller';
    $controller = new $controller;
    $controller->Index();    
}
else
{
    // Obtenemos el controlador que queremos cargar
    $controller = strtolower($_REQUEST['c']);
    $metodo = isset($_REQUEST['m']) ? $_REQUEST['m'] : 'Index';
    
    // Instanciamos el controlador
    require_once "controller/".$controller."controller.php";
    $controller = ucwords($controller) . 'Controller';
    $controller = new $controller;
    
    // ejecuta la accion del contralador
    call_user_func( array( $controller, $metodo ) );
}
