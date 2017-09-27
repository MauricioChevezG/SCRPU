<?php 
//`pu09desceg`
//`PU09IDDEG``PU09DESCREG`
require_once 'model/espacio_geografico.php';
class espacio_geograficoController
{
	private $espacio_geografico;
	function __construct()
	{
		$this->espacio_geografico = new espacio_geografico();
	}
	public function index()
	{
		require_once 'view/espacio_geografico/index.php';
	}
	public function agregar()
	{
		
		if ($_POST) {
			$this->espacio_geografico->setAtributo('PU09IDDEG',$_POST['PU09IDDEG']);//afalta esto
			$this->espacio_geografico->setAtributo('PU09DESCREG',$_POST['PU09DESCREG']);
			$this->espacio_geografico->guardar();
			header('location:?c=espacio_geografico&m=index');
		}
		else{
			require_once 'view/espacio_geografico/agregar.php';
		}
	}
	public function editar()
	{
		if ($_POST) {
			$this->espacio_geografico->setAtributo('PU09IDDEG',$_POST['PU09IDDEG']);
			$this->espacio_geografico->setAtributo('PU09DESCREG',$_POST['PU09DESCREG']);
			$this->espacio_geografico->actualizar();
			header('location:?c=espacio_geografico&m=index');
		}
		else{
			$this->espacio_geografico = $this->espacio_geografico->buscar($_REQUEST['id']);
			require_once 'view/espacio_geografico/editar.php';
		}
	}

	public function eliminar()
	{
		$this->espacio_geografico->setAtributo('PU09IDDEG',$_REQUEST['id']);
		$this->espacio_geografico->eliminar();
		header('location:?c=espacio_geografico&m=index');
	}

	public function ver()
	{
		$this->espacio_geografico = $this->espacio_geografico->buscar($_REQUEST['id']);
		require_once 'view/espacio_geografico/ver.php';
	}
}
?>