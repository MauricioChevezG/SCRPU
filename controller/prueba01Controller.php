<?php 
require_once 'model/PU04INSPECCION.php';
require_once 'model/class04editactdes.php';
class prueba01Controller
{
	
	public function index()
	{
		require_once 'view/header.php';
		require_once 'view/class01prueba/formularios.php';
		require_once 'view/footer.php';
	}
	
	function __construct()
	{
		$this->pu04inspeccion= new PU04INSPECCION();
		$this->class04editactdes= new class04editactdes();
	}
	
	public function editarActividades()
	{
		
			$this->pu04inspeccion = $this->pu04inspeccion->buscar($_REQUEST['id']);
			$this->class04editactdes= $this->class04editactdes->buscar($_REQUEST['id']);
			require_once 'view/header.php';
			require_once 'view/class01prueba/formularios.php';
			require_once 'view/footer.php';
	}
}
?>