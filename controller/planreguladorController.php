<?php 
//ActividadDesarrollar
require_once 'model/planregulador.php';
class planreguladorController
{
	private $planregulador;
	function __construct()
	{
		$this->planregulador = new planregulador();
	}
	public function index()
	{
		require_once 'view/planregulador/index.php';
	}
	public function agregar()
	{
		
		if ($_POST) {
			$this->planregulador->setAtributo('PU26IDPLAN',$_POST['PU26IDPLAN']);//afalta esto
			$this->planregulador->setAtributo('PU26PLNDESC',$_POST['PU26PLNDESC']);
			$this->planregulador->guardar();
			header('location:?c=planregulador&m=index');
		}
		else{
			require_once 'view/planregulador/agregar.php';
		}
	}
	public function editar()
	{
		if ($_POST) {
			$this->planregulador->setAtributo('PU26IDPLAN',$_POST['PU26IDPLAN']);
			$this->planregulador->setAtributo('PU26PLNDESC',$_POST['PU26PLNDESC']);
			$this->planregulador->actualizar();
			header('location:?c=planregulador&m=index');
		}
		else{
			$this->planregulador = $this->planregulador->buscar($_REQUEST['id']);
			require_once 'view/planregulador/editar.php';
		}
	}

	public function eliminar()
	{
		$this->planregulador->setAtributo('PU26IDPLAN',$_REQUEST['id']);
		$this->planregulador->eliminar();
		header('location:?c=planregulador&m=index');
	}

	public function ver()
	{
		$this->planregulador = $this->planregulador->buscar($_REQUEST['id']);
		require_once 'view/planregulador/ver.php';
	}
}
?>