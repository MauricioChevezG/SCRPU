<?php 
require_once 'conexion.php';

class class04oficina  extends Conexion
{
	private $PU04IDTRA;
	private $PU39CEDSOLICI;
	private $PU39NOMSOLICI;
	private $PU39APE1SOLICI;
	private $PU39APE2SOLICI;

	private $PU04IDDISTRITO;
	private $PU39BARRIO;
	private $PU39DIRECCION;

	private $PU40CEDPROPIE;
	private $PU40NOMPROPIE;
	private $PU40APE1PROPIE;
	private $PU40APE2PROPIE;

	private $PU40NFINCA;
	private $PU40NPLANO;

	private $conexion;
	
	function __construct()
	{
		$this->conexion = new Conexion();
	}
	
	public function setAtributo($nombre, $valor)
	{
		$this->$nombre = ucfirst(strtolower($valor)); 
	}

	public function getAtributo($nombre)
	{
		return $this->$nombre;
	}

	/*public function buscar($PU04IDTRA)
	{
		$sql = "CALL SP04_REGTRAMITEINFO_BUSCAR ('".$PU04IDTRA."');";
		$result = $this->conexion->consultaRetorno($sql);
		$cliente = $this->convertToclass04oficina($result);
		return $cliente;
	}*/

	public function listar()
	{
		$sql = "CALL SP39_40_REFINFOSOLIPROPIE_MOSTRAR();";
		$result = $this->conexion->consultaRetorno($sql);
		return $result;
	}

	public function guardar()
	{
		$sql = "CALL SP39_40_REFINFOSOLIPROPIE_GUARDAR ('$this->PU04IDTRA','$this->PU39CEDSOLICI',
		'$this->PU39NOMSOLICI','$this->PU39APE1SOLICI','$this->PU39APE2SOLICI','$this->PU04IDDISTRITO',
		'$this->PU39BARRIO','$this->PU39DIRECCION','$this->PU40CEDPROPIE','$this->PU40NOMPROPIE',
		'$this->PU40APE1PROPIE','$this->PU40APE2PROPIE','$this->PU40NFINCA','$this->PU40NPLANO');";
		$this->conexion->consultaSimple($sql);
	
	}

	public function buscarTraIng($idtramite)
	{
		$sql4 = "SELECT * FROM pu04tramite1 WHERE PU04IDTRA ='".$idtramite."'";
		$result = $this->conexion->consultaRetorno($sql4);
		$tramite = $this->convertToTramite($result);
		return $tramite;
	}
	public function convertToTramite($result)
	{
		$tramite = new class04oficina();
		while ($row = mysqli_fetch_array($result)) {
			$tramite->setAtributo('PU04IDTRA',$row[0]);
	
		}
		return $tramite;
	}
	/*public function actualizar()
	{
		$sql = "CALL SP04_REGTRAMITEINFO_ACTUALIZAR ('$this->PU04IDTRA','$this->PU04DESCRIPCIONLUGAR');";
		$this->conexion->consultaSimple($sql);
	}

	public function eliminar()
	{
		$sql = "CALL SP04_REGTRAMITEINFO_ELIMINAR('$this->PU04IDTRA');";
		$this->conexion->consultaSimple($sql);
	}*/

	public function convertToclass04oficina($result)
	{
		$class04oficina = new class04oficina();
		while ($row = mysqli_fetch_array($result)) {
			$class04oficina->setAtributo('PU04IDTRA',$row[0]);
			$class04oficina->setAtributo('PU39CEDSOLICI',$row[1]);
			$class04oficina->setAtributo('PU39NOMSOLICI',$row[2]);
			$class04oficina->setAtributo('PU39APE1SOLICI',$row[3]);
			$class04oficina->setAtributo('PU39APE2SOLICI',$row[4]);
			$class04oficina->setAtributo('PU04IDDISTRITO',$row[5]);
			$class04oficina->setAtributo('PU39BARRIO',$row[6]);
			$class04oficina->setAtributo('PU39DIRECCION',$row[7]);
			$class04oficina->setAtributo('PU40CEDPROPIE',$row[8]);
			$class04oficina->setAtributo('PU40NOMPROPIE',$row[9]);
			$class04oficina->setAtributo('PU40APE1PROPIE',$row[10]);
			$class04oficina->setAtributo('PU40APE2PROPIE',$row[11]);
			$class04oficina->setAtributo('PU40NFINCA',$row[12]);
			$class04oficina->setAtributo('PU40NPLANO',$row[13]);
		}
		return $class04oficina;
	}
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	public function eliminarActividades($idtramite)
	{
		$sql5 = "DELETE FROM pu05unitra WHERE PU04IDTRA = '".$idtramite."';";	
		$this->conexion->consultaSimple($sql5);		
	}

	public function asignarActividades($idtramite, $idactdes)
	{
		$sql6 = "INSERT INTO pu05unitra VALUES ('".$idtramite."','".$idactdes."');";
		$this->conexion->consultaSimple($sql6);	
	}

	public function tieneActividades($idtramite, $idactdes)
	{
		
		$sql7 = "SELECT COUNT(*) AS total FROM pu05unitra WHERE PU04IDTRA='".$idtramite."' AND PU06IDACTDES='".$idactdes."';";
		$result = $this->conexion->consultaRetorno($sql7);
		$row = mysqli_fetch_array($result);		
		return $row;

	
	}
	public function getTodasActividades()
	{
		$sql8 = "SELECT * FROM pu06actdes";
		$result = $this->conexion->consultaRetorno($sql8);
		return $result;
	}
	/////////////////////////////////////////////////////////////////////////////////////////////////
	public function listarTraRealizado()
	{
		$sql = "CALL SP00_LISTAR_TRAMITE_REALIZADO();";
		$result = $this->conexion->consultaRetorno($sql);
		return $result;
	}

}
 ?>