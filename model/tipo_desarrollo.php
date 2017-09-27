<?php 
require_once 'conexion.php';
//`pu12tipdesec`
//`PU12IDTDESEC``PU12TIPODES`
class tipo_desarrollo  extends Conexion
{
	
	private $PU12IDTDESEC;
	private $PU12TIPODES;

	private $conexion;
	
	function __construct()
	{
		$this->conexion = new Conexion();
	}
	//Manda un atributo convertido en minuscula, o ya sea solamente el primer caracter
	public function setAtributo($PU12TIPODES, $valor)
	{
		$this->$PU12TIPODES = ucfirst(strtolower($valor));//Cualquier data al introducir en Mayuscula sera convertido en minuscula
	}

	public function getAtributo($PU12TIPODES)
	{
		return $this->$PU12TIPODES;
	}

	public function buscar($PU12IDTDESEC)
	{
		$sql = "SELECT * FROM pu12tipdesec WHERE PU12IDTDESEC ='". $PU12IDTDESEC ."';";
		$result = $this->conexion->consultaRetorno($sql);
		$tipo_desarrollo = $this->convertTotipo_desarrollo($result);
		return $tipo_desarrollo;
	}

	public function listar()
	{
		$sql = "SELECT * FROM pu12tipdesec ;";
		$result = $this->conexion->consultaRetorno($sql);
		return $result;
	}

	public function guardar()
	{
		$sql = "call SP09_TIPDESEC_GUARDAR('$this->PU12IDTDESEC','$this->PU12TIPODES')";
		$this->conexion->consultaSimple($sql);
	}

	public function actualizar()
	{
		$sql = "call SP09_TIPDESEC_ACTUALIZAR('$this->PU12IDTDESEC','$this->PU12TIPODES')";
		$this->conexion->consultaSimple($sql);
	}

	public function eliminar()
	{
		$sql = "call SP09_TIPDESEC_ELIMINAR('$this->PU12IDTDESEC')";
		$this->conexion->consultaSimple($sql);
	}

	public function convertTotipo_desarrollo($result)
	{
		$tipo_desarrollo = new tipo_desarrollo();
		while ($row = mysqli_fetch_array($result)) {
			$tipo_desarrollo->setAtributo('PU12IDTDESEC',$row[0]);
			$tipo_desarrollo->setAtributo('PU12TIPODES',$row[1]);
	
		}
		return $tipo_desarrollo;
	}
}
 ?>