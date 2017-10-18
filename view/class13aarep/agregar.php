<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Nueva Afectación de Áreas de protección</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
  <center>
    <h2>Agregar Nueva Afectación de Áreas de protección</h2>
  </center>
  <div class="container-fluid">
    <form action="?c=class13aarep&m=agregar" method="post">
    
      <div class="form-group">
        <label for="PU13IDAAP">Código de la Afectación de Áreas de Protección:</label>
        <input type="text" class="form-control" id="PU13IDAAP" name="PU13IDAAP">
      </div>

      <div class="form-group">
        <label for="PU13DESCAAP">Descripción de la Afectación de Áreas de Protección</label>
        <input type="text" class="form-control" id="PU13DESCAAP" name="PU13DESCAAP">
      </div>
      <button type="submit" class="btn btn-success">Guardar</button> 
      <a href="?c=class13aarep&m=index" class="btn btn-danger" role="button">Regresar</a>    
     </form>
   </div>
     <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>