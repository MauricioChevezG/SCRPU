<?php 
require_once 'conexion.php';

class servicioredvial  extends Conexion
{
	private $PU22IDREDVI;
	private $PU22DESSVI;
	private $PU22OBSERV;

	private $conexion;
	
	function __construct()
	{
		$this->conexion = new Conexion();
	}
	//Manda un atributo convertido en minuscula, o ya sea solamente el primer caracter
	public function setAtributo($PU22DESSVI, $valor)
	{
		$this->$PU22DESSVI = ucfirst(strtolower($valor));//Cualquier data al introducir en Mayuscula sera convertido en minuscula
	}

	public function getAtributo($PU22DESSVI)
	{
		return $this->$PU22DESSVI;
	}

	public function buscar($PU22IDREDVI)
	{
		$sql = "SELECT * FROM PU22SERRVI WHERE PU22IDREDVI ='". $PU22IDREDVI ."';";
		$result = $this->conexion->ConsultaRetorno($sql);
		$servicioredvial = $this->convertToservicioredvial($result);
		return $servicioredvial;
	}

	public function listar()
	{
		$sql = "SELECT * FROM PU22SERRVI ;";
		$result = $this->conexion->ConsultaRetorno($sql);
		return $result;
	}

	public function guardar()
	{
		$sql = "call SP22_SERRVI_GUARDAR('$this->PU22IDREDVI','$this->PU22DESSVI','$this->PU22OBSERV')";
		$this->conexion->ConsultaSimple($sql);
	}

	public function actualizar()
	{
		$sql = "call SP22_SERRVI_ACTUALIZAR('$this->PU22IDREDVI','$this->PU22DESSVI','$this->PU22OBSERV')";
		$this->conexion->ConsultaSimple($sql);
	}

	public function eliminar()
	{
		$sql = "call SP22_SERRVI_ELIMINAR('$this->PU22IDREDVI')";
		$this->conexion->ConsultaSimple($sql);
	}

	public function convertToservicioredvial($result)
	{
		$servicioredvial = new servicioredvial();
		while ($row = mysqli_fetch_array($result)) {
			$servicioredvial->setAtributo('PU22IDREDVI',$row[0]);
			$servicioredvial->setAtributo('PU22DESSVI',$row[1]);
			$servicioredvial->setAtributo('PU22OBSERV',$row[2]);
		}
		return $servicioredvial;
	}
}
 ?>