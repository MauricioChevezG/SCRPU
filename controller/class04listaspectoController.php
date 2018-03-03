<?php 
require_once 'model/class04listaspecto.php';
class class04listaspectoController
{
	private $class04listaspecto;
	function __construct()
	{
		$this->class04listaspecto = new class04listaspecto();
	}

	public function listar(){
		require_once 'view/class04listaspecto/agregar.php';
	}
}
?>