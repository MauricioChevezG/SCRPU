<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nuevo Espacio Geográfico</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
  <center>
    <h2>Agregar Nuevo Espacio Geográfico</h2>
  </center>
  <div class="container-fluid">
    <form action="?c=class09desceg&m=agregar" method="post">
    
      <div class="form-group">
        <label for="PU09IDDEG">Código del Espacio Geográfico</label>
        <input type="text" class="form-control" id="PU09IDDEG" name="PU09IDDEG">
      </div>

      <div class="form-group">
        <label for="PU09DESCREG">Descripción del Espacio Geográfico</label>
        <input type="text" class="form-control" id="PU09DESCREG" name="PU09DESCREG">
      </div>
      <button type="submit" class="btn btn-success">Guardar</button> 
      <a href="?c=class09desceg&m=index" class="btn btn-danger" role="button">Regresar</a>    
     </form>
   </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>