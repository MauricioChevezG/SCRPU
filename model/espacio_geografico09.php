<?php 
require_once 'conexion.php';
//`pu09desceg`
//`PU09IDDEG``PU09DESCREG`
class espacio_geografico09  extends Conexion
{
	
	private $PU09IDDEG;
	private $PU09DESCREG;

	private $conexion;
	
	function __construct()
	{
		$this->conexion = new Conexion();
	}
	//Manda un atributo convertido en minuscula, o ya sea solamente el primer caracter
	public function setAtributo($PU09DESCREG, $valor)
	{
		$this->$PU09DESCREG = ucfirst(strtolower($valor));//Cualquier data al introducir en Mayuscula sera convertido en minuscula
	}

	public function getAtributo($PU09DESCREG)
	{
		return $this->$PU09DESCREG;
	}

	public function buscar($PU09IDDEG)
	{
		$sql = "SELECT * FROM pu09desceg WHERE PU09IDDEG ='". $PU09IDDEG ."';";
		$result = $this->conexion->consultaRetorno($sql);
		$espacio_geografico09 = $this->convertToespacio_geografico09($result);
		return $espacio_geografico09;
	}

	public function listar()
	{
		$sql = "SELECT * FROM pu09desceg ;";
		$result = $this->conexion->consultaRetorno($sql);
		return $result;
	}

	public function guardar()
	{
		$sql = "call SP05_DESCEG_GUARDAR('$this->PU09IDDEG','$this->PU09DESCREG')";
		$this->conexion->consultaSimple($sql);
	}

	public function actualizar()
	{
		$sql = "call SP05_DESCEG_ACTUALIZAR('$this->PU09IDDEG','$this->PU09DESCREG')";
		$this->conexion->consultaSimple($sql);
	}

	public function eliminar()
	{
		$sql = "call SP05_DESCEG_ELIMINAR('$this->PU09IDDEG')";
		$this->conexion->consultaSimple($sql);
	}

	public function convertToespacio_geografico09($result)
	{
		$espacio_geografico09 = new espacio_geografico09();
		while ($row = mysqli_fetch_array($result)) {
			$espacio_geografico09->setAtributo('PU09IDDEG',$row[0]);
			$espacio_geografico09->setAtributo('PU09DESCREG',$row[1]);
	
		}
		return $espacio_geografico09;
	}
}
 ?>