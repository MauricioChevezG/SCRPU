<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <title>Nuevo Usuario</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
      <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
</head>

<body>
    <div class="container-fluid">
        <center>
    <h2>Inspeccion</h2>
  </center>
    <form action="?c=class0102usuarios&m=agregar" method="post">
<div class=" container-fluid    well"> 
      <center>
    <h4>wee</h4>
  </center>
  <div class="  form-group  ">
      <div class="col-xs-2 text-center">
        <label for="PU08NORTE">Numero de Tramite:</label>
        <input type="text" class="form-control" id="PU08NORTE" name="PU08NORTE">
      </div>
       <br>
       <div class="col-xs-2 text-center">
       <p>Fecha: <input type="text" id="datepicker"></p>
       <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
      </div> </div>
</div>

      <div class="container-fluid  well   "> 
       <center>
    <h4>Agregar Localización</h4>
  </center>
  <div class="  form-group  ">
     <div class=" col-xs-2 text-center">
      
        <label for="PU08NORTE">Norte:</label>
        <input type="text" class="form-control" id="PU08NORTE" name="PU08NORTE">
        
      </div>
      <div class="col-xs-2 text-center">
          
        <label for="PU08ESTE">Este:</label>
        <input type="text" class="form-control" id="PU08ESTE" name="PU08ESTE">
      
      </div>
      <div class="col-xs-2 text-center">
         
        <label for="PU08ALTITUD">Altitud:</label>
        <input type="text" class="form-control" id="PU08ALTITUD" name="PU08ALTITUD">
      
      </div> </div>
      </div>

      <div class="container-fluid    well"> 
        <center>
    <h4>Terreno frente a Ruta</h4>
  </center>
      <div class="checkbox">
      <label class="checkbox-inline">
    <input type="checkbox" value="">Cantonal.</label>
    <label class="checkbox-inline">
      <input type="checkbox" value="">Nacional.</label>
    <label class="checkbox-inline">
      <input type="checkbox" value="">Calle fisicamente.</label>
    <label class="checkbox-inline">
      <input type="checkbox" value="">Solo en Plano.</label>
       <br>
    <label class="checkbox-inline">
      <input type="checkbox" value="">No existe</label>
</div>
 </div>
<div class="container-fluid    well"> 
        <center>
    <h4>Descripción del Espacio Geográfico</h4>
  </center>
      <div class="checkbox ">
      <label class="checkbox-inline">
    <input type="checkbox" value="">Topografía Plana.</label>
    <label class="checkbox-inline">
      <input type="checkbox" value="">Topografía Semiplano.</label>
    <label class="checkbox-inline">
      <input type="checkbox" value="">Topografía con depresión.</label><br>
    <label class="checkbox-inline">
      <input type="checkbox" value="">Existen Movimientos de Tierra.</label>
    <label class="checkbox-inline">
      <input type="checkbox" value="">Futuro Movimientos de Tierra.</label>
    <label class="checkbox-inline">
      <input type="checkbox" value="">Topografía Irregular.</label><br>
      <label class="checkbox-inline">
      <input type="checkbox" value="">Otros.</label>
</div>
 </div>




      <button type="submit" class="btn btn-success">Guardar Usuario</button> 
      <a href="?c=class0102usuarios&m=index" class="btn btn-danger" role="button">Regresar</a>    
     </form>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>