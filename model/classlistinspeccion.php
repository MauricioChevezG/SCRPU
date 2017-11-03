<?php 
require_once 'conexion.php';

class classlistinspeccion extends Conexion
{
	private $PU04IDTRA;
	private $PU04FETRA;
	private $PU04ESTADO;
	private $conexion;

	function __construct()
	{
		$this->conexion = new Conexion();
	}
	
	public function listarInspeccion()
	{
		$sql = "CALL SP04_TRAMITE_MOSTRARINSPECCION();";
		$result = $this->conexion->consultaRetorno($sql);
		return $result;
	}

}
 ?>