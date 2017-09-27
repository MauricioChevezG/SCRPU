<?php 
//`pu16servae`servelectagua
//`PU16IDSAE`
//`PU16DESCAE`
require_once 'model/servelectagua.php';
class servelectaguaController
{
	private $servelectagua;
	function __construct()
	{
		$this->servelectagua = new servelectagua();
	}
	public function index()
	{
		require_once 'view/servelectagua/index.php';
	}
	public function agregar()
	{
		
		if ($_POST) {
			$this->servelectagua->setAtributo('PU16IDSAE',$_POST['PU16IDSAE']);//afalta esto
			$this->servelectagua->setAtributo('PU16DESCAE',$_POST['PU16DESCAE']);
			$this->servelectagua->guardar();
			header('location:?c=servelectagua&m=index');
		}
		else{
			require_once 'view/servelectagua/agregar.php';
		}
	}
	public function editar()
	{
		if ($_POST) {
			$this->servelectagua->setAtributo('PU16IDSAE',$_POST['PU16IDSAE']);
			$this->servelectagua->setAtributo('PU16DESCAE',$_POST['PU16DESCAE']);
			$this->servelectagua->actualizar();
			header('location:?c=servelectagua&m=index');
		}
		else{
			$this->servelectagua = $this->servelectagua->buscar($_REQUEST['id']);
			require_once 'view/servelectagua/editar.php';
		}
	}

	public function eliminar()
	{
		$this->servelectagua->setAtributo('PU16IDSAE',$_REQUEST['id']);
		$this->servelectagua->eliminar();
		header('location:?c=servelectagua&m=index');
	}

	public function ver()
	{
		$this->servelectagua = $this->servelectagua->buscar($_REQUEST['id']);
		require_once 'view/servelectagua/ver.php';
	}
}
?>