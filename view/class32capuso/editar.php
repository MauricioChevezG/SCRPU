<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Capacidad de Uso de Suelo</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
  <center>

    <h2>Editar Ubicación: <?php echo $this->class32capuso->getAtributo('PU32DESUSO');?> </h2>
  </center>
  <div class="container-fluid">
    <form action="?c=class32capuso&m=editar" method="post">
      <div class="form-group">
        <label for="PU32IDCUSO">Código de Capacidad de Uso de Suelo</label>
        <input type="text" class="form-control" id="PU32IDCUSO" name="PU32IDCUSO" value="<?php echo $this->class32capuso->getAtributo('PU32IDCUSO');?>" readonly>
      </div>
      <div class="form-group">
        <label for="PU32DESUSO">Descripción de Capacidad de Uso de Suelo</label>
        <input type="text" class="form-control" id="PU32DESUSO" name="PU32DESUSO" value="<?php echo $this->class32capuso->getAtributo('PU32DESUSO');?> " >
      </div>
     
      <button type="submit" class="btn btn-success">Editar</button> 
      <a href="?c=class32capuso&m=index" class="btn btn-danger" role="button">Regresar</a>    
    </form>
  </div>
   <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
