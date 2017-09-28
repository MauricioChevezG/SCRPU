<!DOCTYPE html>
<html>
<head>
	<title>Editar Servicio de Electricidad y Agua</title>
	<link rel="stylesheet" type="text/css" href="../../datatables/Bootstrap-3.3.7/css/bootstrap-theme.min.css">
  <link rel="stylesheet" type="text/css" href="../../datatables/Bootstrap-3.3.7/css/bootstrap.min.css">
</head>
<body>
  <center>

    <h2>Editar Servicio de Electricidad y Agua: <?php echo $this->callefrenteruta->getAtributo('PU18DESCS');?> </h2>
  </center>
  <div class="container">
    <form action="?c=callefrenteruta&m=editar" method="post">
      <div class="form-group">
        <label for="PU18IDCSCLS">ID</label>
        <input type="text" class="form-control" id="PU18IDCSCLS" name="PU18IDCSCLS" value="<?php echo $this->callefrenteruta->getAtributo('PU18IDCSCLS');?>" readonly>
      </div>
      <div class="form-group">
        <label for="PU18DESCS">Desripción</label>
        <input type="text" class="form-control" id="PU18DESCS" name="PU18DESCS" value="<?php echo $this->callefrenteruta->getAtributo('PU18DESCS');?>" >
      </div>
     
      <button type="submit" class="btn btn-success">Editar</button> 
      <a href="?c=callefrenteruta&m=index" class="btn btn-default" role="button">Regresar</a>    
    </form>
  </div>
</body>
</html>