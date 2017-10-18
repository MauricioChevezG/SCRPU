<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nuevo Plan Regulador</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
  <center>
    <h2>Agregar Plan Regulador</h2>
  </center>
  <div class="container-fluid">
    <form action="?c=class26planreg&m=agregar" method="post">
    
      <div class="form-group">
        <label for="PU26IDPLAN">Código del Plan Regulador:</label>
        <input type="text" class="form-control" id="PU26IDPLAN" name="PU26IDPLAN">
      </div>

      <div class="form-group">
        <label for="PU26PLNDESC">Descipción del Plan:</label>
        <input type="text" class="form-control" id="PU26PLNDESC" name="PU26PLNDESC">
      </div>
      <button type="submit" class="btn btn-success">Guardar</button> 
      <a href="?c=class26planreg&m=index" class="btn btn-danger" role="button">Regresar</a>    
     </form>
   </div>
   <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>