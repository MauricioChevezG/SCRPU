<!DOCTYPE html>
<html>
<head>
	<title>Detalle Aspectos Biofísicos</title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<body>
	<div class="container">
		<br>
		<div class="row">
			<div class="panel panel-default">
				<div class="panel-heading">Detalle de Aspectos Biofísicos</div>
				<div class="panel-body">
					<ul class="list-group">
						<li class="list-group-item"><strong>ID de Aspectos Biofísicos: </strong><?php echo $this->class10aspbio->getAtributo('PU10IDASBIO');?></li>
						<li class="list-group-item"><strong>Descripcion de Aspectos Biofísicos: </strong><?php echo $this->class10aspbio->getAtributo('PU10DESCABIO');?></li>
						
					</ul>
					<a href="?c=class10aspbio&m=index" class="btn btn-default" role="button">Regresar</a>  

				</div>
			</div>
		</div>
	</div>
</body>
</html>
