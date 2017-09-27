<?php 
//ActividadDesarrollar
require_once 'model/samara_28.php';
class samara_28Controller
{
	private $samara_28;
	function __construct()
	{
		$this->samara_28 = new samara_28();
	}
	public function index()
	{
		require_once 'view/samara_28/index.php';
	}
	public function agregar()
	{
		
		if ($_POST) {
			$this->samara_28->setAtributo('PU28IDUBIC',$_POST['PU28IDUBIC']);//afalta esto
			$this->samara_28->setAtributo('PU28DSCUBIC',$_POST['PU28DSCUBIC']);
			$this->samara_28->guardar();
			header('location:?c=samara_28&m=index');
		}
		else{
			require_once 'view/samara_28/agregar.php';
		}
	}
	public function editar()
	{
		if ($_POST) {
			$this->samara_28->setAtributo('PU28IDUBIC',$_POST['PU28IDUBIC']);
			$this->samara_28->setAtributo('PU28DSCUBIC',$_POST['PU28DSCUBIC']);
			$this->samara_28->actualizar();
			header('location:?c=samara_28&m=index');
		}
		else{
			$this->samara_28 = $this->samara_28->buscar($_REQUEST['id']);
			require_once 'view/samara_28/editar.php';
		}
	}

	public function eliminar()
	{
		$this->samara_28->setAtributo('PU28IDUBIC',$_REQUEST['id']);
		$this->samara_28->eliminar();
		header('location:?c=samara_28&m=index');
	}

	public function ver()
	{
		$this->samara_28 = $this->samara_28->buscar($_REQUEST['id']);
		require_once 'view/samara_28/ver.php';
	}
}
?>