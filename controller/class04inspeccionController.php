<?php 
require_once 'model/PU04INSPECCION.php';
require_once 'model/class10aspbio.php';
require_once 'model/class09desceg.php';
require_once 'model/class13aarep.php';
require_once 'model/class06actdes.php';
require_once 'model/class07terrft.php';
require_once 'model/class12tipdesec.php';
class class04inspeccionController
{
	private $pu04inspeccion;
	private $pu09tradeg;
	private $pu10aspbio;
	private $pu13aap;
	private $pu06idactdes;
	private $pu07terrfr;
	private $pu12tipdesec;
 
	function __construct()
	{
		$this->pu04inspeccion= new PU04INSPECCION();
	}
	public function index()
	{
		require_once 'view/header.php';
		require_once 'view/class04inspeccion/index.php';
		require_once 'view/footer.php';
	}
	public function agregar()
	{
		if($_POST){
			$this->pu04inspeccion->setAtributo('PU04IDTRA',$_POST['PU04IDTRA']);
			$this->pu04inspeccion->setAtributo('PU04FETRA',$_POST['PU04FETRA']);
			$this->pu04inspeccion->setAtributo('PU04NORTE',$_POST['PU04NORTE']);
			$this->pu04inspeccion->setAtributo('PU04ESTE',$_POST['PU04ESTE']);
			$this->pu04inspeccion->setAtributo('PU04ALTITUD',$_POST['PU04ALTITUD']);
			
			
			$this->pu04inspeccion->guardar($_POST['pu09tradeg'],$_POST['pu10aspbio'],$_POST['pu13aap'],$_POST['pu06idactdes'],$_POST['pu07terrfr'],$_POST['pu12tipdesec']);
			header('location:?c=class04inspeccion&m=index');
		}
		else{
			$this->pu09tradeg = new class09desceg();
			$this->pu10aspbio = new class10aspbio();
			$this->pu13aap = new class13aarep();
			$this->pu06idactdes = new class06actdes();
			$this->pu07terrfr = new class07terrft();
			$this->pu12tipdesec = new class12tipdesec();

			require_once 'view/header.php';
			require_once 'view/class04inspeccion/agregar.php';
			require_once 'view/footer.php';
		}
	}

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	///
	///
	/*	public function editarPermisos()
	{
		if($_POST){
			   $pu06idactde = $this->pu04inspeccion->getTodasCategorias();
			    $this->pu04inspeccion->eliminarCaracteristicasTerreno($_REQUEST['id']);
			    foreach ($pu06idactde as $pu06idactdes):
    				if( isset($_REQUEST['pu06idactdes'.$pu06idactdes['PU06IDACTDES']] ) )
      				//$this->pu04inspeccion->asignarCaracteristicasTerreno($_REQUEST['id'], $pu06idactdes['id']);
  					 $this->pu04inspeccion->asignarCaracteristicasTerreno($_REQUEST['id'], $pu06idactdes['PU06IDACTDES']);
  				endforeach;
				header('location:?c=class04inspeccion&m=editarPermisos&id='.$_REQUEST['id']);
		}
		else{
			$this->pu04inspeccion = $this->pu04inspeccion->buscar($_REQUEST['id']);

			require_once 'view/header.php';
			require_once 'view/class04inspeccion/editarPermisos.php';
			require_once 'view/footer.php';
		}
	}*/
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	public function editarActividades()
	{
		if($_POST){
			   $actividades = $this->pu04inspeccion->getTodasActividades();
			    $this->pu04inspeccion->eliminarActividades($_REQUEST['id']);
			    foreach ($actividades as $idactdes):
    				if( isset($_REQUEST['idactdes'.$idactdes['PU06IDACTDES']] ) )
      				$this->pu04inspeccion->asignarActividades($_REQUEST['id'], $idactdes['PU06IDACTDES']);
  				endforeach;
				header('location:?c=class04inspeccion&m=editarActividades&id='.$_REQUEST['id']);
		}
		else{
			$this->pu04inspeccion = $this->pu04inspeccion->buscar($_REQUEST['id']);

			require_once 'view/header.php';
			require_once 'view/class04inspeccion/editarPermisos.php';
			require_once 'view/footer.php';
		}
	}
}
?>