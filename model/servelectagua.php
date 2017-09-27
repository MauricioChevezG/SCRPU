<?php 
require_once 'conexion.php';

class servelectagua  extends Conexion
{
	private $PU16IDSAE;
	private $PU16DESCAE;

	private $conexion;
	
	function __construct()
	{
		$this->conexion = new Conexion();
	}
	//Manda un atributo convertido en minuscula, o ya sea solamente el primer caracter
	public function setAtributo($PU16DESCAE, $valor)
	{
		$this->$PU16DESCAE = ucfirst(strtolower($valor));//Cualquier data al introducir en Mayuscula sera convertido en minuscula
	}

	public function getAtributo($PU16DESCAE)
	{
		return $this->$PU16DESCAE;
	}

	public function buscar($PU16IDSAE)
	{
		$sql = "SELECT * FROM pu16servae WHERE PU16IDSAE ='". $PU16IDSAE ."';";
		$result = $this->conexion->ConsultaRetorno($sql);
		$servelectagua = $this->convertToservelectagua($result);
		return $servelectagua;
	}

	public function listar()
	{
		$sql = "SELECT * FROM pu16servae ;";
		$result = $this->conexion->ConsultaRetorno($sql);
		return $result;
	}

	public function guardar()
	{
		$sql = "call SP16_SERVAE_GUARDAR('$this->PU16IDSAE','$this->PU16DESCAE')";
		$this->conexion->ConsultaSimple($sql);
	}

	public function actualizar()
	{
		$sql = "call SP16_SERVAE_ACTUALIZAR('$this->PU16IDSAE','$this->PU16DESCAE')";
		$this->conexion->ConsultaSimple($sql);
	}

	public function eliminar()
	{
		$sql = "call SP16_SERVAE_ELIMINAR('$this->PU16IDSAE')";
		$this->conexion->ConsultaSimple($sql);
	}

	public function convertToservelectagua($result)
	{
		$servelectagua = new servelectagua();
		while ($row = mysqli_fetch_array($result)) {
			$servelectagua->setAtributo('PU16IDSAE',$row[0]);
			$servelectagua->setAtributo('PU16DESCAE',$row[1]);
	
		}
		return $servelectagua;
	}
}
 ?>