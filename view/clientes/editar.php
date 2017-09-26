<!DOCTYPE html>
<html>
<head>
	<title>Editar Cliente</title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
  <center>
    <h2>Editar cliente: <?php echo $this->cliente->getAtributo('nombre');?> </h2>
  </center>
  <div class="container">
    <form action="?c=clientes&m=editar" method="post">
      <div class="form-group">
        <label for="cedula">Cédula</label>
        <input type="text" class="form-control" id="cedula" name="cedula" value="<?php echo $this->cliente->getAtributo('cedula');?>" readonly>
      </div>
      <div class="form-group">
        <label for="nombre">Nombre</label>
        <input type="text" class="form-control" id="nombre" name="nombre" value="<?php echo $this->cliente->getAtributo('nombre');?> " >
      </div>
      <div class="form-group">
        <label for="cedula">Primer Apellido</label>
        <input type="text" class="form-control" id="cedula" name="primerApellido" 
        value="<?php echo $this->cliente->getAtributo('primerApellido');?> ">
      </div>
      <div class="form-group">
        <label for="nombre">Segundo Apellido</label>
        <input type="text" class="form-control" id="nombre" name="segundoApellido"
        value="<?php echo $this->cliente->getAtributo('segundoApellido');?> ">
      </div>
      <button type="submit" class="btn btn-success">Editar</button> 
      <a href="?c=clientes&m=index" class="btn btn-default" role="button">Regresar</a>    
    </form>
  </div>
</body>
</html>
