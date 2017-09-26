<!DOCTYPE html>
<html>
<head>
	<title>Detalle Cliente</title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<body>
	<div class="container">
		<br>
		<div class="row">
			<div class="panel panel-default">
				<div class="panel-heading">Detalle del Cliente</div>
				<div class="panel-body">
					<ul class="list-group">
						<li class="list-group-item"><strong>Cedula: </strong><?php echo $this->cliente->getAtributo('cedula');?></li>
						<li class="list-group-item"><strong>Nombre: </strong><?php echo $this->cliente->getAtributo('nombre');?></li>
						<li class="list-group-item"><strong>Primer Apellido: </strong><?php echo $this->cliente->getAtributo('primerApellido');?></li>
						<li class="list-group-item"><strong>Segundo Apellido: </strong><?php echo $this->cliente->getAtributo('segundoApellido');?></li>
					</ul>
					<a href="?c=clientes&m=index" class="btn btn-default" role="button">Regresar</a>  

				</div>
			</div>
		</div>
	</div>
</body>
</html>