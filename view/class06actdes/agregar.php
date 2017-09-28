<!DOCTYPE html>
<html>
<head>
  <title>Nueva Actividad a Desarrollar</title>
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<body>
  <center>
    <h2>Agregar Nueva Actividad a Desarrollar</h2>
  </center>
  <div class="container">
    <form action="?c=class06actdes&m=agregar" method="post">
    
      <div class="form-group">
        <label for="PU06IDACTDES">PU06IDACTDES</label>
        <input type="text" class="form-control" id="PU06IDACTDES" name="PU06IDACTDES">
      </div>

      <div class="form-group">
        <label for="PU06DESAD">PU06DESAD</label>
        <input type="text" class="form-control" id="PU06DESAD" name="PU06DESAD">
      </div>
      <button type="submit" class="btn btn-success">Guardar</button> 
      <a href="?c=class06actdes&m=index" class="btn btn-default" role="button">Regresar</a>    
     </form>
   </div>
</body>
</html>