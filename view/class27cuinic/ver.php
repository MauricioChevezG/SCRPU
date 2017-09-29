<!DOCTYPE html>
<html>
<head>
	<title>Detalle Ubicacion</title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  
</head>
<body>
	<div class="container">
		<br>
		<div class="row">
			<div class="panel panel-default">
				<div class="panel-heading">Detalle Ubicación</div>
				<div class="panel-body">
					<ul class="list-group">
						<li class="list-group-item"><strong>Código de la Ubicación:: </strong><?php echo $this->class27cuinic->getAtributo('PU27IDUBIC');?></li>
						<li class="list-group-item"><strong>Descripción de la Ubicación:: </strong><?php echo $this->class27cuinic->getAtributo('PU27DSCUBIC');?></li>
						
					</ul>
					<a href="?c=class27cuinic&m=index" class="btn btn-default" role="button">Regresar</a>  

				</div>
			</div>
		</div>
	</div>
</body>
</html>
