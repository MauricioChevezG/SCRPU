<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nuevo Terreno Frente a Ruta</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>
<body>
  <center>
    <h2>Agregar Nuevo Terreno Frente a Ruta</h2>
  </center>
  <div class="container-fluid">
    <form action="?c=class07terrft&m=agregar" method="post">
    
      <div class="form-group">
        <label for="PU07IDTFR">Código del Terreno Frente a Ruta</label>
        <input type="text" class="form-control" id="PU07IDTFR" name="PU07IDTFR">
      </div>

      <div class="form-group">
        <label for="PU07NOMTFR">Nombre del Terreno Frente a Ruta</label>
        <input type="text" class="form-control" id="PU07NOMTFR" name="PU07NOMTFR">
      </div>
      <button type="submit" class="btn btn-success">Guardar</button> 
      <a href="?c=class07terrft&m=index" class="btn btn-danger" role="button">Regresar</a>    
     </form>
   </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>