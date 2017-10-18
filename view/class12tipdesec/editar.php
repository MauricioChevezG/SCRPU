<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Editar Tipo de Desarrollo</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
  <center>
 
    <h2>Editar Tipo de Desarrollo: <?php echo $this->class12tipdesec->getAtributo('PU12TIPODES');?> </h2>
  </center>
  <div class="container">
    <form action="?c=class12tipdesec&m=editar" method="post">
      <div class="form-group">
        <label for="PU12IDTDESEC">Código Tipo de Desarrollo:</label>
        <input type="text" class="form-control" id="PU12IDTDESEC" name="PU12IDTDESEC" value="<?php echo $this->class12tipdesec->getAtributo('PU12IDTDESEC');?>" readonly>
      </div>
      <div class="form-group">
        <label for="PU12TIPODES">Desripción Tipo de Desarrollo:</label>
        <input type="text" class="form-control" id="PU12TIPODES" name="PU12TIPODES" value="<?php echo $this->class12tipdesec->getAtributo('PU12TIPODES');?> " >
      </div>
     
      <button type="submit" class="btn btn-success">Editar</button> 
      <a href="?c=class12tipdesec&m=index" class="btn btn-danger" role="button">Regresar</a>    
    </form>
  </div>
  <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
