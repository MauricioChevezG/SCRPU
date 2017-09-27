<?php 
//ActividadDesarrollar
require_once 'model/tipsue_35.php';
class tipsue_35Controller
{
	private $tipsue_35;
	function __construct()
	{
		$this->tipsue_35 = new tipsue_35();
	}
	public function index()
	{
		require_once 'view/tipsue_35/index.php';
	}
	public function agregar()
	{
		
		if ($_POST) {
			$this->tipsue_35->setAtributo('PU35IDTIPS',$_POST['PU35IDTIPS']);//afalta esto
			$this->tipsue_35->setAtributo('PU35DESTIP',$_POST['PU35DESTIP']);
			$this->tipsue_35->guardar();
			header('location:?c=tipsue_35&m=index');
		}
		else{
			require_once 'view/tipsue_35/agregar.php';
		}
	}
	public function editar()
	{
		if ($_POST) {
			$this->tipsue_35->setAtributo('PU35IDTIPS',$_POST['PU35IDTIPS']);
			$this->tipsue_35->setAtributo('PU35DESTIP',$_POST['PU35DESTIP']);
			$this->tipsue_35->actualizar();
			header('location:?c=tipsue_35&m=index');
		}
		else{
			$this->tipsue_35 = $this->tipsue_35->buscar($_REQUEST['id']);
			require_once 'view/tipsue_35/editar.php';
		}
	}

	public function eliminar()
	{
		$this->tipsue_35->setAtributo('PU35IDTIPS',$_REQUEST['id']);
		$this->tipsue_35->eliminar();
		header('location:?c=tipsue_35&m=index');
	}

	public function ver()
	{
		$this->tipsue_35 = $this->tipsue_35->buscar($_REQUEST['id']);
		require_once 'view/tipsue_35/ver.php';
	}
}
?>