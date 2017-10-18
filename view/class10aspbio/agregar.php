<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nuevo Aspectos Biofísicos</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>
 
<body>
  <center>
    <h2>Agregar Nuevo Aspectos Biofísicos</h2>
  </center>
  <div class="container-fluid">
    <form action="?c=class10aspbio&m=agregar" method="post">
    
      <div class="form-group">
        <label for="PU10IDASBIO">Código del Aspecto Biofísico:</label>
        <input type="text" class="form-control" id="PU10IDASBIO" name="PU10IDASBIO">
      </div>

      <div class="form-group">
        <label for="PU10DESCABIO">Descripción del Aspecto Biofísico:</label>
        <input type="text" class="form-control" id="PU10DESCABIO" name="PU10DESCABIO">
      </div>
      <button type="submit" class="btn btn-success">Guardar</button> 
      <a href="?c=class10aspbio&m=index" class="btn btn-danger" role="button">Regresar</a>    
     </form>
   </div>
   <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>