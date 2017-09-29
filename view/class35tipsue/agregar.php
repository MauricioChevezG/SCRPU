<!DOCTYPE html>
<html>
<head>
  <title>Nuevo Tipo Suelo</title>
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<body>
  <center>
    <h2>Agregar Tipo Suelo</h2>
  </center>
  <div class="container">
    <form action="?c=class35tipsue&m=agregar" method="post">
    
      <div class="form-group">
        <label for="PU35IDTIPS">ID UBICACION</label>
        <input type="text" class="form-control" id="PU35IDTIPS" name="PU35IDTIPS">
      </div>

      <div class="form-group">
        <label for="PU35DESTIP">DESCRIPCION</label>
        <input type="text" class="form-control" id="PU35DESTIP" name="PU35DESTIP">
      </div>
      <button type="submit" class="btn btn-success">Guardar</button> 
      <a href="?c=class35tipsue&m=index" class="btn btn-default" role="button">Regresar</a>    
     </form>
   </div>
</body>
</html>