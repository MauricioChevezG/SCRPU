<!DOCTYPE html>
<html>
<head>
  <title>Nuevo Espacio Geográfico</title>
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<body>
  <center>
    <h2>Agregar Nuevo Espacio Geográfico</h2>
  </center>
  <div class="container">
    <form action="?c=espacio_geografico09&m=agregar" method="post">
    
      <div class="form-group">
        <label for="PU09IDDEG">PU09IDDEG</label>
        <input type="text" class="form-control" id="PU09IDDEG" name="PU09IDDEG">
      </div>

      <div class="form-group">
        <label for="PU09DESCREG">PU09DESCREG</label>
        <input type="text" class="form-control" id="PU09DESCREG" name="PU09DESCREG">
      </div>
      <button type="submit" class="btn btn-success">Guardar</button> 
      <a href="?c=espacio_geografico09&m=index" class="btn btn-default" role="button">Regresar</a>    
     </form>
   </div>
</body>
</html>