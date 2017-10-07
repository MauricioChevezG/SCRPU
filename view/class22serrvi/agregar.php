<!DOCTYPE html>
<html>
<head>
	<title>Nuevo Servicio de Red Vial</title>
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<body>
  <center>
    <h2>Agregar Nuevo Servicio de Red Vial</h2>
  </center>
  <div class="container">
    <form action="?c=class22serrvi&m=agregar" method="post">
     	<div class="form-group">
        <label for="PU22IDREDVI">Código del Servicio de Red Vial:</label>
        <input type="text" class="form-control" id="PU22IDREDVI" name="PU22IDREDVI">
      </div>
      <div class="form-group">
        <label for="PU22DESSVI">Descripción del Servicio de Red Vial:</label>
        <input type="text" class="form-control" id="PU22DESSVI" name="PU22DESSVI">
      </div>
      <button type="submit" class="btn btn-success">Guardar</button> 
      <a href="?c=class22serrvi&m=index" class="btn btn-default" role="button">Regresar</a>    
     </form>
   </div>
</body>
</html>