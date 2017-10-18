<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nueva infraestructura en el terreno</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
  <center>
    <h2>Agregar Nueva infraestructura en el terreno</h2>
  </center>
  <div class="container-fluid">
    <form action="?c=class24infest&m=agregar" method="post">
    
      <div class="form-group">
        <label for="PU24IDINFR">Código de la Infraestructura:</label>
        <input type="text" class="form-control" id="PU24IDINFR" name="PU24IDINFR">
      </div>

      <div class="form-group">
        <label for="PU24DESCINF">Descripción de la Infraestructura:</label>
        <input type="text" class="form-control" id="PU24DESCINF" name="PU24DESCINF">
      </div>
      <button type="submit" class="btn btn-success">Guardar</button> 
      <a href="?c=class24infest&m=index" class="btn btn-danger" role="button">Regresar</a>    
     </form>
   </div>
   <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>