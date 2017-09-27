<!DOCTYPE html>
<html>
<head>
	<title>Editar Aspectos Biofísicos</title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
  <center>

    <h2>Editar Espacio Geográfico: <?php echo $this->aspecto_biofisico->getAtributo('PU10DESCABIO');?> </h2>
  </center>
  <div class="container">
    <form action="?c=aspecto_biofisico&m=editar" method="post">
      <div class="form-group">
        <label for="PU10IDASBIO">ID Aspectos Biofísicos</label>
        <input type="text" class="form-control" id="PU10IDASBIO" name="PU10IDASBIO" value="<?php echo $this->aspecto_biofisico->getAtributo('PU10IDASBIO');?>" readonly>
      </div>
      <div class="form-group">
        <label for="PU10DESCABIO">Desripción Aspectos Biofísicos</label>
        <input type="text" class="form-control" id="PU10DESCABIO" name="PU10DESCABIO" value="<?php echo $this->aspecto_biofisico->getAtributo('PU10DESCABIO');?> " >
      </div>
     
      <button type="submit" class="btn btn-success">Editar</button> 
      <a href="?c=aspecto_biofisico&m=index" class="btn btn-default" role="button">Regresar</a>    
    </form>
  </div>
</body>
</html>
