<?php 
require_once 'model/class04inspeccion.php';
class class04inspeccionController
{
	private $class04inspeccion;
	function __construct()
	{
		$this->class04inspeccion = new class04inspeccion();
	}
	public function index()
	{
		require_once 'view/header.php';
		require_once 'view/class04inspeccion/index.php';
		require_once 'view/footer.php';
	}
	public function agregar()
	{
		if ($_POST) {
			$this->class04inspeccion->setAtributo('PU04IDTRA',$_POST['PU04IDTRA']);
			$this->class04inspeccion->setAtributo('PU04FETRA',$_POST['PU04FETRA']);
			$this->class04inspeccion->setAtributo('PU07IDTFR',$_POST['PU07IDTFR']);
			$this->class04inspeccion->setAtributo('PU04NORTE',$_POST['PU04NORTE']);
			$this->class04inspeccion->setAtributo('PU04ESTE',$_POST['PU04ESTE']);
			$this->class04inspeccion->setAtributo('PU04ALTITUD',$_POST['PU04ALTITUD']);
			$this->class04inspeccion->setAtributo('PU12IDTDESEC',$_POST['PU12IDTDESEC']);

			$this->class04inspeccion->setAtributo('PU09IDDEG1',$_POST['PU09IDDEG1']);
			$this->class04inspeccion->setAtributo('PU09IDDEG2',$_POST['PU09IDDEG2']);
			$this->class04inspeccion->setAtributo('PU09IDDEG3',$_POST['PU09IDDEG3']);
			$this->class04inspeccion->setAtributo('PU09IDDEG4',$_POST['PU09IDDEG4']);
			$this->class04inspeccion->setAtributo('PU09IDDEG5',$_POST['PU09IDDEG5']);
			$this->class04inspeccion->setAtributo('PU09IDDEG6',$_POST['PU09IDDEG6']);
			$this->class04inspeccion->setAtributo('PU09IDDEG7',$_POST['PU09IDDEG7']);

			$this->class04inspeccion->setAtributo('PU10IDASBIO1',$_POST['PU10IDASBIO1']);
			$this->class04inspeccion->setAtributo('PU10IDASBIO2',$_POST['PU10IDASBIO2']);
			$this->class04inspeccion->setAtributo('PU10IDASBIO3',$_POST['PU10IDASBIO3']);
			$this->class04inspeccion->setAtributo('PU10IDASBIO4',$_POST['PU10IDASBIO4']);
			$this->class04inspeccion->setAtributo('PU10IDASBIO5',$_POST['PU10IDASBIO5']);
			$this->class04inspeccion->setAtributo('PU10IDASBIO6',$_POST['PU10IDASBIO6']);
	
            $this->class04inspeccion->setAtributo('PU13IDAAP1',$_POST['PU13IDAAP1']);
            $this->class04inspeccion->setAtributo('PU13IDAAP2',$_POST['PU13IDAAP2']);
			$this->class04inspeccion->setAtributo('PU13IDAAP3',$_POST['PU13IDAAP3']);
			$this->class04inspeccion->setAtributo('PU13IDAAP4',$_POST['PU13IDAAP4']);
			$this->class04inspeccion->setAtributo('PU13IDAAP5',$_POST['PU13IDAAP5']);
			$this->class04inspeccion->setAtributo('PU13IDAAP6',$_POST['PU13IDAAP6']);
			$this->class04inspeccion->setAtributo('PU13IDAAP7',$_POST['PU13IDAAP7']);	
		
		 	$this->class04inspeccion->setAtributo('PU06IDACTDES1',$_POST['PU06IDACTDES1']);
            $this->class04inspeccion->setAtributo('PU06IDACTDES2',$_POST['PU06IDACTDES2']);
			$this->class04inspeccion->setAtributo('PU06IDACTDES3',$_POST['PU06IDACTDES3']);
			$this->class04inspeccion->setAtributo('PU06IDACTDES4',$_POST['PU06IDACTDES4']);
			$this->class04inspeccion->setAtributo('PU06IDACTDES5',$_POST['PU06IDACTDES5']);
			$this->class04inspeccion->setAtributo('PU06IDACTDES6',$_POST['PU06IDACTDES6']);
			$this->class04inspeccion->guardar();
			header('location:?c=class04inspeccion&m=index');
		}
		else{
			require_once 'view/header.php';
			require_once 'view/class04inspeccion/agregar.php';
			require_once 'view/footer.php';
		}
	}
	public function editar()
	{
		if ($_POST) {
			$this->class04inspeccion->setAtributo('PU04IDTRA',$_POST['PU04IDTRA']);
			$this->class04inspeccion->setAtributo('PU04FETRA',$_POST['PU04FETRA']);
			$this->class04inspeccion->setAtributo('PU07IDTFR',$_POST['PU07IDTFR']);
			$this->class04inspeccion->setAtributo('PU04NORTE',$_POST['PU04NORTE']);
			$this->class04inspeccion->setAtributo('PU04ESTE',$_POST['PU04ESTE']);
			$this->class04inspeccion->setAtributo('PU04ALTITUD',$_POST['PU04ALTITUD']);
			$this->class04inspeccion->setAtributo('PU12IDTDESEC',$_POST['PU12IDTDESEC']);

			$this->class04inspeccion->setAtributo('PU09IDDEG1',$_POST['PU09IDDEG1']);
			$this->class04inspeccion->setAtributo('PU09IDDEG2',$_POST['PU09IDDEG2']);
			$this->class04inspeccion->setAtributo('PU09IDDEG3',$_POST['PU09IDDEG3']);
			$this->class04inspeccion->setAtributo('PU09IDDEG4',$_POST['PU09IDDEG4']);
			$this->class04inspeccion->setAtributo('PU09IDDEG5',$_POST['PU09IDDEG5']);
			$this->class04inspeccion->setAtributo('PU09IDDEG6',$_POST['PU09IDDEG6']);
			$this->class04inspeccion->setAtributo('PU09IDDEG7',$_POST['PU09IDDEG7']);

			$this->class04inspeccion->setAtributo('PU10IDASBIO1',$_POST['PU10IDASBIO1']);
			$this->class04inspeccion->setAtributo('PU10IDASBIO2',$_POST['PU10IDASBIO2']);
			$this->class04inspeccion->setAtributo('PU10IDASBIO3',$_POST['PU10IDASBIO3']);
			$this->class04inspeccion->setAtributo('PU10IDASBIO4',$_POST['PU10IDASBIO4']);
			$this->class04inspeccion->setAtributo('PU10IDASBIO5',$_POST['PU10IDASBIO5']);
			$this->class04inspeccion->setAtributo('PU10IDASBIO6',$_POST['PU10IDASBIO6']);
	
            $this->class04inspeccion->setAtributo('PU13IDAAP1',$_POST['PU13IDAAP1']);
            $this->class04inspeccion->setAtributo('PU13IDAAP2',$_POST['PU13IDAAP2']);
			$this->class04inspeccion->setAtributo('PU13IDAAP3',$_POST['PU13IDAAP3']);
			$this->class04inspeccion->setAtributo('PU13IDAAP4',$_POST['PU13IDAAP4']);
			$this->class04inspeccion->setAtributo('PU13IDAAP5',$_POST['PU13IDAAP5']);
			$this->class04inspeccion->setAtributo('PU13IDAAP6',$_POST['PU13IDAAP6']);
			$this->class04inspeccion->setAtributo('PU13IDAAP7',$_POST['PU13IDAAP7']);	
		
		 	$this->class04inspeccion->setAtributo('PU06IDACTDES1',$_POST['PU06IDACTDES1']);
            $this->class04inspeccion->setAtributo('PU06IDACTDES2',$_POST['PU06IDACTDES2']);
			$this->class04inspeccion->setAtributo('PU06IDACTDES3',$_POST['PU06IDACTDES3']);
			$this->class04inspeccion->setAtributo('PU06IDACTDES4',$_POST['PU06IDACTDES4']);
			$this->class04inspeccion->setAtributo('PU06IDACTDES5',$_POST['PU06IDACTDES5']);
			$this->class04inspeccion->setAtributo('PU06IDACTDES6',$_POST['PU06IDACTDES6']);
			$this->class04inspeccion->actualizar();
			header('location:?c=class04inspeccion&m=index');
		}
		else{
			$this->class04inspeccion = $this->class04inspeccion->buscar($_REQUEST['id']);
			require_once 'view/header.php';
			require_once 'view/class04inspeccion/editar.php';
			require_once 'view/footer.php';
		}
	}

	public function eliminar()
	{
		$this->class04inspeccion->setAtributo('PU04IDTRA',$_REQUEST['id']);
		$this->class04inspeccion->eliminar();
		header('location:?c=class04inspeccion&m=index');
	}

	public function ver()
	{
		$this->class04inspeccion = $this->class04inspeccion->buscar($_REQUEST['id']);
		require_once 'view/header.php';
		require_once 'view/class04inspeccion/ver.php';
		require_once 'view/footer.php';
	}
}
?>