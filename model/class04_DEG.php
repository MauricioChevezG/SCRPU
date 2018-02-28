<?php 
require_once 'conexion.php';

class class04_DEG  extends Conexion
{
	
	private $PU04IDTRA;
	private $conexion;
	
	function __construct()
	{
		$this->conexion = new Conexion();
	}
	
	public function setAtributo($PU04IDTRA, $valor)
	{
		$this->$PU04IDTRA = ucfirst(strtolower($valor)); 
	}



	public function listar_DEG()
	{
		$sql = "call SP09_DESCEG_MOSTRAR();";
		$result = $this->conexion->consultaRetorno($sql);
		return $result;
	}

	public function guardar_DEG($pu09tradeg)
	{
		foreach ($pu09tradeg as $tradegId) {			
			$sql2 = "call SP09_DESCEG_TRA_GUARDAR('$this->PU04IDTRA','$tradegId');";
			$this->conexion->consultaSimple($sql2);
		}
	}
	
}
 ?>