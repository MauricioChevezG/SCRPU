<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Existencia de Calle en Servidumbre Frente a Ruta</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
  <center>

    <h2>Editar Servicio de: <?php echo $this->class18calleser->getAtributo('PU18DESCS');?> </h2>
  </center>
  <div class="container-fluid">
    <form action="?c=class18calleser&m=editar" method="post">
      <div class="form-group">
        <label for="PU18IDCSCLS">Código Existencia de Calle en Servidumbre Frente a Ruta:</label>
        <input type="text" class="form-control" id="PU18IDCSCLS" name="PU18IDCSCLS" value="<?php echo $this->class18calleser->getAtributo('PU18IDCSCLS');?>" readonly>
      </div>
      <div class="form-group">
        <label for="PU18DESCS">Desripción Existencia de Calle en Servidumbre Frente a Ruta:</label>
        <input type="text" class="form-control" id="PU18DESCS" name="PU18DESCS" value="<?php echo $this->class18calleser->getAtributo('PU18DESCS');?> " >
      </div>
     
      <button type="submit" class="btn btn-success">Editar</button> 
      <a href="?c=class18calleser&m=index" class="btn btn-danger" role="button">Regresar</a>    
    </form>
  </div>
  <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>