<?php 
require_once 'conexion.php';

class class04ingresotramite  extends Conexion
{
	private $PU04IDTRA;
	private $PU04DESCRIPCIONLUGAR;

	private $conexion;
	
	function __construct()
	{
		$this->conexion = new Conexion();
	}
	
	public function setAtributo($PU04DESCRIPCIONLUGAR, $valor)
	{
		$this->$PU04DESCRIPCIONLUGAR = ucfirst(strtolower($valor)); 
	}

	public function getAtributo($PU04DESCRIPCIONLUGAR)
	{
		return $this->$PU04DESCRIPCIONLUGAR;
	}

	public function buscar($PU04IDTRA)
	{
		$sql = "CALL SP04_REGTRAMITEINFO_BUSCAR ('".$PU04IDTRA."');";
		$result = $this->conexion->consultaRetorno($sql);
		$cliente = $this->convertToclass04ingresotramite($result);
		return $cliente;
	}

	public function listar()
	{
		$sql = "CALL SP00_LISTAR_INGRESO_TRAMITE();";
		$result = $this->conexion->consultaRetorno($sql);
		return $result;
	}

	public function guardar()
	{
		$sql = "CALL SP04_REGTRAMITEINFO_GUARDAR ('$this->PU04IDTRA','$this->PU04DESCRIPCIONLUGAR');";
		$this->conexion->consultaSimple($sql);
	}

	public function actualizar()
	{
		$sql = "CALL SP04_REGTRAMITEINFO_ACTUALIZAR ('$this->PU04IDTRA','$this->PU04DESCRIPCIONLUGAR');";
		$this->conexion->consultaSimple($sql);
	}

	public function eliminar()
	{
		$sql = "CALL SP04_REGTRAMITEINFO_ELIMINAR('$this->PU04IDTRA');";
		$this->conexion->consultaSimple($sql);
	}

	public function convertToclass04ingresotramite($result)
	{
		$class04ingresotramite = new class04ingresotramite();
		while ($row = mysqli_fetch_array($result)) {
			$class04ingresotramite->setAtributo('PU04IDTRA',$row[0]);
			$class04ingresotramite->setAtributo('PU04DESCRIPCIONLUGAR',$row[1]);
		}
		return $class04ingresotramite;
	}
}
 ?>