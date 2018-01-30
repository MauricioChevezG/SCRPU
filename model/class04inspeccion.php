<?php 
require_once 'conexion.php';

class PU04INSPECCION extends Conexion
{
	private $PU04IDTRA;
	private $PU04FETRA;
	private $PU04NORTE;
	private $PU04ESTE;
	private $PU04ALTITUD;
	
	private $conexion;
	
	function __construct()
	{
		$this->conexion = new Conexion();
	}
	
	public function setAtributo($nombre, $valor)
	{
		$this->$nombre = ucfirst(strtolower($valor)); 
	}

	public function getAtributo($nombre)
	{
		return $this->$nombre;
	}

	public function listar()
	{
		$sql = "CALL SP04_REGISTROTRA_MOSTRAR();";
		$result = $this->conexion->consultaRetorno($sql);
		return $result;
	}

	public function guardar($pu07terrft,$pu12tipdesec)
/*	public function guardar($pu07terrft,$pu12tipdesec,$pu09tradeg,$pu10aspbio,$pu13aap,$pu05actdes)*/
	{
		$sql = "call SP04_REGISTROTR_GUARDAR('$this->PU04IDTRA','$this->PU04FETRA','$this->PU04NORTE',
		'$this->PU04ESTE','$this->PU04ALTITUD');";
		$this->conexion->consultaSimple($sql);
		
		foreach ($pu07terrft as $terrftId) {			
			$sql1 = "call SP07_TERRFT_TRA_GUARDAR('$this->PU04IDTRA','$terrftId');";
			$this->conexion->consultaSimple($sql1);
		}

		foreach ($pu12tipdesec as $tipdesecId) {			
			$sql2 = "call SP12_TIPDESEC_TRA_GUARDAR('$this->PU04IDTRA','$tipdesecId');";
			$this->conexion->consultaSimple($sql2);
		}
		
/*		//Inserción de aspecto a la tabla pivote
		foreach ($pu09tradeg as $tradegId) {			
			$sql3 = "call SP09_DESCEG_TRA_GUARDAR('$this->PU04IDTRA','$tradegId');";
			$this->conexion->consultaSimple($sql3);
		}
		//Inserción de pu10aspbio a la tabla pivote
		foreach ($pu10aspbio as $aspbioId) {			
			$sql4 = "CALL SP10_ASPBIO_TRA_GUARDAR('$this->PU04IDTRA','$aspbioId');";
			$this->conexion->consultaSimple($sql4);
		}
		//Inserción de pu13aap a la tabla pivote
		foreach ($pu13aap as $aapId) {			
			$sql5 = "CALL SP13_AAREP_TRA_GUARDAR('$this->PU04IDTRA','$aapId');";
			$this->conexion->consultaSimple($sql5);
		}
		//Inserción de pu13aap a la tabla pivote
		foreach ($pu05actdes as $actdesId) {			
			$sql6 = "CALL SP06_ACTDES_TRA_GUARDAR('$this->PU04IDTRA','$actdesId');";
			$this->conexion->consultaSimple($sql6);
		}*/
	}
}
?>