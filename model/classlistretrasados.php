<?php 
require_once 'conexion.php';

class classlistretrasados extends Conexion
{
	private $PU04IDTRA;
	private $PU04FETRA;
	private $PU04ESTADO;
	private $conexion;
	
	function __construct()
	{
		$this->conexion = new Conexion();
	}
	
	public function listarRetrasado()
	{
		$sql = "CALL SP04_TRAMITE_MOSTRARRETRASADOS();";
		$result = $this->conexion->consultaRetorno($sql);
		return $result;
	}
	
}
 ?>