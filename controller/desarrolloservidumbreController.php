<?php 
require_once 'model/desarrolloservidumbre.php';
class desarrolloservidumbreController
{
	private $desarrolloservidumbre;
	function __construct()
	{
		$this->desarrolloservidumbre = new desarrolloservidumbre();
	}
	public function index()
	{
		require_once 'view/desarrolloservidumbre/index.php';
	}
	public function agregar()
	{
		
		if ($_POST) {
			$this->desarrolloservidumbre->setAtributo('PU20IDDESAS',$_POST['PU20IDDESAS']);//afalta esto
			$this->desarrolloservidumbre->setAtributo('PU20DESCS',$_POST['PU20DESCS']);
			$this->desarrolloservidumbre->guardar();
			header('location:?c=desarrolloservidumbre&m=index');
		}
		else{
			require_once 'view/desarrolloservidumbre/agregar.php';
		}
	}
	public function editar()
	{
		if ($_POST) {
			$this->desarrolloservidumbre->setAtributo('PU20IDDESAS',$_POST['PU20IDDESAS']);
			$this->desarrolloservidumbre->setAtributo('PU20DESCS',$_POST['PU20DESCS']);
			$this->desarrolloservidumbre->actualizar();
			header('location:?c=desarrolloservidumbre&m=index');
		}
		else{
			$this->desarrolloservidumbre = $this->desarrolloservidumbre->buscar($_REQUEST['id']);
			require_once 'view/desarrolloservidumbre/editar.php';
		}
	}

	public function eliminar()
	{
		$this->desarrolloservidumbre->setAtributo('PU20IDDESAS',$_REQUEST['id']);
		$this->desarrolloservidumbre->eliminar();
		header('location:?c=desarrolloservidumbre&m=index');
	}

	public function ver()
	{
		$this->desarrolloservidumbre = $this->desarrolloservidumbre->buscar($_REQUEST['id']);
		require_once 'view/desarrolloservidumbre/ver.php';
	}
}
 ?>