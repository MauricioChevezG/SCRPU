<!DOCTYPE html>
<html>
<head>
	<title>Editar localización</title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
  <center>
    <h2>Editar localización: <?php echo $this->class08regcor->getAtributo('PU08NORTE');?> </h2>
  </center>
  <div class="container">
    <form action="?c=class08regcor&m=editar" method="post">
      <div class="form-group">
        <label for="PU08IDGPS">Código de localización</label>
        <input type="text" class="form-control" id="PU08IDGPS" name="PU08IDGPS" value="<?php echo $this->class08regcor->getAtributo('PU08IDGPS');?>" readonly>
      </div>
      <div class="form-group">
        <label for="PU08NORTE">Norte:</label>
        <input type="text" class="form-control" id="PU08NORTE" name="PU08NORTE" value="<?php echo $this->class08regcor->getAtributo('PU08NORTE');?> " >
      </div>
      <div class="form-group">
        <label for="PU08ESTE">Este:</label>
        <input type="text" class="form-control" id="PU08ESTE" name="PU08ESTE" 
        value="<?php echo $this->class08regcor->getAtributo('PU08ESTE');?> ">
      </div>
      <div class="form-group">
        <label for="PU08ALTITUD">Altitud:</label>
        <input type="text" class="form-control" id="PU08ALTITUD" name="PU08ALTITUD"
        value="<?php echo $this->class08regcor->getAtributo('PU08ALTITUD');?> ">
      </div>
      <button type="submit" class="btn btn-success">Editar</button> 
      <a href="?c=class08regcor&m=index" class="btn btn-default" role="button">Regresar</a>    
    </form>
  </div>
</body>
</html>
