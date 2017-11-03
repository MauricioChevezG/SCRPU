<?php 
require_once 'conexion.php';

class classlistaceptados extends Conexion
{
	private $PU04IDTRA;
	private $PU04FETRA;
	private $PU04ESTADO;
	private $conexion;

	function __construct()
	{
		$this->conexion = new Conexion();
	}
	
	public function listarAceptados()
	{
		$sql = "CALL SP04_TRAMITE_MOSTRARACEPTADOS();";
		$result = $this->conexion->consultaRetorno($sql);
		return $result;
	}

}
 ?>