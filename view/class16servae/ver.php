<!DOCTYPE html>
<html>
<head>
	<title>Detalle Servicio de Electricidad y Agua</title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<br>
		<div class="row">
			<div class="panel panel-default">
				<div class="panel-heading">Detalle del Servicio de Electricidad y Agua</div>
				<div class="panel-body">
					<ul class="list-group">
						<li class="list-group-item"><strong>Código del Servicio: </strong><?php echo $this->class16servae->getAtributo('PU16IDSAE');?></li>
						<li class="list-group-item"><strong>Descripción del Servicio: </strong><?php echo $this->class16servae->getAtributo('PU16DESCAE');?></li>
						
					</ul>
					<a href="?c=class16servae&m=index" class="btn btn-default" role="button">Regresar</a>  

				</div>
			</div>
		</div>
	</div>
</body>
</html>
