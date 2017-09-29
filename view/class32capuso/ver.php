<!DOCTYPE html>
<html>
<head>
	<title>Detalle  de Capacidad de Uso de Suelo</title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  
</head>
<body>
	<div class="container">
		<br>
		<div class="row">
			<div class="panel panel-default">
				<div class="panel-heading">Detalle  de Capacidad de Uso de Suelo</div>
				<div class="panel-body">
					<ul class="list-group">
					<li class="list-group-item"><strong>Código de Capacidad de Uso de Suelo</strong><?php echo $this->class32capuso->getAtributo('PU32IDCUSO');?></li>
						<li class="list-group-item"><strong>Descripción de Capacidad de Uso de Suelo: </strong><?php echo $this->class32capuso->getAtributo('PU32DESUSO');?></li>
						
					</ul>
					<a href="?c=class32capuso&m=index" class="btn btn-default" role="button">Regresar</a>  

				</div>
			</div>
		</div>
	</div>
</body>
</html>
