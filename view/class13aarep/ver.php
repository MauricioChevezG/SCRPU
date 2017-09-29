<!DOCTYPE html>
<html>
<head>
	
	<title>Detalle Detalle Afectación de Áreas de protección</title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<body>
	<div class="container">
		<br>
		<div class="row">
			<div class="panel panel-default">
				<div class="panel-heading">Detalle Afectación de Áreas de protección</div>
				<div class="panel-body">
					<ul class="list-group">
						<li class="list-group-item"><strong>Código Detalle Afectación de Áreas de protección: </strong><?php echo $this->class13aarep->getAtributo('PU13IDAAP');?></li>
						<li class="list-group-item"><strong>Descripción Detalle Afectación de Áreas de protección: </strong><?php echo $this->class13aarep->getAtributo('PU13DESCAAP');?></li>
						
					</ul>
					<a href="?c=class13aarep&m=index" class="btn btn-default" role="button">Regresar</a>  

				</div>
			</div>
		</div>
	</div>
</body>
</html>
