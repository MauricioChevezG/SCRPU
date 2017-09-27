<!DOCTYPE html>
<html>
<head>
  <title>Nuevo Ubicacion Clases</title>
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<body>
  <center>
    <h2>Agregar Ubicacion Clases</h2>
  </center>
  <div class="container">
    <form action="?c=clases_34&m=agregar" method="post">
    
      <div class="form-group">
        <label for="PU34IDCLAS">ID UBICACION</label>
        <input type="text" class="form-control" id="PU34IDCLAS" name="PU34IDCLAS">
      </div>

      <div class="form-group">
        <label for="PU34DESCLA">DESCRIPCION</label>
        <input type="text" class="form-control" id="PU34DESCLA" name="PU34DESCLA">
      </div>
      <button type="submit" class="btn btn-success">Guardar</button> 
      <a href="?c=clases_34&m=index" class="btn btn-default" role="button">Regresar</a>    
     </form>
   </div>
</body>
</html>