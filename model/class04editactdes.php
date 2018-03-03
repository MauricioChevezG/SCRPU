<?php 
require_once 'conexion.php';

class class04editactdes extends Conexion
{
	private $PU04IDTRA;
	private $conexion;
	
	
	function __construct()
	{
		$this->conexion = new Conexion();
	}
	
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	///
	///
		public function listar()
	{
		$sql = "call SP06_ACTDES_MOSTRAR()";
		$result = $this->conexion->consultaRetorno($sql);
		return $result;
	}
	/////////////////////////////////////////////////////////////
	public function buscar($idtramite)
	{
		$sql = "SELECT PU04IDTRA FROM pu04regtra WHERE PU04IDTRA ='".$idtramite."'";
		$result = $this->conexion->consultaRetorno($sql);
		$tramite = $this->convertToTramite($result);
		return $tramite;
	}


	public function convertToTramite($result)
	{
		$tramite = new class04editactdes();
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
	public function eliminarActividades($idtramite)
	{
		$sql = "DELETE FROM pu05unitra WHERE PU04IDTRA = '".$idtramite."';";	
		$this->conexion->consultaSimple($sql);		
	}

	public function asignarActividades($idtramite, $idactdes)
	{
		$sql = "INSERT INTO pu05unitra VALUES ('".$idtramite."','".$idactdes."');";
		$this->conexion->consultaSimple($sql);	
	}

	public function tieneActividades($idtramite, $idactdes)
	{
		
		$sql = "SELECT COUNT(*) AS total FROM pu05unitra WHERE PU04IDTRA='".$idtramite."' AND PU06IDACTDES='".$idactdes."';";
		$result = $this->conexion->consultaRetorno($sql);
		$row = mysqli_fetch_array($result);		
		return $row;

	
	}
	public function getTodasActividades()
	{
		$sql = "SELECT * FROM pu06actdes";
		$result = $this->conexion->consultaRetorno($sql);
		return $result;
	}
}
?>