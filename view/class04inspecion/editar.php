<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Usuario</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
    <center>
    <h2>Editar usuario: <?php echo $this->class0102usuarios->getAtributo('PU01NOMUSU');?> </h2>
</center>
    <div class="container-fluid">
        <form action="?c=class0102usuarios&m=editar" method="post">
      <div class="form-group">
        <label for="PU01CEDUSU">Cédula:</label>
        <input type="text" class="form-control" id="PU01CEDUSU" name="PU01CEDUSU" value="<?php echo $this->class0102usuarios->getAtributo('PU01CEDUSU');?>" readonly>
      </div>
      <div class="form-group">
        <label for="PU01NOMUSU">Nombre:</label>
        <input type="text" class="form-control" id="PU01NOMUSU" name="PU01NOMUSU" value="<?php echo $this->class0102usuarios->getAtributo('PU01NOMUSU');?> " >
      </div>
      <div class="form-group">
        <label for="PU01APE1USU">Primer Apellido:</label>
        <input type="text" class="form-control" id="PU01APE1USU" name="PU01APE1USU" value="<?php echo $this->class0102usuarios->getAtributo('PU01APE1USU');?> ">
      </div>
      <div class="form-group">
        <label for="PU01APE2USU">Segundo Apellido:</label>
        <input type="text" class="form-control" id="PU01APE2USU" name="PU01APE2USU" value="<?php echo $this->class0102usuarios->getAtributo('PU01APE2USU');?> ">
      </div>
       <div class="form-group">
        <label for="PU02TELUSU">Teléfono:</label>
        <input type="text" class="form-control" id="PU02TELUSU" name="PU02TELUSU" value="<?php echo $this->class0102usuarios->getAtributo('PU02TELUSU');?> ">
      </div>
       <div class="form-group">
        <label for="PU02CORUSU">Correo: </label>
        <input type="text" class="form-control" id="PU02CORUSU" name="PU02CORUSU" value="<?php echo $this->class0102usuarios->getAtributo('PU02CORUSU');?> ">
      </div>
         <div class="form-group">
        <label for="PU03IDPUES">Puesto: </label>
        <input type="text" class="form-control" id="PU03IDPUES" name="PU03IDPUES" value="<?php echo $this->class0102usuarios->getAtributo('PU03IDPUES');?> ">
      </div>

      <button type="submit" class="btn btn-success">Editar Usuario</button> 
      <a href="?c=class0102usuarios&m=index" class="btn btn-danger" role="button">Regresar</a>    
    </form>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>