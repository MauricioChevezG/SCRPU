<?php 
require_once 'conexion.php';
//`pu10aspbio`
//`PU10IDASBIO``PU10DESCABIO`aspecto_biofisico
class aspecto_biofisico  extends Conexion
{
	
	private $PU10IDASBIO;
	private $PU10DESCABIO;

	private $conexion;
	
	function __construct()
	{
		$this->conexion = new Conexion();
	}
	//Manda un atributo convertido en minuscula, o ya sea solamente el primer caracter
	public function setAtributo($PU10DESCABIO, $valor)
	{
		$this->$PU10DESCABIO = ucfirst(strtolower($valor));//Cualquier data al introducir en Mayuscula sera convertido en minuscula
	}

	public function getAtributo($PU10DESCABIO)
	{
		return $this->$PU10DESCABIO;
	}

	public function buscar($PU10IDASBIO)
	{
		$sql = "SELECT * FROM pu10aspbio WHERE PU10IDASBIO ='". $PU10IDASBIO ."';";
		$result = $this->conexion->consultaRetorno($sql);
		$aspecto_biofisico = $this->convertToaspecto_biofisico($result);
		return $aspecto_biofisico;
	}

	public function listar()
	{
		$sql = "SELECT * FROM pu10aspbio ;";
		$result = $this->conexion->consultaRetorno($sql);
		return $result;
	}

	public function guardar()
	{
		$sql = "call SP06_ASPBIO_GUARDAR('$this->PU10IDASBIO','$this->PU10DESCABIO')";
		$this->conexion->consultaSimple($sql);
	}

	public function actualizar()
	{
		$sql = "call SP06_ASPBIO_ACTUALIZAR('$this->PU10IDASBIO','$this->PU10DESCABIO')";
		$this->conexion->consultaSimple($sql);
	}

	public function eliminar()
	{
		$sql = "call SP06_ASPBIO_ELIMINAR('$this->PU10IDASBIO')";
		$this->conexion->consultaSimple($sql);
	}

	public function convertToaspecto_biofisico($result)
	{
		$aspecto_biofisico = new aspecto_biofisico();
		while ($row = mysqli_fetch_array($result)) {
			$aspecto_biofisico->setAtributo('PU10IDASBIO',$row[0]);
			$aspecto_biofisico->setAtributo('PU10DESCABIO',$row[1]);
	
		}
		return $aspecto_biofisico;
	}
}
 ?>