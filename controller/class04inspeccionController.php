<?php 
require_once 'model/PU04INSPECCION.php';
require_once 'model/class10aspbio.php';
require_once 'model/class09desceg.php';
require_once 'model/class13aarep.php';
require_once 'model/class06actdes.php';
class class04inspeccionController
{
	private $pu04inspeccion;
	private $pu09tradeg;
	private $pu10aspbio;
	private $pu13aap;
	private $pu05actdes;
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
			$this->pu04inspeccion->setAtributo('PU07IDTFR',$_POST['PU07IDTFR']);
			$this->pu04inspeccion->setAtributo('PU04NORTE',$_POST['PU04NORTE']);
			$this->pu04inspeccion->setAtributo('PU04ESTE',$_POST['PU04ESTE']);
			$this->pu04inspeccion->setAtributo('PU04ALTITUD',$_POST['PU04ALTITUD']);
			$this->pu04inspeccion->setAtributo('PU12IDTDESEC',$_POST['PU12IDTDESEC']);
			
			
			$this->pu04inspeccion->guardar($_POST['pu09tradeg'],$_POST['pu10aspbio'],$_POST['pu13aap'],$_POST['pu05actdes']);
			header('location:?c=class04inspeccion&m=index');
		}
		else{
			$this->pu09tradeg = new class09desceg();
			$this->pu10aspbio = new class10aspbio();
			$this->pu13aap = new class13aarep();
			$this->pu05actdes = new class06actdes();
			require_once 'view/header.php';
			require_once 'view/class04inspeccion/agregar.php';
			require_once 'view/footer.php';
		}
	}
}
?>