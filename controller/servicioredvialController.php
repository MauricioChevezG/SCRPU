<?php 
//`pu16servae`servicioredvial
//`PU22IDREDVI`
//`PU22DESSVI`
require_once 'model/servicioredvial.php';
class servicioredvialController
{
	private $servicioredvial;
	function __construct()
	{
		$this->servicioredvial = new servicioredvial();
	}
	public function index()
	{
		require_once 'view/servicioredvial/index.php';
	}
	public function agregar()
	{
		
		if ($_POST) {
			$this->servicioredvial->setAtributo('PU22IDREDVI',$_POST['PU22IDREDVI']);//afalta esto
			$this->servicioredvial->setAtributo('PU22DESSVI',$_POST['PU22DESSVI']);
			$this->servicioredvial->setAtributo('PU22OBSERV',$_POST['PU22OBSERV']);
			$this->servicioredvial->guardar();
			header('location:?c=servicioredvial&m=index');
		}
		else{
			require_once 'view/servicioredvial/agregar.php';
		}
	}
	public function editar()
	{
		if ($_POST) {
			$this->servicioredvial->setAtributo('PU22IDREDVI',$_POST['PU22IDREDVI']);
			$this->servicioredvial->setAtributo('PU22DESSVI',$_POST['PU22DESSVI']);
			$this->servicioredvial->setAtributo('PU22OBSERV',$_POST['PU22OBSERV']);
			$this->servicioredvial->actualizar();
			header('location:?c=servicioredvial&m=index');
		}
		else{
			$this->servicioredvial = $this->servicioredvial->buscar($_REQUEST['id']);
			require_once 'view/servicioredvial/editar.php';
		}
	}

	public function eliminar()
	{
		$this->servicioredvial->setAtributo('PU22IDREDVI',$_REQUEST['id']);
		$this->servicioredvial->eliminar();
		header('location:?c=servicioredvial&m=index');
	}

	public function ver()
	{
		$this->servicioredvial = $this->servicioredvial->buscar($_REQUEST['id']);
		require_once 'view/servicioredvial/ver.php';
	}
}
?>