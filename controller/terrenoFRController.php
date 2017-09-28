<?php 
//ActividadDesarrollar
require_once 'model/terrenoFR.php';
class terrenoFRController
{
	private $terrenoFR;
	function __construct()
	{
		$this->terrenoFR = new terrenoFR();
	}
	public function index()
	{
		require_once 'view/terrenoFR/index.php';
	}
	public function agregar()
	{
		
		if ($_POST) {
			$this->terrenoFR->setAtributo('PU07IDTFR',$_POST['PU07IDTFR']);
			$this->terrenoFR->setAtributo('PU07NOMTFR',$_POST['PU07NOMTFR']);
			$this->terrenoFR->guardar();
			header('location:?c=terrenoFR&m=index');
		}
		else{
			require_once 'view/terrenoFR/agregar.php';
		}
	}
	public function editar()
	{
		if ($_POST) {
			$this->terrenoFR->setAtributo('PU07IDTFR',$_POST['PU07IDTFR']);
			$this->terrenoFR->setAtributo('PU07NOMTFR',$_POST['PU07NOMTFR']);
			$this->terrenoFR->actualizar();
			header('location:?c=terrenoFR&m=index');
		}
		else{
			$this->terrenoFR = $this->terrenoFR->buscar($_REQUEST['id']);
			require_once 'view/terrenoFR/editar.php';
		}
	}

	public function eliminar()
	{
		$this->terrenoFR->setAtributo('PU07IDTFR',$_REQUEST['id']);
		$this->terrenoFR->eliminar();
		header('location:?c=terrenoFR&m=index');
	}

	public function ver()
	{
		$this->terrenoFR = $this->terrenoFR->buscar($_REQUEST['id']);
		require_once 'view/terrenoFR/ver.php';
	}
}
?>