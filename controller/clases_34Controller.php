<?php 
//ActividadDesarrollar
require_once 'model/clases_34.php';
class clases_34Controller
{
	private $clases_34;
	function __construct()
	{
		$this->clases_34 = new clases_34();
	}
	public function index()
	{
		require_once 'view/clases_34/index.php';
	}
	public function agregar()
	{
		
		if ($_POST) {
			$this->clases_34->setAtributo('PU34IDCLAS',$_POST['PU34IDCLAS']);//afalta esto
			$this->clases_34->setAtributo('PU34DESCLA',$_POST['PU34DESCLA']);
			$this->clases_34->guardar();
			header('location:?c=clases_34&m=index');
		}
		else{
			require_once 'view/clases_34/agregar.php';
		}
	}
	public function editar()
	{
		if ($_POST) {
			$this->clases_34->setAtributo('PU34IDCLAS',$_POST['PU34IDCLAS']);
			$this->clases_34->setAtributo('PU34DESCLA',$_POST['PU34DESCLA']);
			$this->clases_34->actualizar();
			header('location:?c=clases_34&m=index');
		}
		else{
			$this->clases_34 = $this->clases_34->buscar($_REQUEST['id']);
			require_once 'view/clases_34/editar.php';
		}
	}

	public function eliminar()
	{
		$this->clases_34->setAtributo('PU34IDCLAS',$_REQUEST['id']);
		$this->clases_34->eliminar();
		header('location:?c=clases_34&m=index');
	}

	public function ver()
	{
		$this->clases_34 = $this->clases_34->buscar($_REQUEST['id']);
		require_once 'view/clases_34/ver.php';
	}
}
?>