<?php 
require_once 'conexion.php';

class classlistdenegados extends Conexion
{
	private $PU04IDTRA;
	private $PU04FETRA;
	private $PU04ESTADO;
	private $conexion;

	function __construct()
	{
		$this->conexion = new Conexion();
	}
	
	public function listarDenegados()
	{
		$sql = "CALL SP04_TRAMITE_MOSTRARDENEGADOS();";
		$result = $this->conexion->consultaRetorno($sql);
		return $result;
	}
}
 ?>