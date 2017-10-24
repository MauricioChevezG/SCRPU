

<?php 
require_once 'conexion.php';

class class04inspeccion extends Conexion
{
	private $PU04IDTRA;
	private $PU04FETRA;
	private $PU04NORTE;
	private $PU04ESTE;
	private $PU04ALTITUD;
	private $PU07IDTFR;
	private $PU08IDGPS;
//ESPACIO GEOGRAFICO
	private $PU09IDDEG1;
	private $PU09IDDEG2;
	private $PU09IDDEG3;
	private $PU09IDDEG4;
	private $PU09IDDEG5;
	private $PU09IDDEG6;
	private $PU09IDDEG7;
//ASPECTO BIOFISICO
	private $PU10IDASBIO1;
	private $PU10IDASBIO2;
	private $PU10IDASBIO3;
	private $PU10IDASBIO4;
	private $PU10IDASBIO5;
	private $PU10IDASBIO6;
//TIPO DESARROLLO EN EL SECTOR	
	private $PU12IDTDESEC1;
	private $PU12IDTDESEC2;
	private $PU12IDTDESEC3;
	private $PU12IDTDESEC4;


//AFECTACION DE AREAS DE PROTECCION
	private $PU13IDAAP1;
	private $PU13IDAAP2;
	private $PU13IDAAP3;
	private $PU13IDAAP4;
	private $PU13IDAAP5;
	private $PU13IDAAP6;
	private $PU13IDAAP7;
	// private $PU15IDSERVI;


	private $conexion;
	
	function __construct()
	{
		$this->conexion = new Conexion();
	}
	
	public function setAtributo($PU04IDTRA, $valor)
	{
		$this->$PU04IDTRA = ($valor); 
	}

	public function getAtributo($PU04IDTRA)
	{
		return $this->$PU04IDTRA;
	}

	public function buscar($PU04IDTRA)
	{
		$sql = "CALL SP01_REGINFUSU_BUSCAR('".$PU04IDTRA."')";
		$result = $this->conexion->consultaRetorno($sql);
		$class04inspeccion = $this->convertToclass04inspeccion($result);
		return $class04inspeccion;
	}

	public function listar()
	{
		$sql = "CALL SP01_REGINFUSU_MOSTRARTODO();";
		$result = $this->conexion->consultaRetorno($sql);
		return $result;
	}

	public function guardar()
	{

		

		$sql = "call SP01_REGINFUSU_GUARDAR('$this->PU01CEDUSU','$this->PU01NOMUSU','$this->PU01APE1USU','$this->PU01APE2USU',
	'$this->PU02TELUSU','$this->PU02CORUSU','$this->PU03IDPUES','$this->PU02class04inspeccion','$this->PU02CLAVE')";	

		$this->conexion->consultaSimple($sql);
	}

	public function actualizar()
	{
		$sql = "call SP01_REGINFUSU_ACTUALIZAR('$this->PU01CEDUSU','$this->PU01NOMUSU','$this->PU01APE1USU','$this->PU01APE2USU',
	'$this->PU02TELUSU','$this->PU02CORUSU','$this->PU03IDPUES')";	

		$this->conexion->consultaSimple($sql);
	}

	public function eliminar()
	{
		$sql = "call SP01_REGINFUSU_ELIMINAR('$this->PU01CEDUSU')";	
		$this->conexion->consultaSimple($sql);
	}

	public function convertToclass04inspeccion($result)
	{
		$class04inspeccion = new class04inspeccion();
		while ($row = mysqli_fetch_array($result)) {
			$class04inspeccion->setAtributo('PU01CEDUSU',$row[0]);
			$class04inspeccion->setAtributo('PU01NOMUSU',$row[1]);
			$class04inspeccion->setAtributo('PU01APE1USU',$row[2]);
			$class04inspeccion->setAtributo('PU01APE2USU',$row[3]);
			$class04inspeccion->setAtributo('PU02TELUSU',$row[4]);
			$class04inspeccion->setAtributo('PU02CORUSU',$row[5]);
			$class04inspeccion->setAtributo('PU03IDPUES',$row[6]);
		}
		return $class04inspeccion;
	}
}
 ?>