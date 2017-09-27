<!DOCTYPE html>
<html>
<head>
  <title>Nuevo Ubicacion Capuso</title>
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<body>
  <center>
    <h2>Agregar Ubicacion Capuso</h2>
  </center>
  <div class="container">
    <form action="?c=capuso_32&m=agregar" method="post">
    
      <div class="form-group">
        <label for="PU32IDCUSO">ID UBICACION</label>
        <input type="text" class="form-control" id="PU32IDCUSO" name="PU32IDCUSO">
      </div>

      <div class="form-group">
        <label for="PU32DESUSO">DESCRIPCION</label>
        <input type="text" class="form-control" id="PU32DESUSO" name="PU32DESUSO">
      </div>
      <button type="submit" class="btn btn-success">Guardar</button> 
      <a href="?c=capuso_32&m=index" class="btn btn-default" role="button">Regresar</a>    
     </form>
   </div>
</body>
</html>