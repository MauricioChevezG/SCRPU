<!DOCTYPE html>
<html>
<head>
  <title>Nuevo Ubicación Sámara</title>
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<body>
  <center>
    <h2>Agregar Ubicación en Sámara</h2>
  </center>
  <div class="container">
    <form action="?c=class28cuisam&m=agregar" method="post">
    
      <div class="form-group">
        <label for="PU28IDUBIC">Código de la Ubicación:</label>
        <input type="text" class="form-control" id="PU28IDUBIC" name="PU28IDUBIC">
      </div>

      <div class="form-group">
        <label for="PU28DSCUBIC">Descripción de la Ubicación:</label>
        <input type="text" class="form-control" id="PU28DSCUBIC" name="PU28DSCUBIC">
      </div>
      <button type="submit" class="btn btn-success">Guardar</button> 
      <a href="?c=class28cuisam&m=index" class="btn btn-default" role="button">Regresar</a>    
     </form>
   </div>
</body>
</html>