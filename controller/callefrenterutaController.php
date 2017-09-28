<?php 
require_once 'model/callefrenteruta.php';
class callefrenterutaController
{
	private $callefrenteruta;
	function __construct()
	{
		$this->callefrenteruta = new callefrenteruta();
	}
	public function index()
	{
		require_once 'view/callefrenteruta/index.php';
	}
	public function agregar()
	{
		
		if ($_POST) {
			$this->callefrenteruta->setAtributo('PU18IDCSCLS',$_POST['PU18IDCSCLS']);//afalta esto
			$this->callefrenteruta->setAtributo('PU18DESCS',$_POST['PU18DESCS']);
			$this->callefrenteruta->guardar();
			header('location:?c=callefrenteruta&m=index');
		}
		else{
			require_once 'view/callefrenteruta/agregar.php';
		}
	}
	public function editar()
	{
		if ($_POST) {
			$this->callefrenteruta->setAtributo('PU18IDCSCLS',$_POST['PU18IDCSCLS']);
			$this->callefrenteruta->setAtributo('PU18DESCS',$_POST['PU18DESCS']);
			$this->callefrenteruta->actualizar();
			header('location:?c=callefrenteruta&m=index');
		}
		else{
			$this->callefrenteruta = $this->callefrenteruta->buscar($_REQUEST['id']);
			require_once 'view/callefrenteruta/editar.php';
		}
	}

	public function eliminar()
	{
		$this->callefrenteruta->setAtributo('PU18IDCSCLS',$_REQUEST['id']);
		$this->callefrenteruta->eliminar();
		header('location:?c=callefrenteruta&m=index');
	}

	public function ver()
	{
		$this->callefrenteruta = $this->callefrenteruta->buscar($_REQUEST['id']);
		require_once 'view/callefrenteruta/ver.php';
	}
}
 ?>