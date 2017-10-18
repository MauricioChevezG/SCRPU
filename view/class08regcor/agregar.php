<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nueva Localizació</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>
<body>
  <center>
    <h2>Agregar Nueva Localización</h2>
  </center>
  <div class="container-fluid">
    <form action="?c=class08regcor&m=agregar" method="post">
     	<div class="form-group">
        <label for="PU08IDGPS">Código de localización</label>
        <input type="text" class="form-control" id="PU08IDGPS" name="PU08IDGPS">
      </div>
      <div class="form-group">
        <label for="PU08NORTE">Norte:</label>
        <input type="text" class="form-control" id="PU08NORTE" name="PU08NORTE">
      </div>
      <div class="form-group">
        <label for="PU08ESTE">Este:</label>
        <input type="text" class="form-control" id="PU08ESTE" name="PU08ESTE">
      </div>
      <div class="form-group">
        <label for="PU08ALTITUD">Altitud</label>
        <input type="text" class="form-control" id="PU08ALTITUD" name="PU08ALTITUD">
      </div>
      <button type="submit" class="btn btn-success">Guardar</button> 
      <a href="?c=class08regcor&m=index" class="btn btn-danger" role="button">Regresar</a>    
     </form>
   </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>