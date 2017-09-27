<!DOCTYPE html>
<html>
<head>
  <title>Nuevo Aspectos Biofísicos</title>
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<body>
  <center>
    <h2>Agregar Nuevo Aspectos Biofísicos</h2>
  </center>
  <div class="container">
    <form action="?c=aspecto_biofisico&m=agregar" method="post">
    
      <div class="form-group">
        <label for="PU10IDASBIO">PU10IDASBIO</label>
        <input type="text" class="form-control" id="PU10IDASBIO" name="PU10IDASBIO">
      </div>

      <div class="form-group">
        <label for="PU10DESCABIO">PU10DESCABIO</label>
        <input type="text" class="form-control" id="PU10DESCABIO" name="PU10DESCABIO">
      </div>
      <button type="submit" class="btn btn-success">Guardar</button> 
      <a href="?c=aspecto_biofisico&m=index" class="btn btn-default" role="button">Regresar</a>    
     </form>
   </div>
</body>
</html>