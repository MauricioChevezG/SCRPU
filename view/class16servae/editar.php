<!DOCTYPE html>
<html>
<head>
	<title>Editar Servicio de Agua y Electricidad:</title>
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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
</body>
</html>