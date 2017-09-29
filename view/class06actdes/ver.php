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
						<li class="list-group-item"><strong>Código de la Actividad a Desarrollar: </strong><?php echo $this->class06actdes->getAtributo('PU06IDACTDES');?></li>
						<li class="list-group-item"><strong>Descripcion de la Actividad a Desarrollar: </strong><?php echo $this->class06actdes->getAtributo('PU06DESAD');?></li>
						
					</ul>
					<a href="?c=class06actdes&m=index" class="btn btn-default" role="button">Regresar</a>  

				</div>
			</div>
		</div>
	</div>
</body>
</html>
