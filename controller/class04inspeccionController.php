<?php 
require_once 'model/PU04INSPECCION.php';
require_once 'model/class10aspbio.php';
require_once 'model/class09desceg.php';
require_once 'model/class13aarep.php';
require_once 'model/class06actdes.php';
require_once 'model/class07terrft.php';
require_once 'model/class12tipdesec.php';
require_once 'model/class21servicios.php';
require_once 'model/class22tredv.php';
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
	public function index1()
	{
		require_once 'view/header.php';
		require_once 'view/class04inspeccion/index1.php';
		require_once 'view/footer.php';
	}
	public function agregar()
	{
		if($_POST){
			$this->pu04inspeccion->setAtributo('PU04IDTRA',$_POST['PU04IDTRA']);
			$this->pu04inspeccion->setAtributo('PU04NORTE',$_POST['PU04NORTE']);
			$this->pu04inspeccion->setAtributo('PU04ESTE',$_POST['PU04ESTE']);
			$this->pu04inspeccion->setAtributo('PU04ALTITUD',$_POST['PU04ALTITUD']);
			
			
			$this->pu04inspeccion->guardar($_POST['pu09tradeg'],$_POST['pu10aspbio'],$_POST['pu13aap'],$_POST['pu06idactdes'],$_POST['pu07terrfr'],$_POST['pu12tipdesec'],$_POST['pu21servicios'],$_POST['pu22tredv']);
			header('location:?c=class04inspeccion&m=index1');
		}
		else{

			$this->pu04inspeccion = $this->pu04inspeccion->buscarTraIng($_REQUEST['id']);

			$this->pu09tradeg = new class09desceg();
			$this->pu10aspbio = new class10aspbio();
			$this->pu13aap = new class13aarep();
			$this->pu06idactdes = new class06actdes();
			$this->pu07terrfr = new class07terrft();
			$this->pu12tipdesec = new class12tipdesec();
			$this->pu21servicios = new class21servicios();
			$this->pu22tredv = new class22tredv();
			$this->idtipopatentes = new class24infest();
			require_once 'view/header.php';
			require_once 'view/class04inspeccion/agregar.php';
			require_once 'view/footer.php';
		}
	}

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	public function editarAcceso()
	{
		$this->pu04inspeccion = $this->pu04inspeccion->buscarTraIng($_REQUEST['id']);

			require_once 'view/header.php';
			require_once 'view/class04inspeccion/editarAcceso.php';
			require_once 'view/footer.php';
	}
	


