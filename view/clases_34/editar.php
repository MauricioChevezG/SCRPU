<!DOCTYPE html>
<html>
<head>
	<title>Editar Ubicacion </title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
  <center>

    <h2>Editar Ubicacion: <?php echo $this->clases_34->getAtributo('PU34DESCLA');?> </h2>
  </center>
  <div class="container">
    <form action="?c=clases_34&m=editar" method="post">
      <div class="form-group">
        <label for="PU34IDCLAS">ID</label>
        <input type="text" class="form-control" id="PU34IDCLAS" name="PU34IDCLAS" value="<?php echo $this->clases_34->getAtributo('PU34IDCLAS');?>" readonly>
      </div>
      <div class="form-group">
        <label for="PU34DESCLA">Desripción</label>
        <input type="text" class="form-control" id="PU34DESCLA" name="PU34DESCLA" value="<?php echo $this->clases_34->getAtributo('PU34DESCLA');?> " >
      </div>
     
      <button type="submit" class="btn btn-success">Editar</button> 
      <a href="?c=clases_34&m=index" class="btn btn-default" role="button">Regresar</a>    
    </form>
  </div>
</body>
</html>
