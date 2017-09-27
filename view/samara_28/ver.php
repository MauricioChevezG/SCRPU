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
				<div class="panel-heading">Detalle Ubicacion</div>
				<div class="panel-body">
					<ul class="list-group">
					<li class="list-group-item"><strong>ID Ubicacion:</strong><?php echo $this->samara_28->getAtributo('PU28IDUBIC');?></li>
						<li class="list-group-item"><strong>DESCIPCION: </strong><?php echo $this->samara_28->getAtributo('PU28DSCUBIC');?></li>
						
					</ul>
					<a href="?c=samara_28&m=index" class="btn btn-default" role="button">Regresar</a>  

				</div>
			</div>
		</div>
	</div>
</body>
</html>
