<!DOCTYPE html>
<html>
<head>
	<title>Editar Ubicacion </title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
  <center>

    <h2>Editar Ubicacion: <?php echo $this->class32capuso->getAtributo('PU32DESUSO');?> </h2>
  </center>
  <div class="container">
    <form action="?c=class32capuso&m=editar" method="post">
      <div class="form-group">
        <label for="PU32IDCUSO">ID</label>
        <input type="text" class="form-control" id="PU32IDCUSO" name="PU32IDCUSO" value="<?php echo $this->class32capuso->getAtributo('PU32IDCUSO');?>" readonly>
      </div>
      <div class="form-group">
        <label for="PU32DESUSO">Desripción</label>
        <input type="text" class="form-control" id="PU32DESUSO" name="PU32DESUSO" value="<?php echo $this->class32capuso->getAtributo('PU32DESUSO');?> " >
      </div>
     
      <button type="submit" class="btn btn-success">Editar</button> 
      <a href="?c=class32capuso&m=index" class="btn btn-default" role="button">Regresar</a>    
    </form>
  </div>
</body>
</html>
