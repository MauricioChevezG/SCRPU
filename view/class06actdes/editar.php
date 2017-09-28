<!DOCTYPE html>
<html>
<head>
	<title>Editar Actividad a Desarrollar</title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
  <center>

    <h2>Editar Actividad a Desarrollar: <?php echo $this->class06actdes->getAtributo('PU06DESAD');?> </h2>
  </center>
  <div class="container">
    <form action="?c=class06actdes&m=editar" method="post">
      <div class="form-group">
        <label for="PU06IDACTDES">ID Actividad a Desarrollar</label>
        <input type="text" class="form-control" id="PU06IDACTDES" name="PU06IDACTDES" value="<?php echo $this->class06actdes->getAtributo('PU06IDACTDES');?>" readonly>
      </div>
      <div class="form-group">
        <label for="PU06DESAD">Desripción Actividad a Desarrollar</label>
        <input type="text" class="form-control" id="PU06DESAD" name="PU06DESAD" value="<?php echo $this->class06actdes->getAtributo('PU06DESAD');?> " >
      </div>
     
      <button type="submit" class="btn btn-success">Editar</button> 
      <a href="?c=class06actdes&m=index" class="btn btn-default" role="button">Regresar</a>    
    </form>
  </div>
</body>
</html>
