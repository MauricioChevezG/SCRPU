<!DOCTYPE html>
<html>
<head>
	<title>Detalle Puestos</title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<body>
	<div class="container">
		<br>
		<div class="row">
			<div  class="panel panel-default">
				<div class="panel-heading">Detalle del Puesto</div>
				<div class="panel-body">
					<ul class="list-group">
						<li class="list-group-item"><strong>Código del Puesto: </strong><?php echo $this->class03puestos->getAtributo('PU03IDPUES');?></li>
						<li class="list-group-item"><strong>Nombre del puesto: </strong><?php echo $this->class03puestos->getAtributo('PU03PUESTO');?></li>
						
					</ul>
					<a href="?c=class03puestos&m=index" class="btn btn-danger" role="button">Regresar</a>  

				</div>
			</div>
		</div>
	</div>
</body>
</html>