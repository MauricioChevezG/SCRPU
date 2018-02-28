<?php 

require_once 'model/class04ingresotramite.php';


class class04ingresotramiteController
{
	private $class04ingresotramite;
	function __construct()
	{
		$this->class04ingresotramite = new class04ingresotramite();
	}
	public function index()
	{
		require_once 'view/header.php';
		require_once 'view/class04ingresotramite/index.php';
		require_once 'view/footer.php';
	}
	public function agregar()
	{
		if ($_POST) {
			$this->class04ingresotramite->setAtributo('PU04IDTRA',$_POST['PU04IDTRA']);
			$this->class04ingresotramite->setAtributo('PU04DESCRIPCIONLUGAR',$_POST['PU04DESCRIPCIONLUGAR']);
			$this->class04ingresotramite->guardar();
			header('location:?c=class04ingresotramite&m=index');
		}
		else{
			require_once 'view/header.php';
			require_once 'view/class04ingresotramite/agregar.php';
			require_once 'view/footer.php';
		}
	}
	public function editar()
	{
		if ($_POST) {
			$this->class04ingresotramite->setAtributo('PU04IDTRA',$_POST['PU04IDTRA']);
			$this->class04ingresotramite->setAtributo('PU04DESCRIPCIONLUGAR',$_POST['PU04DESCRIPCIONLUGAR']);
			$this->class04ingresotramite->actualizar();
			header('location:?c=class04ingresotramite&m=index');
		}
		else{
			$this->class04ingresotramite = $this->class04ingresotramite->buscar($_REQUEST['id']);
			require_once 'view/header.php';
			require_once 'view/class04ingresotramite/editar.php';
			require_once 'view/footer.php';		}
		}

	public function eliminar()
	{
		$this->class04ingresotramite->setAtributo('PU04IDTRA',$_REQUEST['id']);
		$this->class04ingresotramite->eliminar();
		header('location:?c=class04ingresotramite&m=index');
	}

	public function ver()
	{
		$this->class04ingresotramite = $this->class04ingresotramite->buscar($_REQUEST['id']);
		require_once 'view/header.php';
		require_once 'view/class04ingresotramite/ver.php';
		require_once 'view/footer.php';
	}
}
?>