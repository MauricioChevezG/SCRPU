<!DOCTYPE html>
<html>
<head>
  <title>Nuevo Tipo de Desarrollo</title>
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<body>
  <center>
    <h2>Agregar Nuevo Tipo de Desarrollo</h2>
  </center>
  <div class="container">
    <form action="?c=tipo_desarrollo&m=agregar" method="post">
    
      <div class="form-group">
        <label for="PU12IDTDESEC">PU12IDTDESEC</label>
        <input type="text" class="form-control" id="PU12IDTDESEC" name="PU12IDTDESEC">
      </div>

      <div class="form-group">
        <label for="PU12TIPODES">PU12TIPODES</label>
        <input type="text" class="form-control" id="PU12TIPODES" name="PU12TIPODES">
      </div>
      <button type="submit" class="btn btn-success">Guardar</button> 
      <a href="?c=tipo_desarrollo&m=index" class="btn btn-default" role="button">Regresar</a>    
     </form>
   </div>
</body>
</html>