<!DOCTYPE html>
<html>
<head>
	<title>Detalle infraestructura</title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<br>
		<div class="row">
			<div class="panel panel-default">
				<div class="panel-heading">Detalle de la infraestructura</div>
				<div class="panel-body">
					<ul class="list-group">
						<li class="list-group-item"><strong> Código de la infraestructura: </strong>
							<?php echo $this->class24infest->getAtributo('PU24IDINFR');?>
						</li>
						<li class="list-group-item"><strong>Descripción de la infraestructura: </strong>
							<?php echo $this->class24infest->getAtributo('PU24DESCINF');?>
						</li>
					</ul>
					<a href="?c=class24infest&m=index" class="btn btn-default" role="button">Regresar</a>  
				</div>
			</div>
		</div>
	</div>
</body>
</html>