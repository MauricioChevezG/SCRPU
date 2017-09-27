<?php 
//`pu10aspbio`
//`PU10IDASBIO``PU10DESCABIO`aspecto_biofisico
require_once 'model/aspecto_biofisico.php';
class aspecto_biofisicoController
{
	private $aspecto_biofisico;
	function __construct()
	{
		$this->aspecto_biofisico = new aspecto_biofisico();
	}
	public function index()
	{
		require_once 'view/aspecto_biofisico/index.php';
	}
	public function agregar()
	{
		
		if ($_POST) {
			$this->aspecto_biofisico->setAtributo('PU10IDASBIO',$_POST['PU10IDASBIO']);//afalta esto
			$this->aspecto_biofisico->setAtributo('PU10DESCABIO',$_POST['PU10DESCABIO']);
			$this->aspecto_biofisico->guardar();
			header('location:?c=aspecto_biofisico&m=index');
		}
		else{
			require_once 'view/aspecto_biofisico/agregar.php';
		}
	}
	public function editar()
	{
		if ($_POST) {
			$this->aspecto_biofisico->setAtributo('PU10IDASBIO',$_POST['PU10IDASBIO']);
			$this->aspecto_biofisico->setAtributo('PU10DESCABIO',$_POST['PU10DESCABIO']);
			$this->aspecto_biofisico->actualizar();
			header('location:?c=aspecto_biofisico&m=index');
		}
		else{
			$this->aspecto_biofisico = $this->aspecto_biofisico->buscar($_REQUEST['id']);
			require_once 'view/aspecto_biofisico/editar.php';
		}
	}

	public function eliminar()
	{
		$this->aspecto_biofisico->setAtributo('PU10IDASBIO',$_REQUEST['id']);
		$this->aspecto_biofisico->eliminar();
		header('location:?c=aspecto_biofisico&m=index');
	}

	public function ver()
	{
		$this->aspecto_biofisico = $this->aspecto_biofisico->buscar($_REQUEST['id']);
		require_once 'view/aspecto_biofisico/ver.php';
	}
}
?>