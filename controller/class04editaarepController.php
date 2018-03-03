<?php 
require_once 'model/class04editaarep.php';
class class04editaarepController
{
	private $class04editaarep;
	function __construct()
	{
		$this->class04editaarep = new class04editaarep();
	}

	public function index()
	{
		require_once 'view/header.php';
		require_once 'view/class04inspeccion/index.php';
		require_once 'view/footer.php';
	}

	public function editarActividades()
	{
		if($_POST){
			   $actividades = $this->class04editaarep->getTodasActividades();
			    $this->class04editaarep->eliminarActividades($_REQUEST['id']);
			    foreach ($actividades as $idactdes):
    				if( isset($_REQUEST['idactdes'.$idactdes['PU06IDACTDES']] ) )
      				$this->class04editaarep->asignarActividades($_REQUEST['id'], $idactdes['PU06IDACTDES']);
  				endforeach;
				header('location:?c=class04editaarep&m=editarActividades&id='.$_REQUEST['id']);
		}
		else{
			$this->class04editaarep = $this->class04editaarep->buscar($_REQUEST['id']);

			require_once 'view/header.php';
			require_once 'view/class04editaarep/editarPermisos.php';
			require_once 'view/footer.php';
		}
	}
}
?>