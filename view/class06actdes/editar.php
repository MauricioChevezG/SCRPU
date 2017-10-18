<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Actividad a Desarrollar</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
    <center>
    <h2>Editar Actividad a Desarrollar: <?php echo $this->class06actdes->getAtributo('PU06DESAD');?> </h2>
</center>
    <div class="container-fluid">
        <form action="?c=class06actdes&m=editar" method="post">
      <div class="form-group">
        <label for="PU06IDACTDES">Código Actividad a Desarrollar:</label>
        <input type="text" class="form-control" id="PU06IDACTDES" name="PU06IDACTDES" value="<?php echo $this->class06actdes->getAtributo('PU06IDACTDES');?>" readonly>
      </div>
      <div class="form-group">
        <label for="PU06DESAD">Desripción Actividad a Desarrollar:</label>
        <input type="text" class="form-control" id="PU06DESAD" name="PU06DESAD" value="<?php echo $this->class06actdes->getAtributo('PU06DESAD');?> " >
      </div>
     
      <button type="submit" class="btn btn-success">Editar</button> 
      <a href="?c=class06actdes&m=index" class="btn btn-danger" role="button">Regresar</a>    
    </form>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>
