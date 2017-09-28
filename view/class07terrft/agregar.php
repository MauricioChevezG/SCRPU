<!DOCTYPE html>
<html>
<head>
  <title>Nuevo Terreno Frente a Ruta</title>
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<body>
  <center>
    <h2>Agregar Nuevo Terreno Frente a Ruta</h2>
  </center>
  <div class="container">
    <form action="?c=class07terrft&m=agregar" method="post">
    
      <div class="form-group">
        <label for="PU07IDTFR">Código del Terreno Frente a Ruta</label>
        <input type="text" class="form-control" id="PU07IDTFR" name="PU07IDTFR">
      </div>

      <div class="form-group">
        <label for="PU07NOMTFR">Nombre del Terreno Frente a Ruta</label>
        <input type="text" class="form-control" id="PU07NOMTFR" name="PU07NOMTFR">
      </div>
      <button type="submit" class="btn btn-success">Guardar</button> 
      <a href="?c=class07terrft&m=index" class="btn btn-default" role="button">Regresar</a>    
     </form>
   </div>
</body>
</html>