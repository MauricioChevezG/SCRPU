<?php 
require_once 'conexion.php';
/**
* Existencia de casas frente a calle publica
*/
class callefrenteruta extends Conexion
{
	private $PU18IDCSCLS;
	private $PU18DESCS;

	private $conexion;
	function __construct()
	{
		$this->conexion = new Conexion();
	}
	//Manda un atributo convertido en minuscula, o ya sea solamente el primer caracter
	public function setAtributo($PU18DESCS,$valor){
		$this->$PU18DESCS = ucfirst(strtolower($valor));
	}

	public function getAtributo($PU18DESCS){
		return $this->$PU18DESCS;
	}

	public function buscar($PU18IDCSCLS){
		$sql = "SELECT * FROM PU18CALLESER WHERE PU18IDCSCLS = '".$PU18IDCSCLS."';";
		$result = $this->conexion->ConsultaRetorno($sql);
		$callefrenteruta = $this->convertTocallefrenteruta($result);
		return $callefrenteruta;
	}

	public function listar(){
		$sql = "SELECT * FROM PU18CALLESER;";
		$result = $this->conexion->ConsultaRetorno($sql);
		return $result;
	}

	public function guardar(){
		$sql = "CALL SP18_CALLESER_GUARDAR('$this->PU18IDCSCLS','$this->PU18DESCS');";
		$this->conexion->ConsultaSimple($sql);
	}

	public function actualizar(){
		$sql = "CALL SP18_CALLESER_ACTUALIZAR('$this->PU18IDCSCLS','$this->PU18DESCS');";
		$this->conexion->ConsultaSimple($sql);
	}

	public function eliminar(){
		$sql = "CALL SP18_CALLESER_ELIMINAR('$this->PU18IDCSCLS');";
		$this->conexion->ConsultaSimple($sql);
	}

	public function convertTocallefrenteruta($result){
		$callefrenteruta = new callefrenteruta();
		while ($row = mysqli_fetch_array($result)) {
			$callefrenteruta->setAtributo('PU18IDCSCLS',$row[0]);
			$callefrenteruta->setAtributo('PU18DESCS',$row[1]);
		}
		return $callefrenteruta;
	}
}
 ?>