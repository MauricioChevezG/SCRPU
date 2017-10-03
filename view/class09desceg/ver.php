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
						<li class="list-group-item"><strong>Código de Espacio Geográfico: </strong><?php echo $this->class09desceg->getAtributo('PU09IDDEG');?></li>
						<li class="list-group-item"><strong>Descripción de Espacio Geográfico: </strong><?php echo $this->class09desceg->getAtributo('PU09DESCREG');?></li>
						
					</ul>
					<a href="?c=class09desceg&m=index" class="btn btn-danger" role="button">Regresar</a>  

				</div>
			</div>
		</div>
	</div>
</body>
</html>
