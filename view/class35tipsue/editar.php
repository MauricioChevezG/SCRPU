<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Tipo Suelo</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>


<body>
  <center>
    <h2>Editar Tipo suelo: <?php echo $this->class35tipsue->getAtributo('PU35DESTIP');?> </h2>
  </center>
  <div class="container-fluid">
    <form action="?c=class35tipsue&m=editar" method="post">
      <div class="form-group">
        <label for="PU35IDTIPS">Código de Tipo Suelo:</label>
        <input type="text" class="form-control" id="PU35IDTIPS" name="PU35IDTIPS" value="<?php echo $this->class35tipsue->getAtributo('PU35IDTIPS');?>" readonly>
      </div>
      <div class="form-group">
        <label for="PU35DESTIP">Descripción de Tipo Suelo:</label>
        <input type="text" class="form-control" id="PU35DESTIP" name="PU35DESTIP" value="<?php echo $this->class35tipsue->getAtributo('PU35DESTIP');?> " >
      </div>
     
      <button type="submit" class="btn btn-success">Editar</button> 
      <a href="?c=class35tipsue&m=index" class="btn btn-danger" role="button">Regresar</a>    
    </form>
  </div>
   <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
