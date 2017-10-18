<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Servicio de Agua y Electricidad</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
  <center>

    <h2>Editar Servicio de: <?php echo $this->class16servae->getAtributo('PU16DESCAE');?> </h2>
  </center>
  <div class="container">
    <form action="?c=class16servae&m=editar" method="post">
      <div class="form-group">
        <label for="PU16IDSAE">Código del Servicio:</label>
        <input type="text" class="form-control" id="PU16IDSAE" name="PU16IDSAE" value="<?php echo $this->class16servae->getAtributo('PU16IDSAE');?>" readonly>
      </div>
      <div class="form-group">
        <label for="PU16DESCAE">Desripción del Servicio:</label>
        <input type="text" class="form-control" id="PU16DESCAE" name="PU16DESCAE" value="<?php echo $this->class16servae->getAtributo('PU16DESCAE');?> " >
      </div>
     
      <button type="submit" class="btn btn-success">Editar</button> 
      <a href="?c=class16servae&m=index" class="btn btn-danger" role="button">Regresar</a>    
    </form>
  </div>

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>