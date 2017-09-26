<!DOCTYPE html>
<html>
<head>
  <title>Nuevo Ubicacion Nicoya</title>
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<body>
  <center>
    <h2>Agregar Ubicacion Nicoya</h2>
  </center>
  <div class="container">
    <form action="?c=nicoya&m=agregar" method="post">
    
      <div class="form-group">
        <label for="PU27IDUBIC">ID UBICACION</label>
        <input type="text" class="form-control" id="PU27IDUBIC" name="PU27IDUBIC">
      </div>

      <div class="form-group">
        <label for="PU27DSCUBIC">DESCRIPCION</label>
        <input type="text" class="form-control" id="PU27DSCUBIC" name="PU27DSCUBIC">
      </div>
      <button type="submit" class="btn btn-success">Guardar</button> 
      <a href="?c=nicoya&m=index" class="btn btn-default" role="button">Regresar</a>    
     </form>
   </div>
</body>
</html>