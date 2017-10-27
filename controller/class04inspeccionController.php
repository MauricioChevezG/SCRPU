<?php 

require_once 'model/class04inspeccion.php';
class class04inspeccionController
{
	private $class04inspeccion;
	function __construct()
	{
		$this->class04inspeccion = new class04inspeccion();
	}
	public function index()
	{
		require_once 'view/header.php';
		require_once 'view/class04inspeccion/index.php';
		require_once 'view/footer.php';
	}
	public function agregar()
	{
		if ($_POST) {
			$this->class04inspeccion->setAtributo('PU01CEDUSU',$_POST['PU01CEDUSU']);
			$this->class04inspeccion->setAtributo('PU01NOMUSU',$_POST['PU01NOMUSU']);
			$this->class04inspeccion->setAtributo('PU01APE1USU',$_POST['PU01APE1USU']);
			$this->class04inspeccion->setAtributo('PU01APE2USU',$_POST['PU01APE2USU']);
			$this->class04inspeccion->setAtributo('PU02TELUSU',$_POST['PU02TELUSU']);
			$this->class04inspeccion->setAtributo('PU02CORUSU',$_POST['PU02CORUSU']);
			$this->class04inspeccion->setAtributo('PU03IDPUES',$_POST['PU03IDPUES']);
			$this->class04inspeccion->setAtributo('PU02USUARIO',$_POST['PU02USUARIO']);
			$this->class04inspeccion->setAtributo('PU02CLAVE',$_POST['PU02CLAVE']);
			$this->class04inspeccion->guardarclass04inspeccion();
			header('location:?c=class04inspeccion&m=index');
		}
		else{
			require_once 'view/header.php';
			require_once 'view/class04inspeccion/agregar.php';
			require_once 'view/footer.php';
		}
	}
	public function editar()
	{
		if ($_POST) {
			$this->class04inspeccion->setAtributo('PU01CEDUSU',$_POST['PU01CEDUSU']);
			$this->class04inspeccion->setAtributo('PU01NOMUSU',$_POST['PU01NOMUSU']);
			$this->class04inspeccion->setAtributo('PU01APE1USU',$_POST['PU01APE1USU']);
			$this->class04inspeccion->setAtributo('PU01APE2USU',$_POST['PU01APE2USU']);
			$this->class04inspeccion->setAtributo('PU02TELUSU',$_POST['PU02TELUSU']);
			$this->class04inspeccion->setAtributo('PU02CORUSU',$_POST['PU02CORUSU']);
			$this->class04inspeccion->setAtributo('PU03IDPUES',$_POST['PU03IDPUES']);
			$this->class04inspeccion->actualizar();
			header('location:?c=class04inspeccion&m=index');
		}
		else{
			$this->class04inspeccion = $this->class04inspeccion->buscar($_REQUEST['id']);
			require_once 'view/header.php';
			require_once 'view/class04inspeccion/editar.php';
			require_once 'view/footer.php';
		}
	}

	public function eliminar()
	{
		$this->class04inspeccion->setAtributo('PU01CEDUSU',$_REQUEST['id']);
		$this->class04inspeccion->eliminar();
		header('location:?c=class04inspeccion&m=index');
	}

	public function ver()
	{
		$this->class04inspeccion = $this->class04inspeccion->buscar($_REQUEST['id']);
		require_once 'view/header.php';
		require_once 'view/class04inspeccion/ver.php';
		require_once 'view/footer.php';
	}
}
?>