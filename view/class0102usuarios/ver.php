<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>verUsuario</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
        <div class="container-fluid">
            <br>
		<div class="row">
			<div class="panel panel-default">
				<div class="panel-heading">Listado de  usuarios:</div>
				<div class="panel-body">
					<ul class="list-group">
					<li class="list-group-item"><strong>Cédula: </strong><?php echo $this->class0102usuarios->getAtributo('PU01CEDUSU');?></li>
					<li class="list-group-item"><strong>Nombre: </strong><?php echo $this->class0102usuarios->getAtributo('PU01NOMUSU');?></li>
					<li class="list-group-item"><strong>Primer Apellido: </strong><?php echo $this->class0102usuarios->getAtributo('PU01APE1USU');?></li>
					<li class="list-group-item"><strong>Segundo Apellido: </strong><?php echo $this->class0102usuarios->getAtributo('PU01APE2USU');?></li>
					<li class="list-group-item"><strong>Teléfono: </strong><?php echo $this->class0102usuarios->getAtributo('PU02TELUSU');?></li>
					<li class="list-group-item"><strong>Correo: </strong><?php echo $this->class0102usuarios->getAtributo('PU02CORUSU');?></li>
					<li class="list-group-item"><strong>Puesto: </strong><?php echo $this->class0102usuarios->getAtributo('PU03IDPUES');?></li>
						
					</ul>
					<a href="?c=class0102usuarios&m=index" class="btn btn-danger" role="button">Regresar</a>  

				</div>
			</div>
		</div>
        </div>
   
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>