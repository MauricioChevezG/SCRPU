<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Detalle Afectación de Áreas de protección</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
	<div class="container-fluid">
		<br>
		<div class="row">
			<div class="panel panel-default">
				<div class="panel-heading">Detalle Afectación de Áreas de protección</div>
				<div class="panel-body">
					<ul class="list-group">
						<li class="list-group-item"><strong>Código Detalle Afectación de Áreas de protección: </strong><?php echo $this->class13aarep->getAtributo('PU13IDAAP');?></li>
						<li class="list-group-item"><strong>Descripción Detalle Afectación de Áreas de protección: </strong><?php echo $this->class13aarep->getAtributo('PU13DESCAAP');?></li>
						
					</ul>
					<a href="?c=class13aarep&m=index" class="btn btn-danger" role="button">Regresar</a>  

				</div>
			</div>
		</div>
	</div>
	  <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
