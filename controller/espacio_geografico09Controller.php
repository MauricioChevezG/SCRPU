<?php 
//`pu09desceg`
//`PU09IDDEG``PU09DESCREG`
require_once 'model/espacio_geografico09.php';
class espacio_geografico09Controller
{
	private $espacio_geografico09;
	function __construct()
	{
		$this->espacio_geografico09 = new espacio_geografico09();
	}
	public function index()
	{
		require_once 'view/espacio_geografico09/index.php';
	}
	public function agregar()
	{
		
		if ($_POST) {
			$this->espacio_geografico09->setAtributo('PU09IDDEG',$_POST['PU09IDDEG']);//afalta esto
			$this->espacio_geografico09->setAtributo('PU09DESCREG',$_POST['PU09DESCREG']);
			$this->espacio_geografico09->guardar();
			header('location:?c=espacio_geografico09&m=index');
		}
		else{
			require_once 'view/espacio_geografico09/agregar.php';
		}
	}
	public function editar()
	{
		if ($_POST) {
			$this->espacio_geografico09->setAtributo('PU09IDDEG',$_POST['PU09IDDEG']);
			$this->espacio_geografico09->setAtributo('PU09DESCREG',$_POST['PU09DESCREG']);
			$this->espacio_geografico09->actualizar();
			header('location:?c=espacio_geografico09&m=index');
		}
		else{
			$this->espacio_geografico09 = $this->espacio_geografico09->buscar($_REQUEST['id']);
			require_once 'view/espacio_geografico09/editar.php';
		}
	}

	public function eliminar()
	{
		$this->espacio_geografico09->setAtributo('PU09IDDEG',$_REQUEST['id']);
		$this->espacio_geografico09->eliminar();
		header('location:?c=espacio_geografico09&m=index');
	}

	public function ver()
	{
		$this->espacio_geografico09 = $this->espacio_geografico09->buscar($_REQUEST['id']);
		require_once 'view/espacio_geografico09/ver.php';
	}
}
?>