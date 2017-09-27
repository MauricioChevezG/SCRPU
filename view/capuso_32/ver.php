<!DOCTYPE html>
<html>
<head>
	<title>Detalle Ubicacion</title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  
</head>
<body>
	<div class="container">
		<br>
		<div class="row">
			<div class="panel panel-default">
				<div class="panel-heading">Detalle Ubicacion</div>
				<div class="panel-body">
					<ul class="list-group">
					<li class="list-group-item"><strong>ID Ubicacion:</strong><?php echo $this->capuso_32->getAtributo('PU32IDCUSO');?></li>
						<li class="list-group-item"><strong>DESCIPCION: </strong><?php echo $this->capuso_32->getAtributo('PU32DESUSO');?></li>
						
					</ul>
					<a href="?c=capuso_32&m=index" class="btn btn-default" role="button">Regresar</a>  

				</div>
			</div>
		</div>
	</div>
</body>
</html>
