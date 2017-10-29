<?php 

require_once 'model/classindex.php';
class classindexController
{
	private $classindex;
	function __construct()
	{
		$this->classindex = new classindex();
	}
	public function index()
	{
		require_once 'view/Pruebas.php';
	}
	
}
?>