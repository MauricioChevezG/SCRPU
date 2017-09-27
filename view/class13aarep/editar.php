<!DOCTYPE html>
<html>
<head>
	<title>Editar Afectación de Áreas de protección</title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
  <center>
      
    <h2>Editar Afectación de Áreas de protección: <?php echo $this->class13aarep->getAtributo('PU13DESCAAP');?> </h2>
  </center>
  <div class="container">
    <form action="?c=class13aarep&m=editar" method="post">
      <div class="form-group">
        <label for="PU13IDAAP">ID Afectación de Áreas de protección</label>
        <input type="text" class="form-control" id="PU13IDAAP" name="PU13IDAAP" value="<?php echo $this->class13aarep->getAtributo('PU13IDAAP');?>" readonly>
      </div>
      <div class="form-group">
        <label for="PU13DESCAAP">Desripción Afectación de Áreas de protección</label>
        <input type="text" class="form-control" id="PU13DESCAAP" name="PU13DESCAAP" value="<?php echo $this->class13aarep->getAtributo('PU13DESCAAP');?> " >
      </div>
     
      <button type="submit" class="btn btn-success">Editar</button> 
      <a href="?c=class13aarep&m=index" class="btn btn-default" role="button">Regresar</a>    
    </form>
  </div>
</body>
</html>
