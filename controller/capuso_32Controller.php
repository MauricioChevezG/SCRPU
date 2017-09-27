<?php 
//ActividadDesarrollar
require_once 'model/capuso_32.php';
class capuso_32Controller
{
	private $capuso_32;
	function __construct()
	{
		$this->capuso_32 = new capuso_32();
	}
	public function index()
	{
		require_once 'view/capuso_32/index.php';
	}
	public function agregar()
	{
		
		if ($_POST) {
			$this->capuso_32->setAtributo('PU32IDCUSO',$_POST['PU32IDCUSO']);//afalta esto
			$this->capuso_32->setAtributo('PU32DESUSO',$_POST['PU32DESUSO']);
			$this->capuso_32->guardar();
			header('location:?c=capuso_32&m=index');
		}
		else{
			require_once 'view/capuso_32/agregar.php';
		}
	}
	public function editar()
	{
		if ($_POST) {
			$this->capuso_32->setAtributo('PU32IDCUSO',$_POST['PU32IDCUSO']);
			$this->capuso_32->setAtributo('PU32DESUSO',$_POST['PU32DESUSO']);
			$this->capuso_32->actualizar();
			header('location:?c=capuso_32&m=index');
		}
		else{
			$this->capuso_32 = $this->capuso_32->buscar($_REQUEST['id']);
			require_once 'view/capuso_32/editar.php';
		}
	}

	public function eliminar()
	{
		$this->capuso_32->setAtributo('PU32IDCUSO',$_REQUEST['id']);
		$this->capuso_32->eliminar();
		header('location:?c=capuso_32&m=index');
	}

	public function ver()
	{
		$this->capuso_32 = $this->capuso_32->buscar($_REQUEST['id']);
		require_once 'view/capuso_32/ver.php';
	}
}
?>