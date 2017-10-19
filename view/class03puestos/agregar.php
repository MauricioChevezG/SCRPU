<!-- <!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nuevo Puesto</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body> -->
    <div class="container-fluid">
          <center>
    <h2>Agregar nuevo puesto</h2>
  </center>
    <form action="?c=class03puestos&m=agregar" method="post">
      <div class="form-group">
        <label for="PU03IDPUES">Código del Puesto:</label>
        <input type="text" class="form-control" id="PU03IDPUES" name="PU03IDPUES">
      </div>
      <div class="form-group">
        <label for="PU03PUESTO">Nombre del puesto:</label>
        <input type="text" class="form-control" id="PU03PUESTO" name="PU03PUESTO">
      </div>

      <button type="submit" class="btn btn-success">Guardar puesto</button> 
      <a id="regresar" class="btn btn-danger" role="button">Regresar</a>  

      <script type="text/javascript">
        $("#regresar").click(function(){
        var bool=confirm("XXXXX----DESEA REGRESAR----XXXXX?");
        if(bool){
        $("#contenido").load("?c=class03puestos");
        }else{
        $.alert("CANCELADO");
        }
      });
      </script> 
     </form>
    </div>
 <!--    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html> -->