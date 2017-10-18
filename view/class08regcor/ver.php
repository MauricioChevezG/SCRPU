<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detalle Coordenadas Geográficas</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
	<div class="container-fluid">
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
	  <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>