<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nuevo Servicio de Agua y Electricidad</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
  <center>
    <h2>Agregar Nuevo Servicio de Agua y Electricidad:</h2>
  </center>
  <div class="container-fluid">
    <form action="?c=class16servae&m=agregar" method="post">
     	<div class="form-group">
        <label for="PU16IDSAE">Código del servicio</label>
        <input type="text" class="form-control" id="PU16IDSAE" name="PU16IDSAE">
      </div>
      <div class="form-group">
        <label for="PU16DESCAE">Descripción del Servicio</label>
        <input type="text" class="form-control" id="PU16DESCAE" name="PU16DESCAE">
      </div>
      <button type="submit" class="btn btn-success">Guardar</button> 
      <a href="?c=class16servae&m=index" class="btn btn-danger" role="button">Regresar</a>    
     </form>
   </div>

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>