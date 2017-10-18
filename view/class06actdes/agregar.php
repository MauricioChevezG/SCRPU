<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nueva Actividad a Desarrollar</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
    <div class="container-fluid">
  <center>
    <h2>Agregar Nueva Actividad a Desarrollar</h2>
  </center>
    <form action="?c=class06actdes&m=agregar" method="post">
    
      <div class="form-group">
        <label for="PU06IDACTDES">Código de la Actividad a Desarrollar</label>
        <input type="text" class="form-control" id="PU06IDACTDES" name="PU06IDACTDES">
      </div>

      <div class="form-group">
        <label for="PU06DESAD">Descripción de la Actividad a Desarrollar</label>
        <input type="text" class="form-control" id="PU06DESAD" name="PU06DESAD">
      </div>
      <button type="submit" class="btn btn-success">Guardar</button> 
      <a href="?c=class06actdes&m=index" class="btn btn-danger" role="button">Regresar</a>    
     </form>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>