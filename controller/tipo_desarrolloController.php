<?php 
//`pu12tipdesec`
//`PU12IDTDESEC``PU12TIPODES`
require_once 'model/tipo_desarrollo.php';
class tipo_desarrolloController
{
	private $tipo_desarrollo;
	function __construct()
	{
		$this->tipo_desarrollo = new tipo_desarrollo();
	}
	public function index()
	{
		require_once 'view/tipo_desarrollo/index.php';
	}
	public function agregar()
	{
		
		if ($_POST) {
			$this->tipo_desarrollo->setAtributo('PU12IDTDESEC',$_POST['PU12IDTDESEC']);//afalta esto
			$this->tipo_desarrollo->setAtributo('PU12TIPODES',$_POST['PU12TIPODES']);
			$this->tipo_desarrollo->guardar();
			header('location:?c=tipo_desarrollo&m=index');
		}
		else{
			require_once 'view/tipo_desarrollo/agregar.php';
		}
	}
	public function editar()
	{
		if ($_POST) {
			$this->tipo_desarrollo->setAtributo('PU12IDTDESEC',$_POST['PU12IDTDESEC']);
			$this->tipo_desarrollo->setAtributo('PU12TIPODES',$_POST['PU12TIPODES']);
			$this->tipo_desarrollo->actualizar();
			header('location:?c=tipo_desarrollo&m=index');
		}
		else{
			$this->tipo_desarrollo = $this->tipo_desarrollo->buscar($_REQUEST['id']);
			require_once 'view/tipo_desarrollo/editar.php';
		}
	}

	public function eliminar()
	{
		$this->tipo_desarrollo->setAtributo('PU12IDTDESEC',$_REQUEST['id']);
		$this->tipo_desarrollo->eliminar();
		header('location:?c=tipo_desarrollo&m=index');
	}

	public function ver()
	{
		$this->tipo_desarrollo = $this->tipo_desarrollo->buscar($_REQUEST['id']);
		require_once 'view/tipo_desarrollo/ver.php';
	}
}
?>