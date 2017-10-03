<!DOCTYPE html>
<html>
<head>
	<title>Detalle Tipo de Desarrollo en el sector</title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<body>
	<div class="container">
		<br>
		<div class="row">
			<div class="panel panel-default">
				<div class="panel-heading">Detalle del Tipo de Desarrollo en el sector</div>
				<div class="panel-body">
					<ul class="list-group">
						<li class="list-group-item"><strong>ID Tipo de Desarrollo: </strong><?php echo $this->class12tipdesec->getAtributo('PU12IDTDESEC');?></li>
						<li class="list-group-item"><strong>Descripcion Tipo de Desarrollo: </strong><?php echo $this->class12tipdesec->getAtributo('PU12TIPODES');?></li>
						
					</ul>
					<a href="?c=class12tipdesec&m=index" class="btn btn-danger" role="button">Regresar</a>  

				</div>
			</div>
		</div>
	</div>
</body>
</html>
