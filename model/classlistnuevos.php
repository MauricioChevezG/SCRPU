<?php 
require_once 'conexion.php';

class classlistnuevos extends Conexion
{
	private $PU04IDTRA;
	private $PU04FETRA;
	private $PU04ESTADO;
	private $conexion;

	function __construct()
	{
		$this->conexion = new Conexion();
	}
	
	public function listarNuevo()
	{
		$sql = "CALL SP04_TRAMITE_MOSTRARNUEVOS();";
		$result = $this->conexion->consultaRetorno($sql);
		return $result;
	}

}
 ?>