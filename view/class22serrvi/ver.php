<!DOCTYPE html>
<html>
<head>
	<title>Detalle Desarrolo de Servidumbre</title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<body>
	<div class="container">
		<br>
		<div class="row">
			<div class="panel panel-default">
				<div class="panel-heading">Detalle del Servicio de Red Vial</div>
				<div class="panel-body">
					<ul class="list-group">
						<li class="list-group-item"><strong>Código del Servicio de Red Vial: </strong><?php echo $this->class22serrvi->getAtributo('PU22IDREDVI');?></li>
						<li class="list-group-item"><strong>Descripción del Servicio de Red Vial: </strong><?php echo $this->class22serrvi->getAtributo('PU22DESSVI');?></li>
						
					</ul>
					<a href="?c=class22serrvi&m=index" class="btn btn-default" role="button">Regresar</a>  

				</div>
			</div>
		</div>
	</div>
</body>
</html>
