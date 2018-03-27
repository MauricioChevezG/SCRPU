<?php 
//ActividadDesarrollar
require_once 'model/class04oficina.php';
require_once 'model/class06actdes.php';
class class04oficinaController
{
	private $class04oficina;

	function __construct()
	{
		$this->class04oficina = new class04oficina();
	}
	public function index()
	{
		require_once 'view/header.php';
		require_once 'view/class04oficina/index.php';
		require_once 'view/footer.php';
	}
	public function index1()
	{
		require_once 'view/header.php';
		require_once 'view/class04oficina/index1.php';
		require_once 'view/footer.php';
	}
	public function index2()
	{
		require_once 'view/header.php';
		require_once 'view/class04oficina/index2.php';
		require_once 'view/footer.php';
	}
	public function agregar()
	{
		
		if ($_POST) {
			$this->class04oficina->setAtributo('PU04IDTRA',$_POST['PU04IDTRA']);//afalta esto
			$this->class04oficina->setAtributo('PU39CEDSOLICI',$_POST['PU39CEDSOLICI']);
			$this->class04oficina->setAtributo('PU39NOMSOLICI',$_POST['PU39NOMSOLICI']);//afalta esto
			$this->class04oficina->setAtributo('PU39APE1SOLICI',$_POST['PU39APE1SOLICI']);
			$this->class04oficina->setAtributo('PU39APE2SOLICI',$_POST['PU39APE2SOLICI']);//afalta esto

			$this->class04oficina->setAtributo('PU04IDDISTRITO',$_POST['PU04IDDISTRITO']);
			$this->class04oficina->setAtributo('PU39BARRIO',$_POST['PU39BARRIO']);//afalta esto
			$this->class04oficina->setAtributo('PU39DIRECCION',$_POST['PU39DIRECCION']);

			$this->class04oficina->setAtributo('PU40CEDPROPIE',$_POST['PU40CEDPROPIE']);//afalta esto
			$this->class04oficina->setAtributo('PU40NOMPROPIE',$_POST['PU40NOMPROPIE']);
			$this->class04oficina->setAtributo('PU40APE1PROPIE',$_POST['PU40APE1PROPIE']);//afalta esto
			$this->class04oficina->setAtributo('PU40APE2PROPIE',$_POST['PU40APE2PROPIE']);

			$this->class04oficina->setAtributo('PU40NFINCA',$_POST['PU40NFINCA']);//afalta esto
			$this->class04oficina->setAtributo('PU40NPLANO',$_POST['PU40NPLANO']);
			$this->class04oficina->guardar();
			header('location:?c=class04oficina&m=index2');

		}
		else{

			$this->class04oficina = $this->class04oficina->buscarTraIng($_REQUEST['id']);
			require_once 'view/header.php';
			require_once 'view/class04oficina/agregar.php';
			require_once 'view/footer.php';
		}
	}

	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	public function editarActividades()
	{
		if($_POST){
			   $actividades = $this->class04oficina->getTodasActividades();
			    $this->class04oficina->eliminarActividades($_REQUEST['id']);
			    foreach ($actividades as $idactdes):
    				if( isset($_REQUEST['idactdes'.$idactdes['PU06IDACTDES']] ) )
      				$this->class04oficina->asignarActividades($_REQUEST['id'], $idactdes['PU06IDACTDES']);
  				endforeach;
				header('location:?c=class04oficina&m=editarActividades&id='.$_REQUEST['id']);
		}
		else{
			$this->class04oficina = $this->class04oficina->buscarTraIng($_REQUEST['id']);

			require_once 'view/header.php';
			require_once 'view/class04oficina/agregar.php';
			require_once 'view/footer.php';
		}
	}
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/*public function editar()
	{
		if ($_POST) {
			$this->class04oficina->setAtributo('PU40APE1PROPIE',$_POST['PU40APE1PROPIE']);
			$this->class04oficina->setAtributo('PU39CEDSOLICI',$_POST['PU39CEDSOLICI']);
			$this->class04oficina->actualizar();
			header('location:?c=class04oficina&m=index');
		}
		else{
			$this->class04oficina = $this->class04oficina->buscar($_REQUEST['id']);
			require_once 'view/header.php';
			require_once 'view/class04oficina/editar.php';
			require_once 'view/footer.php';
		}
	}

	public function eliminar()
	{
		$this->class04oficina->setAtributo('PU40APE1PROPIE',$_REQUEST['id']);
		$this->class04oficina->eliminar();
		header('location:?c=class04oficina&m=index');
	}

	public function ver()
	{
		$this->class04oficina = $this->class04oficina->buscar($_REQUEST['id']);
		require_once 'view/header.php';
		require_once 'view/class04oficina/ver.php';
		require_once 'view/footer.php';
	}*/
}
?>