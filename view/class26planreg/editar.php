<!DOCTYPE html>
<html>


<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Plan Regulador</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>


<body>
  <center>

    <h2>Editar Plan Regulador: <?php echo $this->class26planreg->getAtributo('PU26PLNDESC');?> </h2>
  </center>
  <div class="container-fluid">
    <form action="?c=class26planreg&m=editar" method="post">
      <div class="form-group">
        <label for="PU26IDPLAN">código del Plan Regulador</label>
        <input type="text" class="form-control" id="PU26IDPLAN" name="PU26IDPLAN" value="<?php echo $this->class26planreg->getAtributo('PU26IDPLAN');?>" readonly>
      </div>
      <div class="form-group">
        <label for="PU26PLNDESC">Desripción del Plan:</label>
        <input type="text" class="form-control" id="PU26PLNDESC" name="PU26PLNDESC" value="<?php echo $this->class26planreg->getAtributo('PU26PLNDESC');?> " >
      </div>
     
      <button type="submit" class="btn btn-success">Editar</button> 
      <a href="?c=class26planreg&m=index" class="btn btn-danger" role="button">Regresar</a>    
    </form>
  </div>
  <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
