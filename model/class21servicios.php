<?php 
require_once 'conexion.php';
/**
* Existencia de casas frente a calle publica
*/
class class21servicios extends Conexion
{
	private $PU21IDSERVI;
	private $PU21DESCSERVI;

	private $conexion;
	function __construct()
	{
		$this->conexion = new Conexion();
	}
	//Manda un atributo convertido en minuscula, o ya sea solamente el primer caracter
	public function setAtributo($PU21DESCSERVI,$valor){
		$this->$PU21DESCSERVI = ucfirst(strtolower($valor));
	}

	public function getAtributo($PU21DESCSERVI){
		return $this->$PU21DESCSERVI;
	}

	public function buscar($PU21IDSERVI){
		$sql = "CALL SP21_SERVICIOS_BUSCAR('".$PU21IDSERVI."');";
		$result = $this->conexion->ConsultaRetorno($sql);
		$class21servicios = $this->convertToclass21servicios($result);
		return $class21servicios;
	}

	public function listar(){
		$sql = " CALL SP21_SERVICIOS_MOSTRAR();";
		$result = $this->conexion->ConsultaRetorno($sql);
		return $result;
	}

	public function guardar(){
		$sql = "CALL SP21_SERVICIOS_GUARDAR('$this->PU21IDSERVI','$this->PU21DESCSERVI');";
		$this->conexion->ConsultaSimple($sql);
	}

	public function actualizar(){
		$sql = "CALL SP21_SERVICIOS_ACTUALIZAR('$this->PU21IDSERVI','$this->PU21DESCSERVI');";
		$this->conexion->ConsultaSimple($sql);
	}

	public function eliminar(){
		$sql = "CALL SP21_SERVICIOS_ELIMINAR('$this->PU21IDSERVI');";
		$this->conexion->ConsultaSimple($sql);
	}

	public function convertToclass21servicios($result){
		$class21servicios = new class21servicios();
		while ($row = mysqli_fetch_array($result)) {
			$class21servicios->setAtributo('PU21IDSERVI',$row[0]);
			$class21servicios->setAtributo('PU21DESCSERVI',$row[1]);
		}
		return $class21servicios;
	}
}
 ?>