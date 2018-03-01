<?php 
require_once 'model/class22tredv.php';
class class22tredvController
{
	private $class22tredv;
	function __construct()
	{
		$this->class22tredv = new class22tredv();
	}
	public function index()
	{
		require_once 'view/header.php';
		require_once 'view/class22tredv/index.php';
		require_once 'view/footer.php';	
	}
	public function agregar()
	{
		
		if ($_POST) {
			$this->class22tredv->setAtributo('PU22IDTREDV',$_POST['PU22IDTREDV']);//afalta esto
			$this->class22tredv->setAtributo('PU22DESCTRV',$_POST['PU22DESCTRV']);
			$this->class22tredv->guardar();
			header('location:?c=class22tredv&m=index');
		}
		else{
			require_once 'view/header.php';
			require_once 'view/class22tredv/agregar.php';
			require_once 'view/footer.php';
		}
	}
	public function editar()
	{
		if ($_POST) {
			$this->class22tredv->setAtributo('PU22IDTREDV',$_POST['PU22IDTREDV']);
			$this->class22tredv->setAtributo('PU22DESCTRV',$_POST['PU22DESCTRV']);
			$this->class22tredv->actualizar();
			header('location:?c=class22tredv&m=index');
		}
		else{
			$this->class22tredv = $this->class22tredv->buscar($_REQUEST['id']);
			require_once 'view/header.php';
			require_once 'view/class22tredv/editar.php';
			require_once 'view/footer.php';
		}
	}

	public function eliminar()
	{
		$this->class22tredv->setAtributo('PU22IDTREDV',$_REQUEST['id']);
		$this->class22tredv->eliminar();
		header('location:?c=class22tredv&m=index');
	}

	public function ver()
	{
		$this->class22tredv = $this->class22tredv->buscar($_REQUEST['id']);
		require_once 'view/header.php';
		require_once 'view/class22tredv/ver.php';
		require_once 'view/footer.php';
	}
}
 ?>