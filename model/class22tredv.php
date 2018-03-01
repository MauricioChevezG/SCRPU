<?php 
require_once 'conexion.php';
/**
* Existencia de casas frente a calle publica
*/
class class22tredv extends Conexion
{
	private $PU22IDTREDV;
	private $PU22DESCTRV;

	private $conexion;
	function __construct()
	{
		$this->conexion = new Conexion();
	}
	//Manda un atributo convertido en minuscula, o ya sea solamente el primer caracter
	public function setAtributo($PU22DESCTRV,$valor){
		$this->$PU22DESCTRV = ucfirst(strtolower($valor));
	}

	public function getAtributo($PU22DESCTRV){
		return $this->$PU22DESCTRV;
	}

	public function buscar($PU22IDTREDV){
		$sql = "CALL SP22_TREDV_BUSCAR('".$PU22IDTREDV."');";
		$result = $this->conexion->ConsultaRetorno($sql);
		$class22tredv = $this->convertToclass22tredv($result);
		return $class22tredv;
	}

	public function listar(){
		$sql = " CALL SP22_TREDV_MOSTRAR();";
		$result = $this->conexion->ConsultaRetorno($sql);
		return $result;
	}

	public function guardar(){
		$sql = "CALL SP22_TREDV_GUARDAR('$this->PU22IDTREDV','$this->PU22DESCTRV');";
		$this->conexion->ConsultaSimple($sql);
	}

	public function actualizar(){
		$sql = "CALL SP22_TREDV_ACTUALIZAR('$this->PU22IDTREDV','$this->PU22DESCTRV');";
		$this->conexion->ConsultaSimple($sql);
	}

	public function eliminar(){
		$sql = "CALL SP22_TREDV_ELIMINAR('$this->PU22IDTREDV');";
		$this->conexion->ConsultaSimple($sql);
	}

	public function convertToclass22tredv($result){
		$class22tredv = new class22tredv();
		while ($row = mysqli_fetch_array($result)) {
			$class22tredv->setAtributo('PU22IDTREDV',$row[0]);
			$class22tredv->setAtributo('PU22DESCTRV',$row[1]);
		}
		return $class22tredv;
	}
}
 ?>