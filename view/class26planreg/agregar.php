<!DOCTYPE html>
<html>
<head>
  <title>Nuevo Plan Regulador</title>
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<body>
  <center>
    <h2>Agregar Plan Regulador</h2>
  </center>
  <div class="container">
    <form action="?c=class26planreg&m=agregar" method="post">
    
      <div class="form-group">
        <label for="PU26IDPLAN">ID PLAN REGULADOR</label>
        <input type="text" class="form-control" id="PU26IDPLAN" name="PU26IDPLAN">
      </div>

      <div class="form-group">
        <label for="PU26PLNDESC">PLAN DESCRIPCION</label>
        <input type="text" class="form-control" id="PU26PLNDESC" name="PU26PLNDESC">
      </div>
      <button type="submit" class="btn btn-success">Guardar</button> 
      <a href="?c=class26planreg&m=index" class="btn btn-default" role="button">Regresar</a>    
     </form>
   </div>
</body>
</html>