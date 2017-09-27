<!DOCTYPE html>
<html>
<head>
	<title>Detalle Tipo Suelo</title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  
</head>
<body>
	<div class="container">
		<br>
		<div class="row">
			<div class="panel panel-default">
				<div class="panel-heading">Detalle Tipo Suelo</div>
				<div class="panel-body">
					<ul class="list-group">
					<li class="list-group-item"><strong>ID Tipo Suelo:</strong><?php echo $this->tipsue_35->getAtributo('PU35IDTIPS');?></li>
						<li class="list-group-item"><strong>DESCIPCION: </strong><?php echo $this->tipsue_35->getAtributo('PU35DESTIP');?></li>
						
					</ul>
					<a href="?c=tipsue_35&m=index" class="btn btn-default" role="button">Regresar</a>  

				</div>
			</div>
		</div>
	</div>
</body>
</html>
