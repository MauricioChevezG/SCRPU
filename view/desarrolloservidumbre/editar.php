<!DOCTYPE html>
<html>
<head>
	<title>Editar Desarrolo de Servidumbre</title>
	<link rel="stylesheet" type="text/css" href="../../datatables/Bootstrap-3.3.7/css/bootstrap-theme.min.css">
  <link rel="stylesheet" type="text/css" href="../../datatables/Bootstrap-3.3.7/css/bootstrap.min.css">
</head>
<body>
  <center>

    <h2>Editar Desarrolo de Servidumbre: <?php echo $this->desarrolloservidumbre->getAtributo('PU20DESCS');?> </h2>
  </center>
  <div class="container">
    <form action="?c=desarrolloservidumbre&m=editar" method="post">
      <div class="form-group">
        <label for="PU20IDDESAS">ID</label>
        <input type="text" class="form-control" id="PU20IDDESAS" name="PU20IDDESAS" value="<?php echo $this->desarrolloservidumbre->getAtributo('PU20IDDESAS');?>" readonly>
      </div>
      <div class="form-group">
        <label for="PU20DESCS">Desripción</label>
        <input type="text" class="form-control" id="PU20DESCS" name="PU20DESCS" value="<?php echo $this->desarrolloservidumbre->getAtributo('PU20DESCS');?>" >
      </div>
     
      <button type="submit" class="btn btn-success">Editar</button> 
      <a href="?c=desarrolloservidumbre&m=index" class="btn btn-default" role="button">Regresar</a>    
    </form>
  </div>
</body>
</html>