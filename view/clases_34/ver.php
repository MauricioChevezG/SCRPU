<!DOCTYPE html>
<html>
<head>
	<title>Detalle Clases</title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  
</head>
<body>
	<div class="container">
		<br>
		<div class="row">
			<div class="panel panel-default">
				<div class="panel-heading">Detalle Clases</div>
				<div class="panel-body">
					<ul class="list-group">
					<li class="list-group-item"><strong>ID Clases:</strong><?php echo $this->clases_34->getAtributo('PU34IDCLAS');?></li>
						<li class="list-group-item"><strong>DESCIPCION: </strong><?php echo $this->clases_34->getAtributo('PU34DESCLA');?></li>
						
					</ul>
					<a href="?c=clases_34&m=index" class="btn btn-default" role="button">Regresar</a>  

				</div>
			</div>
		</div>
	</div>
</body>
</html>
