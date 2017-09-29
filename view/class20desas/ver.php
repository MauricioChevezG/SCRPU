<!DOCTYPE html>
<html>
<head>
	<title>Detalle Desarrolo de Servidumbre</title>
	<link rel="stylesheet" type="text/css" href="../../datatables/Bootstrap-3.3.7/css/bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css" href="../../datatables/Bootstrap-3.3.7/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<br>
		<div class="row">
			<div class="panel panel-default">
				<div class="panel-heading">Detalle del Desarrolo de Servidumbre</div>
				<div class="panel-body">
					<ul class="list-group">
						<li class="list-group-item"><strong>Código del Desarrollo: </strong><?php echo $this->class20desas->getAtributo('PU20IDDESAS');?></li>
						<li class="list-group-item"><strong>Descripción del Desarrollo:: </strong><?php echo $this->class20desas->getAtributo('PU20DESCS');?></li>
						
					</ul>
					<a href="?c=class20desas&m=index" class="btn btn-default" role="button">Regresar</a>  

				</div>
			</div>
		</div>
	</div>
</body>
</html>
