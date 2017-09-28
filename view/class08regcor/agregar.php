<!DOCTYPE html>
<html>
<head>
	<title>Nueva Localización</title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<body>
  <center>
    <h2>Agregar Nueva Localización</h2>
  </center>
  <div class="container">
    <form action="?c=class08regcor&m=agregar" method="post">
     	<div class="form-group">
        <label for="PU08IDGPS">Código de localización</label>
        <input type="text" class="form-control" id="PU08IDGPS" name="PU08IDGPS">
      </div>
      <div class="form-group">
        <label for="PU08NORTE">Norte:</label>
        <input type="text" class="form-control" id="PU08NORTE" name="PU08NORTE">
      </div>
      <div class="form-group">
        <label for="PU08ESTE">Este:</label>
        <input type="text" class="form-control" id="PU08ESTE" name="PU08ESTE">
      </div>
      <div class="form-group">
        <label for="PU08ALTITUD">Altitud</label>
        <input type="text" class="form-control" id="PU08ALTITUD" name="PU08ALTITUD">
      </div>
      <button type="submit" class="btn btn-success">Guardar</button> 
      <a href="?c=class08regcor&m=index" class="btn btn-default" role="button">Regresar</a>    
     </form>
   </div>
</body>
</html>