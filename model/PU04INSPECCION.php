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

	
	
 	
 	public function guardar($pu09tradeg,$pu10aspbio,$pu13aap,$pu05actdes,$pu07terrft,$pu12tipdesec)
	{
		$sql = "call SP04_REGISTROTR_GUARDAR('$this->PU04IDTRA','$this->PU04FETRA',	'$this->PU04NORTE',
		'$this->PU04ESTE','$this->PU04ALTITUD');";
		$this->conexion->consultaSimple($sql);
		//Inserción de aspecto a la tabla pivote
		foreach ($pu09tradeg as $tradegId) {			
			$sql2 = "call SP09_DESCEG_TRA_GUARDAR('$this->PU04IDTRA','$tradegId');";
			$this->conexion->consultaSimple($sql2);
		}
		//Inserción de pu10aspbio a la tabla pivote
		foreach ($pu10aspbio as $aspbioId) {			
			$sql3 = "CALL SP10_ASPBIO_TRA_GUARDAR('$this->PU04IDTRA','$aspbioId');";
			$this->conexion->consultaSimple($sql3);
		}
		//Inserción de pu13aap a la tabla pivote
		foreach ($pu13aap as $pu13aapId) {			
			$sql4 = "CALL SP13_AAREP_TRA_GUARDAR('$this->PU04IDTRA','$pu13aapId');";
			$this->conexion->consultaSimple($sql4);
		}
		//Inserción de pu05actdes a la tabla pivote
		foreach ($pu05actdes as $pu05actdesId) {			
			$sql4 = "CALL SP06_ACTDES_TRA_GUARDAR('$this->PU04IDTRA','$pu05actdesId');";
			$this->conexion->consultaSimple($sql4);
		}//Inserción de pu05actdes a la tabla pivote
		foreach ($pu07terrft as $pu07terrftId) {			
			$sql9 = "CALL SP07_TERRFR_TRA_GUARDAR('$this->PU04IDTRA','$pu07terrftId');";
			$this->conexion->consultaSimple($sql9);
		}
		foreach ($pu12tipdesec as $pu12tipdesecId) {			
			$sql9 = "CALL SP12_TIPODESEC_TRA_GUARDAR('$this->PU04IDTRA','$pu12tipdesecId');";
			$this->conexion->consultaSimple($sql9);
		}
	}

	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	///
	///
	public function listar()
	{
		$sql = "CALL SP04_REGISTROTRA_MOSTRAR();";
		$result = $this->conexion->consultaRetorno($sql);
		return $result;
	}
	/////////////////////////////////////////////////////////////
	public function buscar($idtramite)
	{
		$sql4 = "SELECT * FROM pu04regtra WHERE PU04IDTRA ='".$idtramite."'";
		$result = $this->conexion->consultaRetorno($sql4);
		$tramite = $this->convertToTramite($result);
		return $tramite;
	}

/*	public function eliminar()
	{
		$sql = "DELETE FROM tramite WHERE id = '$this->id';";	
		$this->conexion->consultaSimple($sql);
	}
//No va a eliminar porque tiene llaves foráneas*/
	public function convertToTramite($result)
	{
		$tramite = new PU04INSPECCION();
		while ($row = mysqli_fetch_array($result)) {
			$tramite->setAtributo('PU04IDTRA',$row[0]);
			$tramite->setAtributo('PU04FETRA',$row[1]);
			$tramite->setAtributo('PU04NORTE',$row[2]);
			$tramite->setAtributo('PU04ESTE',$row[3]);			
			$tramite->setAtributo('PU04ALTITUD',$row[4]);
	
		}
		return $tramite;
	}
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	public function eliminarActividades($idtramite)
	{
		$sql5 = "DELETE FROM pu05unitra WHERE PU04IDTRA = '".$idtramite."';";	
		$this->conexion->consultaSimple($sql5);		
	}

	public function asignarActividades($idtramite, $idactdes)
	{
		$sql6 = "INSERT INTO pu05unitra VALUES ('".$idtramite."','".$idactdes."');";
		$this->conexion->consultaSimple($sql6);	
	}

	public function tieneActividades($idtramite, $idactdes)
	{
		
		$sql7 = "SELECT COUNT(*) AS total FROM pu05unitra WHERE PU04IDTRA='".$idtramite."' AND PU06IDACTDES='".$idactdes."';";
		$result = $this->conexion->consultaRetorno($sql7);
		$row = mysqli_fetch_array($result);		
		return $row;

	
	}
	public function getTodasActividades()
	{
		$sql8 = "SELECT * FROM pu06actdes";
		$result = $this->conexion->consultaRetorno($sql8);
		return $result;
	}
}
?>
