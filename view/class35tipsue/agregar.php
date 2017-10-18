<!DOCTYPE html>
<html>


<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nuevo Tipo Suelo</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
  <center>
    <h2>Agregar Tipo Suelo</h2>
  </center>
  <div class="container-fluid">
    <form action="?c=class35tipsue&m=agregar" method="post">
    
      <div class="form-group">
        <label for="PU35IDTIPS">Código de Tipo Suelo:</label>
        <input type="text" class="form-control" id="PU35IDTIPS" name="PU35IDTIPS">
      </div>

      <div class="form-group">
        <label for="PU35DESTIP">Descripción del Tipo Suelo:</label>
        <input type="text" class="form-control" id="PU35DESTIP" name="PU35DESTIP">
      </div>
      <button type="submit" class="btn btn-success">Guardar</button> 
      <a href="?c=class35tipsue&m=index" class="btn btn-danger" role="button">Regresar</a>    
     </form>
   </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>