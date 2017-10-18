
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Terreno Frete a Ruta</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>

  <center>
    <h2>Editar Terreno Frete a Ruta: <?php echo $this->class07terrft->getAtributo('PU07NOMTFR');?> </h2>
  </center>

  <div class="container-fluid">
    <form action="?c=class07terrft&m=editar" method="post">
      <div class="form-group">
        <label for="PU07IDTFR">Código del Terreno Frete a Ruta:</label>
        <input type="text" class="form-control" id="PU07IDTFR" name="PU07IDTFR" value="<?php echo $this->class07terrft->getAtributo('PU07IDTFR');?>" readonly>
      </div>
      <div class="form-group">
        <label for="PU07NOMTFR">Nombre del Terreno Frete a Ruta:</label>
        <input type="text" class="form-control" id="PU07NOMTFR" name="PU07NOMTFR" value="<?php echo $this->class07terrft->getAtributo('PU07NOMTFR');?> " >
      </div>
     
      <button type="submit" class="btn btn-success">Editar</button> 
      <a href="?c=class07terrft&m=index" class="btn btn-danger" role="button">Regresar</a>    
    </form>
  </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
