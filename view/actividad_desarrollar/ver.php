<!DOCTYPE html>
<html>
<head>
	<title>Detalle Actividad a Desarrollar</title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  
</head>
<body>
	<div class="container">
		<br>
		<div class="row">
			<div class="panel panel-default">
				<div class="panel-heading">Detalle del Actividad a Desarrollar</div>
				<div class="panel-body">
					<ul class="list-group">
						<li class="list-group-item"><strong>ID: </strong><?php echo $this->actividad_desarrollar->getAtributo('PU06IDACTDES');?></li>
						<li class="list-group-item"><strong>Descripcion: </strong><?php echo $this->actividad_desarrollar->getAtributo('PU06DESAD');?></li>
						
					</ul>
					<a href="?c=actividad_desarrollar&m=index" class="btn btn-default" role="button">Regresar</a>  

				</div>
			</div>
		</div>
	</div>
</body>
</html>
