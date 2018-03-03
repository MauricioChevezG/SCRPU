<?php 
require_once 'model/class04editactdes.php';
class class04editactdesController
{
	private $class04editactdes;
	private $pu06idactdes;
 
	function __construct()
	{
		$this->class04editactdes= new class04editactdes();
	}
	public function index()
	{
		require_once 'view/header.php';
		require_once 'view/class04editactdes/index.php';
		require_once 'view/footer.php';
	}
	public function listar(){
		require_once 'view/class04editactdes/editarPermisos.php';
	}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	public function editarActividades()
	{
		if($_POST){
			   $actividades = $this->class04editactdes->getTodasActividades();
			    $this->class04editactdes->eliminarActividades($_REQUEST['id']);
			    foreach ($actividades as $idactdes):
    				if( isset($_REQUEST['idactdes'.$idactdes['PU06IDACTDES']] ) )
      				$this->class04editactdes->asignarActividades($_REQUEST['id'], $idactdes['PU06IDACTDES']);
  				endforeach;
				header('location:?c=class04editactdes&m=editarActividades&id='.$_REQUEST['id']);
		}
		else{
			$this->class04editactdes = $this->class04editactdes->buscar($_REQUEST['id']);


			require_once 'view/class04editactdes/editarPermisos.php';
	
		}
	}
}
?>