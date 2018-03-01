<?php 
require_once 'model/class21servicios.php';
class class21serviciosController
{
	private $class21servicios;
	function __construct()
	{
		$this->class21servicios = new class21servicios();
	}
	public function index()
	{
		require_once 'view/header.php';
		require_once 'view/class21serviservicios/index.php';
		require_once 'view/footer.php';	
	}
	public function agregar()
	{
		
		if ($_POST) {
			$this->class21servicios->setAtributo('PU21IDSERVI',$_POST['PU21IDSERVI']);//afalta esto
			$this->class21servicios->setAtributo('PU21DESCSERVI',$_POST['PU21DESCSERVI']);
			$this->class21servicios->guardar();
			header('location:?c=class21servicios&m=index');
		}
		else{
			require_once 'view/header.php';
			require_once 'view/class21serviservicios/agregar.php';
			require_once 'view/footer.php';
		}
	}
	public function editar()
	{
		if ($_POST) {
			$this->class21servicios->setAtributo('PU21IDSERVI',$_POST['PU21IDSERVI']);
			$this->class21servicios->setAtributo('PU21DESCSERVI',$_POST['PU21DESCSERVI']);
			$this->class21servicios->actualizar();
			header('location:?c=class21servicios&m=index');
		}
		else{
			$this->class21servicios = $this->class21servicios->buscar($_REQUEST['id']);
			require_once 'view/header.php';
			require_once 'view/class21serviservicios/editar.php';
			require_once 'view/footer.php';
		}
	}

	public function eliminar()
	{
		$this->class21servicios->setAtributo('PU21IDSERVI',$_REQUEST['id']);
		$this->class21servicios->eliminar();
		header('location:?c=class21servicios&m=index');
	}

	public function ver()
	{
		$this->class21servicios = $this->class21servicios->buscar($_REQUEST['id']);
		require_once 'view/header.php';
		require_once 'view/class21serviservicios/ver.php';
		require_once 'view/footer.php';
	}
}
 ?>