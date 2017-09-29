<!DOCTYPE html>
<html>
<head>
	<title>Nuevo Desarrolo de Servidumbre</title>
  <link rel="stylesheet" type="text/css" href="../../datatables/Bootstrap-3.3.7/css/bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css" href="../../datatables/Bootstrap-3.3.7/css/bootstrap.min.css">
</head>
<body>
  <center>
    <h2>Agregar Nuevo Desarrolo de Servidumbre</h2>
  </center>
  <div class="container">
    <form action="?c=class20desas&m=agregar" method="post">
     	<div class="form-group">
        <label for="PU20IDDESAS">Código del Desarrollo:</label>
        <input type="text" class="form-control" id="PU20IDDESAS" name="PU20IDDESAS">
      </div>
      <div class="form-group">
        <label for="PU20DESCS">Descripción del Desarrollo:</label>
        <input type="text" class="form-control" id="PU20DESCS" name="PU20DESCS">
      </div>
      <button type="submit" class="btn btn-success">Guardar</button> 
      <a href="?c=class20desas&m=index" class="btn btn-default" role="button">Regresar</a>    
     </form>
   </div>
</body>
</html>