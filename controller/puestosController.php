<?php 

require_once 'model/puestos.php';
class puestosController
{
	private $puestos;
	function __construct()
	{
		$this->puestos = new puestos();
	}
	public function index()
	{
		require_once 'view/puestos/index.php';
	}
	public function agregar()
	{
		if ($_POST) {
			$this->puestos->setAtributo('PU03IDPUES',$_POST['PU03IDPUES']);
			$this->puestos->setAtributo('PU03PUESTO',$_POST['PU03PUESTO']);
			$this->puestos->guardar();
			header('location:?c=puestos&m=index');
		}
		else{
			require_once 'view/puestos/agregar.php';
		}
	}
	public function editar()
	{
		if ($_POST) {
			$this->puestos->setAtributo('PU03IDPUES',$_POST['PU03IDPUES']);
			$this->puestos->setAtributo('PU03PUESTO',$_POST['PU03PUESTO']);
			$this->puestos->actualizar();
			header('location:?c=puestos&m=index');
		}
		else{
			$this->puestos = $this->puestos->buscar($_REQUEST['id']);
			require_once 'view/puestos/editar.php';
		}
	}

	public function eliminar()
	{
		$this->puestos->setAtributo('PU03IDPUES',$_REQUEST['id']);
		$this->puestos->eliminar();
		header('location:?c=puestos&m=index');
	}

	public function ver()
	{
		$this->puestos = $this->puestos->buscar($_REQUEST['id']);
		require_once 'view/puestos/ver.php';
	}
}
?>