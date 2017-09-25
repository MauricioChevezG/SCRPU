<?php 

require_once 'model/cliente.php';
class ClientesController
{
	private $cliente;
	function __construct()
	{
		$this->cliente = new Cliente();
	}
	public function index()
	{
		require_once 'view/clientes/index.php';
	}
	public function agregar()
	{
		if ($_POST) {
			$this->cliente->setAtributo('cedula',$_POST['cedula']);
			$this->cliente->setAtributo('nombre',$_POST['nombre']);
			$this->cliente->setAtributo('primerApellido',$_POST['primerApellido']);
			$this->cliente->setAtributo('segundoApellido',$_POST['segundoApellido']);
			$this->cliente->guardar();
			header('location:?c=clientes&m=index');
		}
		else{
			require_once 'view/clientes/agregar.php';
		}
	}
	public function editar()
	{
		if ($_POST) {
			$this->cliente->setAtributo('cedula',$_POST['cedula']);
			$this->cliente->setAtributo('nombre',$_POST['nombre']);
			$this->cliente->setAtributo('primerApellido',$_POST['primerApellido']);
			$this->cliente->setAtributo('segundoApellido',$_POST['segundoApellido']);
			$this->cliente->actualizar();
			header('location:?c=clientes&m=index');
		}
		else{
			$this->cliente = $this->cliente->buscar($_REQUEST['id']);
			require_once 'view/clientes/editar.php';
		}
	}

	public function eliminar()
	{
		$this->cliente->setAtributo('cedula',$_REQUEST['id']);
		$this->cliente->eliminar();
		header('location:?c=clientes&m=index');
	}

	public function ver()
	{
		$this->cliente = $this->cliente->buscar($_REQUEST['id']);
		require_once 'view/clientes/ver.php';
	}
}
?>