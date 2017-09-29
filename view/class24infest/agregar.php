<!DOCTYPE html>
<html>
<head>
  <title>Nueva infraestructura</title>
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<body>
  <center>
    <h2>Agregar Nueva infraestructura en el terreno</h2>
  </center>
  <div class="container">
    <form action="?c=class24infest&m=agregar" method="post">
    
      <div class="form-group">
        <label for="PU24IDINFR">Código de la Infraestructura:</label>
        <input type="text" class="form-control" id="PU24IDINFR" name="PU24IDINFR">
      </div>

      <div class="form-group">
        <label for="PU24DESCINF">Descripción de la Infraestructura:</label>
        <input type="text" class="form-control" id="PU24DESCINF" name="PU24DESCINF">
      </div>
      <button type="submit" class="btn btn-success">Guardar</button> 
      <a href="?c=class24infest&m=index" class="btn btn-default" role="button">Regresar</a>    
     </form>
   </div>
</body>
</html>