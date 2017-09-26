<!DOCTYPE html>
<html>
<head>
	<title>Nuevo Cliente</title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<body>
  <center>
    <h2>Agregar nuevo cliente</h2>
  </center>
  <div class="container">
    <form action="?c=clientes&m=agregar" method="post">
     	<div class="form-group">
        <label for="cedula">Cédula</label>
        <input type="text" class="form-control" id="cedula" name="cedula">
      </div>
      <div class="form-group">
        <label for="nombre">Nombre</label>
        <input type="text" class="form-control" id="nombre" name="nombre">
      </div>
      <div class="form-group">
        <label for="cedula">Primer Apellido</label>
        <input type="text" class="form-control" id="cedula" name="primerApellido">
      </div>
      <div class="form-group">
        <label for="nombre">Segundo Apellido</label>
        <input type="text" class="form-control" id="nombre" name="segundoApellido">
      </div>
      <button type="submit" class="btn btn-success">Guardar</button> 
      <a href="?c=clientes&m=index" class="btn btn-default" role="button">Regresar</a>    
     </form>
   </div>
</body>
</html>