<?php 
require_once 'conexion.php';

class class04listespaciogeo extends Conexion
{

	private $conexion;
	function __construct()
	{
		$this->conexion = new Conexion();
	}
	
	
	public function listar()
	{
		$sql = "call SP09_DESCEG_MOSTRAR();";
		$result = $this->conexion->consultaRetorno($sql);
		return $result;
	}
	
////////////////////////////////////////////////////////////////////////////////////////////////
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