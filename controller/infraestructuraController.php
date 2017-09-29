<?php 
//`pu09desceg`
//`PU24IDINFR``PU24DESCINF`
require_once 'model/infraestructura.php';
class infraestructuraController
{
	private $infraestructura;
	function __construct()
	{
		$this->infraestructura = new infraestructura();
	}
	public function index()
	{
		require_once 'view/infraestructura/index.php';
	}
	public function agregar()
	{
		
		if ($_POST) {
			$this->infraestructura->setAtributo('PU24IDINFR',$_POST['PU24IDINFR']);//afalta esto
			$this->infraestructura->setAtributo('PU24DESCINF',$_POST['PU24DESCINF']);
			$this->infraestructura->guardar();
			header('location:?c=infraestructura&m=index');
		}
		else{
			require_once 'view/infraestructura/agregar.php';
		}
	}
	public function editar()
	{
		if ($_POST) {
			$this->infraestructura->setAtributo('PU24IDINFR',$_POST['PU24IDINFR']);
			$this->infraestructura->setAtributo('PU24DESCINF',$_POST['PU24DESCINF']);
			$this->infraestructura->actualizar();
			header('location:?c=infraestructura&m=index');
		}
		else{
			$this->infraestructura = $this->infraestructura->buscar($_REQUEST['id']);
			require_once 'view/infraestructura/editar.php';
		}
	}

	public function eliminar()
	{
		$this->infraestructura->setAtributo('PU24IDINFR',$_REQUEST['id']);
		$this->infraestructura->eliminar();
		header('location:?c=infraestructura&m=index');
	}

	public function ver()
	{
		$this->infraestructura = $this->infraestructura->buscar($_REQUEST['id']);
		require_once 'view/infraestructura/ver.php';
	}
}
?>