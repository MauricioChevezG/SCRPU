<?php 
//ActividadDesarrollar
require_once 'model/actividad_desarrollar.php';
class actividad_desarrollarController
{
	private $actividad_desarrollar;
	function __construct()
	{
		$this->actividad_desarrollar = new actividad_desarrollar();
	}
	public function index()
	{
		require_once 'view/actividad_desarrollar/index.php';
	}
	public function agregar()
	{
		
		if ($_POST) {
			$this->actividad_desarrollar->setAtributo('PU06IDACTDES',$_POST['PU06IDACTDES']);//afalta esto
			$this->actividad_desarrollar->setAtributo('PU06DESAD',$_POST['PU06DESAD']);
			$this->actividad_desarrollar->guardar();
			header('location:?c=actividad_desarrollar&m=index');
		}
		else{
			require_once 'view/actividad_desarrollar/agregar.php';
		}
	}
	public function editar()
	{
		if ($_POST) {
			$this->actividad_desarrollar->setAtributo('PU06IDACTDES',$_POST['PU06IDACTDES']);
			$this->actividad_desarrollar->setAtributo('PU06DESAD',$_POST['PU06DESAD']);
			$this->actividad_desarrollar->actualizar();
			header('location:?c=actividad_desarrollar&m=index');
		}
		else{
			$this->actividad_desarrollar = $this->actividad_desarrollar->buscar($_REQUEST['id']);
			require_once 'view/actividad_desarrollar/editar.php';
		}
	}

	public function eliminar()
	{
		$this->actividad_desarrollar->setAtributo('PU06IDACTDES',$_REQUEST['id']);
		$this->actividad_desarrollar->eliminar();
		header('location:?c=actividad_desarrollar&m=index');
	}

	public function ver()
	{
		$this->actividad_desarrollar = $this->actividad_desarrollar->buscar($_REQUEST['id']);
		require_once 'view/actividad_desarrollar/ver.php';
	}
}
?>