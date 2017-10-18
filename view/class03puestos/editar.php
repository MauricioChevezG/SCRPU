<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Puesto</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
    <center>
    <h2>Editar puesto: <?php echo $this->class03puestos->getAtributo('PU03PUESTO');?> </h2>
</center>
    <div class="container-fluid">
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
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>