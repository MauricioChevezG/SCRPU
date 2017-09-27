
<?php 
require_once 'conexion.php';

class capuso_32  extends Conexion
{
	private $PU32IDCUSO;
	private $PU32DESUSO;


	private $conexion;
	
	function __construct()
	{
		$this->conexion = new Conexion();
	}
	//Manda un atributo convertido en minuscula, o ya sea solamente el primer caracter
	public function setAtributo($PU32DESUSO, $valor)
	{
		$this->$PU32DESUSO = ucfirst(strtolower($valor));//Cualquier data al introducir en Mayuscula sera convertido en minuscula
	}

	public function getAtributo($PU32DESUSO)
	{
		return $this->$PU32DESUSO;
	}

	public function buscar($PU32IDCUSO)
	{
		$sql = "SELECT * FROM pu32capuso WHERE PU32IDCUSO ='". $PU32IDCUSO ."';";
		$result = $this->conexion->consultaRetorno($sql);
		$capuso_32 = $this->convertTocapuso_32($result);
		return $capuso_32;
	}

	public function listar()
	{
		$sql = "SELECT * FROM pu32capuso ;";
		$result = $this->conexion->consultaRetorno($sql);
		return $result;
	}

	public function guardar()
	{
		$sql = "CALL SP32_CAPUSO_GUARDAR('$this->PU32IDCUSO','$this->PU32DESUSO')";
		$this->conexion->consultaSimple($sql);
	}

	public function actualizar()
	{
		$sql = "CALL SP32_CAPUSO_ACTUALIZAR('$this->PU32IDCUSO','$this->PU32DESUSO')";
		$this->conexion->consultaSimple($sql);
	}

	public function eliminar()
	{
		$sql = "CALL SP32_CAPUSO_ELIMINAR('$this->PU32IDCUSO')";
		$this->conexion->consultaSimple($sql);
	}

	public function convertTocapuso_32($result)
	{
		$capuso_32 = new capuso_32();
		while ($row = mysqli_fetch_array($result)) {
			$capuso_32->setAtributo('PU32IDCUSO',$row[0]);
			$capuso_32->setAtributo('PU32DESUSO',$row[1]);
		
		}
		return $capuso_32;
	}
}
 ?>