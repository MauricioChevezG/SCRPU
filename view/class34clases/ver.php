<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detalle Ubicación Clases</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>



<body>
	<div class="container">
		<br>
		<div class="row">
			<div class="panel panel-default">
				<div class="panel-heading">Detalle Clases</div>
				<div class="panel-body">
					<ul class="list-group">
					<li class="list-group-item"><strong>Código de Clase:</strong><?php echo $this->class34clases->getAtributo('PU34IDCLAS');?></li>
						<li class="list-group-item"><strong>Descripción de Clase: </strong><?php echo $this->class34clases->getAtributo('PU34DESCLA');?></li>
						
					</ul>
					<a href="?c=class34clases&m=index" class="btn btn-danger" role="button">Regresar</a>  

				</div>
			</div>
		</div>
	</div>
	 <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
