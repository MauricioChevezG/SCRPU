<!DOCTYPE html>
<html>
<head>
	<title>Detalle de Existencia de Calle en Servidumbre Frente a Ruta:</title>
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<br>
		<div class="row">
			<div class="panel panel-default">
				<div class="panel-heading">Detalle de Existencia de Calle en Servidumbre Frente a Ruta:</div>
				<div class="panel-body">
					<ul class="list-group">
						<li class="list-group-item"><strong>Descripción de Existencia de Calle en Servidumbre Frente a Ruta: </strong><?php echo $this->class18calleser->getAtributo('PU18IDCSCLS');?></li>
						<li class="list-group-item"><strong>Descripción de Existencia de Calle en Servidumbre Frente a Ruta:: </strong><?php echo $this->class18calleser->getAtributo('PU18DESCS');?></li>
						
					</ul>
					<a href="?c=class18calleser&m=index" class="btn btn-default" role="button">Regresar</a>  

				</div>
			</div>
		</div>
	</div>
</body>
</html>
