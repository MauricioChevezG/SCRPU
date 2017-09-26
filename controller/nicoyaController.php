<?php 
//ActividadDesarrollar
require_once 'model/nicoya.php';
class nicoyaController
{
	private $nicoya;
	function __construct()
	{
		$this->nicoya = new nicoya();
	}
	public function index()
	{
		require_once 'view/nicoya/index.php';
	}
	public function agregar()
	{
		
		if ($_POST) {
			$this->nicoya->setAtributo('PU27IDUBIC',$_POST['PU27IDUBIC']);//afalta esto
			$this->nicoya->setAtributo('PU27DSCUBIC',$_POST['PU27DSCUBIC']);
			$this->nicoya->guardar();
			header('location:?c=nicoya&m=index');
		}
		else{
			require_once 'view/nicoya/agregar.php';
		}
	}
	public function editar()
	{
		if ($_POST) {
			$this->nicoya->setAtributo('PU27IDUBIC',$_POST['PU27IDUBIC']);
			$this->nicoya->setAtributo('PU27DSCUBIC',$_POST['PU27DSCUBIC']);
			$this->nicoya->actualizar();
			header('location:?c=nicoya&m=index');
		}
		else{
			$this->nicoya = $this->nicoya->buscar($_REQUEST['id']);
			require_once 'view/nicoya/editar.php';
		}
	}

	public function eliminar()
	{
		$this->nicoya->setAtributo('PU27IDUBIC',$_REQUEST['id']);
		$this->nicoya->eliminar();
		header('location:?c=nicoya&m=index');
	}

	public function ver()
	{
		$this->nicoya = $this->nicoya->buscar($_REQUEST['id']);
		require_once 'view/nicoya/ver.php';
	}
}
?>