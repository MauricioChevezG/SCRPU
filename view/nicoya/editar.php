<!DOCTYPE html>
<html>
<head>
	<title>Editar Ubicacion </title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
  <center>

    <h2>Editar Ubicacion: <?php echo $this->nicoya->getAtributo('PU27DSCUBIC');?> </h2>
  </center>
  <div class="container">
    <form action="?c=nicoya&m=editar" method="post">
      <div class="form-group">
        <label for="PU27IDUBIC">ID</label>
        <input type="text" class="form-control" id="PU27IDUBIC" name="PU27IDUBIC" value="<?php echo $this->nicoya->getAtributo('PU27IDUBIC');?>" readonly>
      </div>
      <div class="form-group">
        <label for="PU27DSCUBIC">Desripción</label>
        <input type="text" class="form-control" id="PU27DSCUBIC" name="PU27DSCUBIC" value="<?php echo $this->nicoya->getAtributo('PU27DSCUBIC');?> " >
      </div>
     
      <button type="submit" class="btn btn-success">Editar</button> 
      <a href="?c=nicoya&m=index" class="btn btn-default" role="button">Regresar</a>    
    </form>
  </div>
</body>
</html>
