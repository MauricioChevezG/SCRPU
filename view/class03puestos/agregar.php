<!DOCTYPE html>
<html>
<head>
	<title>Nuevo Puesto</title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<body>
  <center>
    <h2>Agregar nuevo puesto</h2>
  </center>
  <div class="container">
    <form action="?c=class03puestos&m=agregar" method="post">
     	<div class="form-group">
        <label for="PU03IDPUES">Código del Puesto:</label>
        <input type="text" class="form-control" id="PU03IDPUES" name="PU03IDPUES">
      </div>
      <div class="form-group">
        <label for="PU03PUESTO">Nombre del puesto:</label>
        <input type="text" class="form-control" id="PU03PUESTO" name="PU03PUESTO">
      </div>

      <button type="submit" class="btn btn-success">Guardar puesto</button> 
      <a href="?c=class03puestos&m=index" class="btn btn-danger" role="button">Regresar</a>    
     </form>
   </div>
</body>
</html>