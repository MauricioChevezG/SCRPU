<?php 
require_once 'model/class04tramite.php';
class class04tramiteController
{
	private $class04tramite;
	function __construct()
	{
		$this->class04tramite = new class04tramite();
	}

	public function listarRetrasado(){
		require_once 'view/class04tramite/retrasados.php';
	}

	// public function listarNuevo(){
	// 	require_once 'view/class04tramite/nuevos.php';
	// }

	public function index()
	{
		require_once 'view/header.php';
		require_once 'view/class04tramite/index.php';
		require_once 'view/footer.php';
	}
	// public function agregar()
	// {
	// 	if ($_POST) {
	// 		$this->class04tramite->setAtributo('PU04IDTRA',$_POST['PU04IDTRA']);
	// 		$this->class04tramite->setAtributo('PU04FETRA',$_POST['PU04FETRA']);
	// 		$this->class04tramite->setAtributo('PU07IDTFR',$_POST['PU07IDTFR']);
	// 		$this->class04tramite->setAtributo('PU04NORTE',$_POST['PU04NORTE']);
	// 		$this->class04tramite->setAtributo('PU04ESTE',$_POST['PU04ESTE']);
	// 		$this->class04tramite->setAtributo('PU04ALTITUD',$_POST['PU04ALTITUD']);
	// 		$this->class04tramite->setAtributo('PU12IDTDESEC',$_POST['PU12IDTDESEC']);

	// 		$this->class04tramite->setAtributo('PU09IDDEG1',$_POST['PU09IDDEG1']);
	// 		$this->class04tramite->setAtributo('PU09IDDEG2',$_POST['PU09IDDEG2']);
	// 		$this->class04tramite->setAtributo('PU09IDDEG3',$_POST['PU09IDDEG3']);
	// 		$this->class04tramite->setAtributo('PU09IDDEG4',$_POST['PU09IDDEG4']);
	// 		$this->class04tramite->setAtributo('PU09IDDEG5',$_POST['PU09IDDEG5']);
	// 		$this->class04tramite->setAtributo('PU09IDDEG6',$_POST['PU09IDDEG6']);
	// 		$this->class04tramite->setAtributo('PU09IDDEG7',$_POST['PU09IDDEG7']);

	// 		$this->class04tramite->setAtributo('PU10IDASBIO1',$_POST['PU10IDASBIO1']);
	// 		$this->class04tramite->setAtributo('PU10IDASBIO2',$_POST['PU10IDASBIO2']);
	// 		$this->class04tramite->setAtributo('PU10IDASBIO3',$_POST['PU10IDASBIO3']);
	// 		$this->class04tramite->setAtributo('PU10IDASBIO4',$_POST['PU10IDASBIO4']);
	// 		$this->class04tramite->setAtributo('PU10IDASBIO5',$_POST['PU10IDASBIO5']);
	// 		$this->class04tramite->setAtributo('PU10IDASBIO6',$_POST['PU10IDASBIO6']);
	
 //            $this->class04tramite->setAtributo('PU13IDAAP1',$_POST['PU13IDAAP1']);
 //            $this->class04tramite->setAtributo('PU13IDAAP2',$_POST['PU13IDAAP2']);
	// 		$this->class04tramite->setAtributo('PU13IDAAP3',$_POST['PU13IDAAP3']);
	// 		$this->class04tramite->setAtributo('PU13IDAAP4',$_POST['PU13IDAAP4']);
	// 		$this->class04tramite->setAtributo('PU13IDAAP5',$_POST['PU13IDAAP5']);
	// 		$this->class04tramite->setAtributo('PU13IDAAP6',$_POST['PU13IDAAP6']);
	// 		$this->class04tramite->setAtributo('PU13IDAAP7',$_POST['PU13IDAAP7']);	
		
	// 	 	$this->class04tramite->setAtributo('PU06IDACTDES1',$_POST['PU06IDACTDES1']);
 //            $this->class04tramite->setAtributo('PU06IDACTDES2',$_POST['PU06IDACTDES2']);
	// 		$this->class04tramite->setAtributo('PU06IDACTDES3',$_POST['PU06IDACTDES3']);
	// 		$this->class04tramite->setAtributo('PU06IDACTDES4',$_POST['PU06IDACTDES4']);
	// 		$this->class04tramite->setAtributo('PU06IDACTDES5',$_POST['PU06IDACTDES5']);
	// 		$this->class04tramite->setAtributo('PU06IDACTDES6',$_POST['PU06IDACTDES6']);
	// 		$this->class04tramite->guardar();
	// 		header('location:?c=class04tramite&m=index');
	// 	}
	// 	else{
	// 		require_once 'view/header.php';
	// 		require_once 'view/class04tramite/agregar.php';
	// 		require_once 'view/footer.php';
	// 	}
	// }
	// public function editar()
	// {
	// 	if ($_POST) {
	// 		$this->class04tramite->setAtributo('PU04IDTRA',$_POST['PU04IDTRA']);
	// 		$this->class04tramite->setAtributo('PU04FETRA',$_POST['PU04FETRA']);
	// 		$this->class04tramite->setAtributo('PU07IDTFR',$_POST['PU07IDTFR']);
	// 		$this->class04tramite->setAtributo('PU04NORTE',$_POST['PU04NORTE']);
	// 		$this->class04tramite->setAtributo('PU04ESTE',$_POST['PU04ESTE']);
	// 		$this->class04tramite->setAtributo('PU04ALTITUD',$_POST['PU04ALTITUD']);
	// 		$this->class04tramite->setAtributo('PU12IDTDESEC',$_POST['PU12IDTDESEC']);

