<?php 
require_once 'conexion.php';

class clases_34  extends Conexion
{
	private $PU34IDCLAS;
	private $PU34DESCLA;


	private $conexion;
	
	function __construct()
	{
		$this->conexion = new Conexion();
	}
	//Manda un atributo convertido en minuscula, o ya sea solamente el primer caracter
	public function setAtributo($PU34DESCLA, $valor)
	{
		$this->$PU34DESCLA = ucfirst(strtolower($valor));//Cualquier data al introducir en Mayuscula sera convertido en minuscula
	}

	public function getAtributo($PU34DESCLA)
	{
		return $this->$PU34DESCLA;
	}

	public function buscar($PU34IDCLAS)
	{
		$sql = "SELECT * FROM pu34clases WHERE PU34IDCLAS ='". $PU34IDCLAS ."';";
		$result = $this->conexion->consultaRetorno($sql);
		$clases_34 = $this->convertToclases_34($result);
		return $clases_34;
	}

	public function listar()
	{
		$sql = "SELECT * FROM pu34clases ;";
		$result = $this->conexion->consultaRetorno($sql);
		return $result;
	}

	public function guardar()
	{
		$sql = "CALL SP34_CLASES_GUARDAR('$this->PU34IDCLAS','$this->PU34DESCLA')";
		$this->conexion->consultaSimple($sql);
	}

	public function actualizar()
	{
		$sql = "CALL SP34_CLASES_ACTUALIZAR('$this->PU34IDCLAS','$this->PU34DESCLA')";
		$this->conexion->consultaSimple($sql);
	}

	public function eliminar()
	{
		$sql = "CALL SP34_CLASES_ELIMINAR('$this->PU34IDCLAS')";
		$this->conexion->consultaSimple($sql);
	}

	public function convertToclases_34($result)
	{
		$clases_34 = new clases_34();
		while ($row = mysqli_fetch_array($result)) {
			$clases_34->setAtributo('PU34IDCLAS',$row[0]);
			$clases_34->setAtributo('PU34DESCLA',$row[1]);
		
		}
		return $clases_34;
	}
}
 ?>