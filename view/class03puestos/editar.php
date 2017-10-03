<!DOCTYPE html>
<html>
<head>
	<title>Editar puesto:</title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
  <center>
    <h2>Editar puesto: <?php echo $this->class03puestos->getAtributo('PU03PUESTO');?> </h2>
  </center>
  <div class="container">
    <form action="?c=class03puestos&m=editar" method="post">
      <div class="form-group">
        <label for="PU03IDPUES">Código del Puesto:</label>
        <input type="text" class="form-control" id="PU03IDPUES" name="PU03IDPUES" value="<?php echo $this->class03puestos->getAtributo('PU03IDPUES');?>" readonly>
      </div>
      <div class="form-group">
        <label for="PU03PUESTO">Nombre del puesto</label>
        <input type="text" class="form-control" id="PU03PUESTO" name="PU03PUESTO" value="<?php echo $this->class03puestos->getAtributo('PU03PUESTO');?> " >
      </div>
      
      <button type="submit" class="btn btn-success">Editar puesto</button> 
      <a href="?c=class03puestos&m=index" class="btn btn-danger" role="button">Regresar</a>    
    </form>
  </div>
</body>
</html>
