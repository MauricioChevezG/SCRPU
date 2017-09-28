<?php 
require_once 'conexion.php';

class puestos  extends Conexion
{
	private $PU03IDPUES;
	private $PU03PUESTO;

	private $conexion;
	
	function __construct()
	{
		$this->conexion = new Conexion();
	}
	
	public function setAtributo($PU03PUESTO, $valor)
	{
		$this->$PU03PUESTO = ucfirst(strtolower($valor)); 
	}

	public function getAtributo($PU03PUESTO)
	{
		return $this->$PU03PUESTO;
	}

	public function buscar($PU03IDPUES)
	{
		$sql = "SELECT * FROM PU03PUESTOS WHERE PU03IDPUES ='".$PU03IDPUES."';";
		$result = $this->conexion->ConsultaRetorno($sql);
		$puestos = $this->convertToPuestos($result);
		return $puestos;
	}

	public function listar()
	{
		$sql = "SELECT * FROM pu03puestos ;";
		$result = $this->conexion->ConsultaRetorno($sql);
		return $result;
	}

	public function guardar()
	{
		$sql = "CALL SP02_PUESTOS_GUARDAR ('$this->PU03IDPUES','$this->PU03PUESTO');";
		$this->conexion->ConsultaSimple($sql);
	}

	public function actualizar()
	{
		$sql = "CALL SP02_PUESTOS_ACTUALIZAR ('$this->PU03IDPUES','$this->PU03PUESTO');";
		$this->conexion->ConsultaSimple($sql);
	}

	public function eliminar()
	{
		$sql = "CALL SP02_PUESTOS_ELIMINAR ('$this->PU03IDPUES');";
		$this->conexion->ConsultaSimple($sql);
	}

	public function convertToPuestos($result)
	{
		$puestos = new puestos();
		while ($row = mysqli_fetch_array($result)) {
			$puestos->setAtributo('PU03IDPUES',$row[0]);
			$puestos->setAtributo('PU03PUESTO',$row[1]);
		}
		return $puestos;
	}
}
 ?>