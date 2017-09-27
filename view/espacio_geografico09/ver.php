<!DOCTYPE html>
<html>
<head>
	<title>Detalle Espacio Geográfico</title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<body>
	<div class="container">
		<br>
		<div class="row">
			<div class="panel panel-default">
				<div class="panel-heading">Detalle del Espacio Geográfico</div>
				<div class="panel-body">
					<ul class="list-group">
						<li class="list-group-item"><strong>ID de Espacio Geográfico: </strong><?php echo $this->espacio_geografico09->getAtributo('PU09IDDEG');?></li>
						<li class="list-group-item"><strong>Descripcion de Espacio Geográfico: </strong><?php echo $this->espacio_geografico09->getAtributo('PU09DESCREG');?></li>
						
					</ul>
					<a href="?c=espacio_geografico09&m=index" class="btn btn-default" role="button">Regresar</a>  

				</div>
			</div>
		</div>
	</div>
</body>
</html>
