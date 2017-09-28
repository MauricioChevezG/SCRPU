<!DOCTYPE html>
<html>
<head>
	<title>Detalle Servicio de Red Vial</title>
	<link rel="stylesheet" type="text/css" href="../../datatables/Bootstrap-3.3.7/css/bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css" href="../../datatables/Bootstrap-3.3.7/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<br>
		<div class="row">
			<div class="panel panel-default">
				<div class="panel-heading">Detalle del Servicio de Red Vial</div>
				<div class="panel-body">
					<ul class="list-group">
						<li class="list-group-item"><strong>ID Servicio de Red Vial: </strong><?php echo $this->servicioredvial->getAtributo('PU22IDREDVI');?></li>
						<li class="list-group-item"><strong>DESCIPCION: </strong><?php echo $this->servicioredvial->getAtributo('PU22DESSVI');?></li>
						<li class="list-group-item"><strong>OBSERVACIONES DEL SERVICIO: </strong><?php echo $this->servicioredvial->getAtributo('PU22OBSERV');?></li>
						
					</ul>
					<a href="?c=servicioredvial&m=index" class="btn btn-default" role="button">Regresar</a>  

				</div>
			</div>
		</div>
	</div>
</body>
</html>
