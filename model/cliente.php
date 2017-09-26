<?php 
require_once 'conexion.php';

class Cliente  extends Conexion
{
	private $cedula;
	private $nombre;
	private $primerApellido;
	private $segundoApellido;

	private $conexion;
	
	function __construct()
	{
		$this->conexion = new Conexion();
	}
	//Manda un atributo convertido en minuscula, o ya sea solamente el primer caracter
	public function setAtributo($nombre, $valor)
	{
		$this->$nombre = ucfirst(strtolower($valor));//Cualquier data al introducir en Mayuscula sera convertido en minuscula
	}

	public function getAtributo($nombre)
	{
		return $this->$nombre;
	}

	public function buscar($cedula)
	{
		$sql = "SELECT * FROM clientes WHERE cedula ='". $cedula ."';";
		$result = $this->conexion->consultaRetorno($sql);
		$cliente = $this->convertToCliente($result);
		return $cliente;
	}

	public function listar()
	{
		$sql = "SELECT * FROM clientes ;";
		$result = $this->conexion->consultaRetorno($sql);
		return $result;
	}

	public function guardar()
	{
		$sql = "INSERT INTO clientes VALUES ('$this->cedula','$this->nombre','$this->primerApellido','$this->segundoApellido');";
		$this->conexion->consultaSimple($sql);
	}

	public function actualizar()
	{
		$sql = "UPDATE clientes SET nombre =  '$this->nombre', primer_apellido = '$this->primerApellido', 
		segundo_apellido =  '$this->segundoApellido' WHERE cedula = '$this->cedula';";
		$this->conexion->consultaSimple($sql);
	}

	public function eliminar()
	{
		$sql = "DELETE FROM clientes WHERE cedula = '$this->cedula';";
		$this->conexion->consultaSimple($sql);
	}

	public function convertToCliente($result)
	{
		$cliente = new Cliente();
		while ($row = mysqli_fetch_array($result)) {
			$cliente->setAtributo('cedula',$row[0]);
			$cliente->setAtributo('nombre',$row[1]);
			$cliente->setAtributo('primerApellido',$row[2]);
			$cliente->setAtributo('segundoApellido',$row[3]);
		}
		return $cliente;
	}
}
 ?>