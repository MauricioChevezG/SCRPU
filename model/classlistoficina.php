<?php 
require_once 'conexion.php';

class classlistoficina extends Conexion
{
	private $PU04IDTRA;
	private $PU04FETRA;
	private $PU04ESTADO;
	private $conexion;

	function __construct()
	{
		$this->conexion = new Conexion();
	}
	
	public function listarOficina()
	{
		$sql = "CALL SP04_TRAMITE_MOSTRAROFICINA();";
		$result = $this->conexion->consultaRetorno($sql);
		return $result;
	}

}
 ?>