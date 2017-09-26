<?php 
require_once 'conexion.php';

class actividad_desarrollar  extends Conexion
{
	
	private $PU06IDACTDES;
	private $PU06DESAD;

	private $conexion;
	
	function __construct()
	{
		$this->conexion = new Conexion();
	}
	//Manda un atributo convertido en minuscula, o ya sea solamente el primer caracter
	public function setAtributo($PU06DESAD, $valor)
	{
		$this->$PU06DESAD = ucfirst(strtolower($valor));//Cualquier data al introducir en Mayuscula sera convertido en minuscula
	}

	public function getAtributo($PU06DESAD)
	{
		return $this->$PU06DESAD;
	}

	public function buscar($PU06IDACTDES)
	{
		$sql = "SELECT * FROM pu06actdes WHERE PU06IDACTDES ='". $PU06IDACTDES ."';";
		$result = $this->conexion->consultaRetorno($sql);
		$actividad_desarrollar = $this->convertToactividad_desarrollar($result);
		return $actividad_desarrollar;
	}

	public function listar()
	{
		$sql = "SELECT * FROM PU06ACTDES ;";
		$result = $this->conexion->consultaRetorno($sql);
		return $result;
	}

	public function guardar()
	{
		$sql = "call SP04_ACTDES_GUARDAR('$this->PU06IDACTDES','$this->PU06DESAD')";
		$this->conexion->consultaSimple($sql);
	}

	public function actualizar()
	{
		$sql = "call SP04_ACTDES_ACTUALIZAR('$this->PU06IDACTDES','$this->PU06DESAD')";
		$this->conexion->consultaSimple($sql);
	}

	public function eliminar()
	{
		$sql = "call SP04_ACTDES_ELIMINAR('$this->PU06IDACTDES')";
		$this->conexion->consultaSimple($sql);
	}

	public function convertToactividad_desarrollar($result)
	{
		$actividad_desarrollar = new actividad_desarrollar();
		while ($row = mysqli_fetch_array($result)) {
			$actividad_desarrollar->setAtributo('PU06IDACTDES',$row[0]);
			$actividad_desarrollar->setAtributo('PU06DESAD',$row[1]);
	
		}
		return $actividad_desarrollar;
	}
}
 ?>