	// 		$this->class04tramite->setAtributo('PU09IDDEG1',$_POST['PU09IDDEG1']);
	// 		$this->class04tramite->setAtributo('PU09IDDEG2',$_POST['PU09IDDEG2']);
	// 		$this->class04tramite->setAtributo('PU09IDDEG3',$_POST['PU09IDDEG3']);
	// 		$this->class04tramite->setAtributo('PU09IDDEG4',$_POST['PU09IDDEG4']);
	// 		$this->class04tramite->setAtributo('PU09IDDEG5',$_POST['PU09IDDEG5']);
	// 		$this->class04tramite->setAtributo('PU09IDDEG6',$_POST['PU09IDDEG6']);
	// 		$this->class04tramite->setAtributo('PU09IDDEG7',$_POST['PU09IDDEG7']);

	// 		$this->class04tramite->setAtributo('PU10IDASBIO1',$_POST['PU10IDASBIO1']);
	// 		$this->class04tramite->setAtributo('PU10IDASBIO2',$_POST['PU10IDASBIO2']);
	// 		$this->class04tramite->setAtributo('PU10IDASBIO3',$_POST['PU10IDASBIO3']);
	// 		$this->class04tramite->setAtributo('PU10IDASBIO4',$_POST['PU10IDASBIO4']);
	// 		$this->class04tramite->setAtributo('PU10IDASBIO5',$_POST['PU10IDASBIO5']);
	// 		$this->class04tramite->setAtributo('PU10IDASBIO6',$_POST['PU10IDASBIO6']);
	
 //            $this->class04tramite->setAtributo('PU13IDAAP1',$_POST['PU13IDAAP1']);
 //            $this->class04tramite->setAtributo('PU13IDAAP2',$_POST['PU13IDAAP2']);
	// 		$this->class04tramite->setAtributo('PU13IDAAP3',$_POST['PU13IDAAP3']);
	// 		$this->class04tramite->setAtributo('PU13IDAAP4',$_POST['PU13IDAAP4']);
	// 		$this->class04tramite->setAtributo('PU13IDAAP5',$_POST['PU13IDAAP5']);
	// 		$this->class04tramite->setAtributo('PU13IDAAP6',$_POST['PU13IDAAP6']);
	// 		$this->class04tramite->setAtributo('PU13IDAAP7',$_POST['PU13IDAAP7']);	
		
	// 	 	$this->class04tramite->setAtributo('PU06IDACTDES1',$_POST['PU06IDACTDES1']);
 //            $this->class04tramite->setAtributo('PU06IDACTDES2',$_POST['PU06IDACTDES2']);
	// 		$this->class04tramite->setAtributo('PU06IDACTDES3',$_POST['PU06IDACTDES3']);
	// 		$this->class04tramite->setAtributo('PU06IDACTDES4',$_POST['PU06IDACTDES4']);
	// 		$this->class04tramite->setAtributo('PU06IDACTDES5',$_POST['PU06IDACTDES5']);
	// 		$this->class04tramite->setAtributo('PU06IDACTDES6',$_POST['PU06IDACTDES6']);
	// 		$this->class04tramite->actualizar();
	// 		header('location:?c=class04tramite&m=index');
	// 	}
	// 	else{
	// 		$this->class04tramite = $this->class04tramite->buscar($_REQUEST['id']);
	// 		require_once 'view/header.php';
	// 		require_once 'view/class04tramite/editar.php';
	// 		require_once 'view/footer.php';
	// 	}
	// }

	// public function eliminar()
	// {
	// 	$this->class04tramite->setAtributo('PU04IDTRA',$_REQUEST['id']);
	// 	$this->class04tramite->eliminar();
	// 	header('location:?c=class04tramite&m=index');
	// }

	// public function ver()
	// {
	// 	$this->class04tramite = $this->class04tramite->buscar($_REQUEST['id']);
	// 	require_once 'view/header.php';
	// 	require_once 'view/class04tramite/ver.php';
	// 	require_once 'view/footer.php';
	// }
}
?>