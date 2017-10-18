<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nuevo Servicio de Red Vial</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
  <center>
    <h2>Agregar Nuevo Servicio de Red Vial</h2>
  </center>
  <div class="container-fluid">
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
      <a href="?c=class22serrvi&m=index" class="btn btn-danger" role="button">Regresar</a>    
     </form>
   </div>
     <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>