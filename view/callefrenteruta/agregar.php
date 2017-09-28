<!DOCTYPE html>
<html>
<head>
	<title>Nuevo Servicio de Electricidad y Agua</title>
  <link rel="stylesheet" type="text/css" href="../../datatables/Bootstrap-3.3.7/css/bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css" href="../../datatables/Bootstrap-3.3.7/css/bootstrap.min.css">
</head>
<body>
  <center>
    <h2>Agregar Nuevo Servicio de Electricidad y Agua</h2>
  </center>
  <div class="container">
    <form action="?c=callefrenteruta&m=agregar" method="post">
     	<div class="form-group">
        <label for="PU18IDCSCLS">ID</label>
        <input type="text" class="form-control" id="PU18IDCSCLS" name="PU18IDCSCLS">
      </div>
      <div class="form-group">
        <label for="PU18DESCS">Descripción</label>
        <input type="text" class="form-control" id="PU18DESCS" name="PU18DESCS">
      </div>
      <button type="submit" class="btn btn-success">Guardar</button> 
      <a href="?c=callefrenteruta&m=index" class="btn btn-default" role="button">Regresar</a>    
     </form>
   </div>
</body>
</html>