<?php 
require_once 'conexion.php';

class tipsue_35  extends Conexion
{
	private $PU35IDTIPS;
	private $PU35DESTIP;


	private $conexion;
	
	function __construct()
	{
		$this->conexion = new Conexion();
	}
	//Manda un atributo convertido en minuscula, o ya sea solamente el primer caracter
	public function setAtributo($PU35DESTIP, $valor)
	{
		$this->$PU35DESTIP = ucfirst(strtolower($valor));//Cualquier data al introducir en Mayuscula sera convertido en minuscula
	}

	public function getAtributo($PU35DESTIP)
	{
		return $this->$PU35DESTIP;
	}

	public function buscar($PU35IDTIPS)
	{
		$sql = "SELECT * FROM pu35tipsue WHERE PU35IDTIPS ='". $PU35IDTIPS ."';";
		$result = $this->conexion->consultaRetorno($sql);
		$tipsue_35 = $this->convertTotipsue_35($result);
		return $tipsue_35;
	}

	public function listar()
	{
		$sql = "SELECT * FROM pu35tipsue ;";
		$result = $this->conexion->consultaRetorno($sql);
		return $result;
	}

	public function guardar()
	{
		$sql = "CALL SP35_TIPSUE_GUARDAR('$this->PU35IDTIPS','$this->PU35DESTIP')";
		$this->conexion->consultaSimple($sql);
	}

	public function actualizar()
	{
		$sql = "CALL SP35_TIPSUE_ACTUALIZAR('$this->PU35IDTIPS','$this->PU35DESTIP')";
		$this->conexion->consultaSimple($sql);
	}

	public function eliminar()
	{
		$sql = "CALL SP35_TIPSUE_ELIMINAR('$this->PU35IDTIPS')";
		$this->conexion->consultaSimple($sql);
	}

	public function convertTotipsue_35($result)
	{
		$tipsue_35 = new tipsue_35();
		while ($row = mysqli_fetch_array($result)) {
			$tipsue_35->setAtributo('PU35IDTIPS',$row[0]);
			$tipsue_35->setAtributo('PU35DESTIP',$row[1]);
		
		}
		return $tipsue_35;
	}
}
 ?>