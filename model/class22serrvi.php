<?php 
require_once 'conexion.php';

class class22serrvi  extends Conexion
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
		$sql = "call SP22_SERRVI_BUSCAR('".$PU20IDDESAS."');";
		$result = $this->conexion->ConsultaRetorno($sql);
		$class22serrvi = $this->convertToclass22serrvi($result);
		return $class22serrvi;
	}

	public function listar()
	{
		$sql = "SP22_SERRVI_MOSTRAR();";
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

	public function convertToclass22serrvi($result)
	{
		$class22serrvi = new class22serrvi();
		while ($row = mysqli_fetch_array($result)) {
			$class22serrvi->setAtributo('PU22IDREDVI',$row[0]);
			$class22serrvi->setAtributo('PU22DESSVI',$row[1]);
			$class22serrvi->setAtributo('PU22OBSERV',$row[2]);
		}
		return $class22serrvi;
	}
}
 ?>