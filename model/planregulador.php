<?php 
require_once 'conexion.php';

class planregulador  extends Conexion
{
	private $PU26IDPLAN;
	private $PU26PLNDESC;


	private $conexion;
	
	function __construct()
	{
		$this->conexion = new Conexion();
	}
	//Manda un atributo convertido en minuscula, o ya sea solamente el primer caracter
	public function setAtributo($PU26PLNDESC, $valor)
	{
		$this->$PU26PLNDESC = ucfirst(strtolower($valor));//Cualquier data al introducir en Mayuscula sera convertido en minuscula
	}

	public function getAtributo($PU26PLNDESC)
	{
		return $this->$PU26PLNDESC;
	}

	public function buscar($PU26IDPLAN)
	{
		$sql = "SELECT * FROM pu26planreg WHERE PU26IDPLAN ='". $PU26IDPLAN ."';";
		$result = $this->conexion->consultaRetorno($sql);
		$planregulador = $this->convertToPlanregulador($result);
		return $planregulador;
	}

	public function listar()
	{
		$sql = "SELECT * FROM pu26planreg ;";
		$result = $this->conexion->consultaRetorno($sql);
		return $result;
	}

	public function guardar()
	{
		$sql = "CALL SP26_PLANREG_GUARDAR('$this->PU26IDPLAN','$this->PU26PLNDESC')";
		$this->conexion->consultaSimple($sql);
	}

	public function actualizar()
	{
		$sql = "CALL SP26_PLANREG_ACTUALIZAR('$this->PU26IDPLAN','$this->PU26PLNDESC')";
		$this->conexion->consultaSimple($sql);
	}

	public function eliminar()
	{
		$sql = "CALL SP26_PLANREG_ELIMINAR('$this->PU26IDPLAN')";
		$this->conexion->consultaSimple($sql);
	}

	public function convertToPlanregulador($result)
	{
		$planregulador = new planregulador();
		while ($row = mysqli_fetch_array($result)) {
			$planregulador->setAtributo('PU26IDPLAN',$row[0]);
			$planregulador->setAtributo('PU26PLNDESC',$row[1]);
		
		}
		return $planregulador;
	}
}
 ?>