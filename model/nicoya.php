<?php 
require_once 'conexion.php';

class nicoya  extends Conexion
{
	private $PU27IDUBIC;
	private $PU27DSCUBIC;


	private $conexion;
	
	function __construct()
	{
		$this->conexion = new Conexion();
	}
	//Manda un atributo convertido en minuscula, o ya sea solamente el primer caracter
	public function setAtributo($PU27DSCUBIC, $valor)
	{
		$this->$PU27DSCUBIC = ucfirst(strtolower($valor));//Cualquier data al introducir en Mayuscula sera convertido en minuscula
	}

	public function getAtributo($PU27DSCUBIC)
	{
		return $this->$PU27DSCUBIC;
	}

	public function buscar($PU27IDUBIC)
	{
		$sql = "SELECT * FROM pu27cuinic WHERE PU27IDUBIC ='". $PU27IDUBIC ."';";
		$result = $this->conexion->consultaRetorno($sql);
		$nicoya = $this->convertTonicoya($result);
		return $nicoya;
	}

	public function listar()
	{
		$sql = "SELECT * FROM pu27cuinic ;";
		$result = $this->conexion->consultaRetorno($sql);
		return $result;
	}

	public function guardar()
	{
		$sql = "CALL SP27_CUINIC_GUARDAR('$this->PU27IDUBIC','$this->PU27DSCUBIC')";
		$this->conexion->consultaSimple($sql);
	}

	public function actualizar()
	{
		$sql = "CALL SP27_CUINIC_ACTUALIZAR('$this->PU27IDUBIC','$this->PU27DSCUBIC')";
		$this->conexion->consultaSimple($sql);
	}

	public function eliminar()
	{
		$sql = "CALL SP27_CUINIC_ELIMINAR('$this->PU27IDUBIC')";
		$this->conexion->consultaSimple($sql);
	}

	public function convertTonicoya($result)
	{
		$nicoya = new nicoya();
		while ($row = mysqli_fetch_array($result)) {
			$nicoya->setAtributo('PU27IDUBIC',$row[0]);
			$nicoya->setAtributo('PU27DSCUBIC',$row[1]);
		
		}
		return $nicoya;
	}
}
 ?>