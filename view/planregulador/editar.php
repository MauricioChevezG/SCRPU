<!DOCTYPE html>
<html>
<head>
	<title>Editar Plan Regulador</title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
  <center>

    <h2>Editar Plan Regulador: <?php echo $this->planregulador->getAtributo('PU26PLNDESC');?> </h2>
  </center>
  <div class="container">
    <form action="?c=planregulador&m=editar" method="post">
      <div class="form-group">
        <label for="PU26IDPLAN">ID</label>
        <input type="text" class="form-control" id="PU26IDPLAN" name="PU26IDPLAN" value="<?php echo $this->planregulador->getAtributo('PU26IDPLAN');?>" readonly>
      </div>
      <div class="form-group">
        <label for="PU26PLNDESC">Desripción</label>
        <input type="text" class="form-control" id="PU26PLNDESC" name="PU26PLNDESC" value="<?php echo $this->planregulador->getAtributo('PU26PLNDESC');?> " >
      </div>
     
      <button type="submit" class="btn btn-success">Editar</button> 
      <a href="?c=planregulador&m=index" class="btn btn-default" role="button">Regresar</a>    
    </form>
  </div>
</body>
</html>
