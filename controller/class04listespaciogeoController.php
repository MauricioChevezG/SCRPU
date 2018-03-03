<?php 
require_once 'model/class04listespaciogeo.php';
class class04listespaciogeoController
{
	private $class04listespaciogeo;
	function __construct()
	{
		$this->class04listespaciogeo = new class04listespaciogeo();
	}

	public function listar(){
		require_once 'view/class04listespaciogeo/agregar.php';
	}
}
?>