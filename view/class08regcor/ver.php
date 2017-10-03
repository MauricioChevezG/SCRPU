<!DOCTYPE html>
<html>
<head>
	<title>Detalle Coordenadas</title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<body>
	<div class="container">
		<br>
		<div class="row">
			<div class="panel panel-default">
				<div class="panel-heading">Detalle de las Coordenadas</div>
				<div class="panel-body">
					<ul class="list-group">
						<li class="list-group-item"><strong>código: </strong><?php echo $this->class08regcor->getAtributo('PU08IDGPS');?></li>
						<li class="list-group-item"><strong>Norte: </strong><?php echo $this->class08regcor->getAtributo('PU08NORTE');?></li>
						<li class="list-group-item"><strong>Este: </strong><?php echo $this->class08regcor->getAtributo('PU08ESTE');?></li>
						<li class="list-group-item"><strong>Altitud: </strong><?php echo $this->class08regcor->getAtributo('PU08ALTITUD');?></li>
					</ul>
					<a href="?c=class08regcor&m=index" class="btn btn-danger" role="button">Regresar</a>  

				</div>
			</div>
		</div>
	</div>
</body>
</html>