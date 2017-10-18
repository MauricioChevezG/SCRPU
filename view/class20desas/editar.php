<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Desarrolo de Servidumbre</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
  <center>

    <h2>Editar Desarrolo de Servidumbre: <?php echo $this->class20desas->getAtributo('PU20DESCS');?> </h2>
  </center>
  <div class="container-fluid">
    <form action="?c=class20desas&m=editar" method="post">
      <div class="form-group">
        <label for="PU20IDDESAS">Código del Desarrollo:</label>
        <input type="text" class="form-control" id="PU20IDDESAS" name="PU20IDDESAS" value="<?php echo $this->class20desas->getAtributo('PU20IDDESAS');?>" readonly>
      </div>
      <div class="form-group">
        <label for="PU20DESCS">Descripción del Desarrollo:</label>
        <input type="text" class="form-control" id="PU20DESCS" name="PU20DESCS" value="<?php echo $this->class20desas->getAtributo('PU20DESCS');?>" >
      </div>
     
      <button type="submit" class="btn btn-success">Editar</button> 
      <a href="?c=class20desas&m=index" class="btn btn-danger" role="button">Regresar</a>    
    </form>
  </div>
     <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>