public function agregarTra()
	{
		if($_POST){
			$this->pu04inspeccion->setAtributo('PU04IDTRA',$_POST['id']);
			$this->pu04inspeccion->setAtributo('PU04NORTE',$_POST['PU04NORTE']);
			$this->pu04inspeccion->setAtributo('PU04ESTE',$_POST['PU04ESTE']);
			$this->pu04inspeccion->setAtributo('PU04ALTITUD',$_POST['PU04ALTITUD']);
			$this->pu04inspeccion->agregarTra();
			header('location:?c=class04inspeccion&m=agregarTra&id='.$_REQUEST['id']);
		}
		else{

			$this->pu04inspeccion = $this->pu04inspeccion->buscarTraIng($_REQUEST['id']);

		
			require_once 'view/header.php';
			require_once 'view/class04inspeccion/agregarTramite.php';
			require_once 'view/footer.php';
		}
	}

	
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	///
	public function agregarespaciogeo()
	{
		if($_POST){
			$this->pu04inspeccion->setAtributo('PU04IDTRA',$_POST['id']);

			$this->pu04inspeccion->guardarespaciogeo($_POST['pu09tradeg']);
			header('location:?c=class04inspeccion&m=agregarespaciogeo&id='.$_REQUEST['id']);
		}
		else{

			$this->pu04inspeccion = $this->pu04inspeccion->buscarTraIng($_REQUEST['id']);

			$this->pu09tradeg = new class09desceg();

			require_once 'view/header.php';
			require_once 'view/class04inspeccion/agregarTra.php';
			require_once 'view/footer.php';
		}
	}

	public function agregaraspectosbio()
	{
		if($_POST){
			$this->pu04inspeccion->setAtributo('PU04IDTRA',$_POST['id']);

			$this->pu04inspeccion->guardaraspectosbio($_POST['pu10aspbio']);
			header('location:?c=class04inspeccion&m=agregaraspectosbio&id='.$_REQUEST['id']);
		}
		else{

			$this->pu04inspeccion = $this->pu04inspeccion->buscarTraIng($_REQUEST['id']);

			$this->pu10aspbio = new class10aspbio();

			require_once 'view/header.php';
			require_once 'view/class04inspeccion/agregarTra.php';
			require_once 'view/footer.php';
		}
	}


		public function agregaraaproteccion()
	{
		if($_POST){
			$this->pu04inspeccion->setAtributo('PU04IDTRA',$_POST['id']);

			$this->pu04inspeccion->guardaraaproteccion($_POST['pu13aap']);
			header('location:?c=class04inspeccion&m=agregaraaproteccion&id='.$_REQUEST['id']);
		}
		else{

			$this->pu04inspeccion = $this->pu04inspeccion->buscarTraIng($_REQUEST['id']);

			$this->pu13aap = new class13aarep();

			require_once 'view/header.php';
			require_once 'view/class04inspeccion/agregarTra.php';
			require_once 'view/footer.php';
		}
	}
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
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	public function editarTerrenoFR()
	{
		if($_POST){
			   $terrenofr = $this->pu04inspeccion->getTodasTerrenoFR();
			    $this->pu04inspeccion->eliminarTerrenoFR($_REQUEST['id']);
			    foreach ($terrenofr as $idterreno):
    			if( isset($_REQUEST['idterreno'.$idterreno['PU07IDTFR']] ) )
      			$this->pu04inspeccion->asignarTerrenoFR($_REQUEST['id'], $idterreno['PU07IDTFR']);
  				endforeach;
				header('location:?c=class04inspeccion&m=editarTerrenoFR&id='.$_REQUEST['id']);
		}
		else{
			$this->pu04inspeccion = $this->pu04inspeccion->buscar($_REQUEST['id']);

			require_once 'view/header.php';
			require_once 'view/class04inspeccion/editarPermisos.php';
			require_once 'view/footer.php';
		}
	}
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	public function editarDesarrolloSec()
	{
		if($_POST){
			   $desarrolloSec = $this->pu04inspeccion->getTodasDesarrolloSec();
			    $this->pu04inspeccion->eliminarDesarrolloSec($_REQUEST['id']);
			    foreach ($desarrolloSec as $iddesarrollosc):
    			if( isset($_REQUEST['iddesarrollosc'.$iddesarrollosc['PU12IDTDESEC']] ) )
      			$this->pu04inspeccion->asignarDesarrolloSec($_REQUEST['id'], $iddesarrollosc['PU12IDTDESEC']);
  				endforeach;
				header('location:?c=class04inspeccion&m=editarDesarrolloSec&id='.$_REQUEST['id']);
		}
		else{
			$this->pu04inspeccion = $this->pu04inspeccion->buscar($_REQUEST['id']);

			require_once 'view/header.php';
			require_once 'view/class04inspeccion/editarPermisos.php';
			require_once 'view/footer.php';
		}
	}
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	public function editarEspaciosGeo()
	{
		if($_POST){
			   $espacios = $this->pu04inspeccion->getTodasEspaciosGeo();
			    $this->pu04inspeccion->eliminarEspaciosGeo($_REQUEST['id']);
			    foreach ($espacios as $idespacio):
    			if( isset($_REQUEST['idespacio'.$idespacio['PU09IDDEG']] ) )
      			$this->pu04inspeccion->asignarEspaciosGeo($_REQUEST['id'], $idespacio['PU09IDDEG']);
  				endforeach;
				header('location:?c=class04inspeccion&m=editarEspaciosGeo&id='.$_REQUEST['id']);
		}
		else{
			$this->pu04inspeccion = $this->pu04inspeccion->buscar($_REQUEST['id']);

			require_once 'view/header.php';
			require_once 'view/class04inspeccion/editarPermisos.php';
			require_once 'view/footer.php';
		}
	}
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	public function editarAspectosBio()
	{
		if($_POST){
			   $idaspectos = $this->pu04inspeccion->getTodasAspectosBio();
			    $this->pu04inspeccion->eliminarAspectosBio($_REQUEST['id']);
			    foreach ($idaspectos as $idaspecto):
    			if( isset($_REQUEST['idaspecto'.$idaspecto['PU10IDASBIO']] ) )
      			$this->pu04inspeccion->asignarAspectosBio($_REQUEST['id'], $idaspecto['PU10IDASBIO']);
  				endforeach;
				header('location:?c=class04inspeccion&m=editarAspectosBio&id='.$_REQUEST['id']);
		}
		else{
			$this->pu04inspeccion = $this->pu04inspeccion->buscar($_REQUEST['id']);

			require_once 'view/header.php';
			require_once 'view/class04inspeccion/editarPermisos.php';
			require_once 'view/footer.php';
		}
	}
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	public function editarServicios()
	{
		if($_POST){
			   $idservicios = $this->pu04inspeccion->getTodasServicios();
			    $this->pu04inspeccion->eliminarServicios($_REQUEST['id']);
			    foreach ($idservicios as $idservicio):
    			if( isset($_REQUEST['idservicio'.$idservicio['PU21IDSERVI']] ) )
      			$this->pu04inspeccion->asignarServicios($_REQUEST['id'], $idservicio['PU21IDSERVI']);
  				endforeach;
				header('location:?c=class04inspeccion&m=editarServicios&id='.$_REQUEST['id']);
		}
		else{
			$this->pu04inspeccion = $this->pu04inspeccion->buscar($_REQUEST['id']);

			require_once 'view/header.php';
			require_once 'view/class04inspeccion/editarPermisos.php';
			require_once 'view/footer.php';
		}
	}
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	public function editarAreasPro()
	{
		if($_POST){
			   $areas = $this->pu04inspeccion->getTodasAreasPro();
			    $this->pu04inspeccion->eliminarAreasPro($_REQUEST['id']);
			    foreach ($areas as $idareasp):
    			if( isset($_REQUEST['idareasp'.$idareasp['PU13IDAAP']] ) )
      			$this->pu04inspeccion->asignarAreasPro($_REQUEST['id'], $idareasp['PU13IDAAP']);
  				endforeach;
				header('location:?c=class04inspeccion&m=editarAreasPro&id='.$_REQUEST['id']);
		}
		else{
			$this->pu04inspeccion = $this->pu04inspeccion->buscar($_REQUEST['id']);

			require_once 'view/header.php';
			require_once 'view/class04inspeccion/editarPermisos.php';
			require_once 'view/footer.php';
		}
	}
		///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	public function editarTipoRed()
	{
		if($_POST){
			   $tipored = $this->pu04inspeccion->getTodasTipoRed();
			    $this->pu04inspeccion->eliminarTipoRed($_REQUEST['id']);
			    foreach ($tipored as $idtiporedvial):
    			if( isset($_REQUEST['idtiporedvial'.$idtiporedvial['PU22IDTREDV']] ) )
      			$this->pu04inspeccion->asignarTipoRed($_REQUEST['id'], $idtiporedvial['PU22IDTREDV']);
  				endforeach;
				header('location:?c=class04inspeccion&m=editarTipoRed&id='.$_REQUEST['id']);
		}
		else{
			$this->pu04inspeccion = $this->pu04inspeccion->buscar($_REQUEST['id']);

			require_once 'view/header.php';
			require_once 'view/class04inspeccion/editarPermisos.php';
			require_once 'view/footer.php';
		}
	}

		///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	public function editarPatente()
	{
		if($_POST){
			   $tipopatente = $this->pu04inspeccion->getTodasPatente();
			    $this->pu04inspeccion->eliminarPatente($_REQUEST['id']);
			    foreach ($tipopatente as $idtipopatente):
    			if( isset($_REQUEST['idtipopatente'.$idtipopatente['PU24IDINFR']] ) )
      			$this->pu04inspeccion->asignarPatente($_REQUEST['id'], $idtipopatente['PU24IDINFR']);
  				endforeach;
				header('location:?c=class04inspeccion&m=editarPatente&id='.$_REQUEST['id']);
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