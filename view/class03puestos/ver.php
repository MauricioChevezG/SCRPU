<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detalle Usuario</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
    <div class="container-fluid">
        	<div class="row">
			<div  class="panel panel-default">
				<div class="panel-heading">Detalle del Puesto</div>
				<div class="panel-body">
					<ul class="list-group">
						<li class="list-group-item"><strong>Código del Puesto: </strong><?php echo $this->class03puestos->getAtributo('PU03IDPUES');?></li>
						<li class="list-group-item"><strong>Nombre del puesto: </strong><?php echo $this->class03puestos->getAtributo('PU03PUESTO');?></li>
						
					</ul>
					<a href="?c=class03puestos&m=index" class="btn btn-danger" role="button">Regresar</a>  

				</div>
			</div>
		</div>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>