<!DOCTYPE html>
<html>
<head>
	<title>Editar Existencia de Calle en Servidumbre Frente a Ruta:</title>
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
  <center>

    <h2>Editar Existencia de Calle en Servidumbre Frente a Ruta: <?php echo $this->class18calleser->getAtributo('PU18DESCS');?> </h2>
  </center>
  <div class="container">
    <form action="?c=class18calleser&m=editar" method="post">
      <div class="form-group">
        <label for="PU18IDCSCLS">Código de Existencia de Calle en Servidumbre Frente a Ruta:</label>
        <input type="text" class="form-control" id="PU18IDCSCLS" name="PU18IDCSCLS" value="<?php echo $this->class18calleser->getAtributo('PU18IDCSCLS');?>" readonly>
      </div>
      <div class="form-group">
        <label for="PU18DESCS">Desripción de Existencia de Calle en Servidumbre Frente a Ruta:</label>
        <input type="text" class="form-control" id="PU18DESCS" name="PU18DESCS" value="<?php echo $this->class18calleser->getAtributo('PU18DESCS');?>" >
      </div>
     
      <button type="submit" class="btn btn-success">Editar</button> 
      <a href="?c=class18calleser&m=index" class="btn btn-default" role="button">Regresar</a>    
    </form>
  </div>
</body>
</html>