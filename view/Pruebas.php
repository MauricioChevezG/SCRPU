<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nueva Inspeccion</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/js/jquery-ui/jquery-ui.min.css">
</head>

<body>
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <center><h2>Inspeccion</h2></center>
          <form action="?c=class0102usuarios&m=agregar" method="post">
            <fieldset>

              <div class="form-group">
                <div class="col-md-12">
                  <div class="container-fluid well"> 
                    <center><h4>INfo Tramite</h4></center>
                    <div class="input-group">
                      <div class="col-md-5 text-center">
                        <label for="PU08NORTE">Numero de Tramite:</label>
                        <input type="text" class="form-control" id="PU08NORTE" name="PU08NORTE">
                      </div>
                      <div class="col-md-5 text-center">
                        <label for="fecha">Fecha:</label>
                        <input type="text" class="form-control" id="fecha">
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              
              <div class="form-group">
                <div class="col-md-12">
                  <div class="container-fluid well"> 
                    <center><h4>Agregar Localización</h4></center>
                      <div class="col-md-3 text-center">
                        <label for="PU08NORTE">Norte:</label>
                        <input type="text" class="form-control" id="PU08NORTE" name="PU08NORTE"> 
                      </div>
                      <div class="col-md-3 text-center">   
                        <label for="PU08ESTE">Este:</label>
                        <input type="text" class="form-control" id="PU08ESTE" name="PU08ESTE">
                      </div>
                      <div class="col-md-3 text-center">
                        <label for="PU08ALTITUD">Altitud:</label>
                        <input type="text" class="form-control" id="PU08ALTITUD" name="PU08ALTITUD">
                      </div>
                  </div>
                </div>
              </div>

            
              <div class="form-group">
                <div class="col-md-12">
                    <div class="container-fluid well">
                      <center><h4>Terreno frente a Ruta</h4></center>
                      <center>
                        <label class="radio-inline control-label">
                          <input type="radio" name="optradio">Cantonal.
                        </label>
                        <label class="radio-inline control-label">
                          <input type="radio" name="optradio">Nacional.
                        </label>
                        <label class="radio-inline control-label">
                          <input type="radio" name="optradio">Calle fisicamente.
                        </label>
                        <label class="radio-inline control-label">
                          <input type="radio" name="optradio">Solo en Plano.
                        </label>
                        <label class="radio-inline control-label">
                          <input type="radio" name="optradio">No existe
                        </label>
                      </center>
                       
                    </div>
                </div>
              </div>
            
              <div class="form-group">
                <div class="col-md-6">
                    <div class="container-fluid well"> 
                      <h4>Descripción del Espacio Geográfico</h4>
                      <div class="checkbox ">
                        <label><input type="checkbox" value="">Topografía Plana.</label>
                      </div>
                      <div class="checkbox ">
                        <label><input type="checkbox" value="">Topografía Semiplano.</label>
                      </div>
                      <div class="checkbox ">
                        <label><input type="checkbox" value="">Topografía con depresión.</label>
                      </div>
                      <div class="checkbox ">
                        <label><input type="checkbox" value="">Existen Movimientos de Tierra.</label>
                      </div>
                      <div class="checkbox ">
                        <label><input type="checkbox" value="">Futuro Movimientos de Tierra.</label>
                      </div>
                      <div class="checkbox ">
                        <label><input type="checkbox" value="">Topografía Irregular.</label>
                      </div>
                      <div class="checkbox ">
                        <label><input type="checkbox" value="">Otros.</label>
                      </div>
                    </div>
                </div>
              </div>

              <div class="form-group">
                <div class="col-md-6">
                  <div class="container-fluid    well">     
                    <h4>Descripción Aspectos Biofisicos</h4>
                    <div class="checkbox ">
                      <label><input type="checkbox" value="">Vegetación de Jardín.</label>
                    </div>
                    <div class="checkbox ">
                      <label><input type="checkbox" value="">Tipo Pasto.</label>
                    </div>
                    <div class="checkbox ">
                      <label><input type="checkbox" value="">Bosque Secundario.</label>
                    </div>
                    <div class="checkbox ">
                      <label><input type="checkbox" value="">Bosque Primario.</label>
                    </div>
                    <div class="checkbox ">
                      <label><input type="checkbox" value="">Arboles Dispersos.</label>
                    </div>
                    <div class="checkbox ">
                      <label><input type="checkbox" value="">Otros.</label>
                    </div>
                  </div>
                </div>
              </div>

              <div class="form-group">
                <div class="col-md-6">
                  <div class="container-fluid well"> 
                    <h4>Afectación a Área Protegida</h4>
                    <div class="checkbox ">
                      <label><input type="checkbox" value="">Quebrada.</label>
                    </div>
                    <div class="checkbox ">
                      <label><input type="checkbox" value="">Pozos.</label>
                    </div>
                    <div class="checkbox ">
                      <label><input type="checkbox" value="">Rio.</label><br>
                    </div>
                    <div class="checkbox ">
                      <label> <input type="checkbox" value="">Naciente.</label>
                    </div>
                    <div class="checkbox ">
                      <label><input type="checkbox" value="">Terreno en la Zona del Acuíferos Mala Noche.</label>
                    </div>
                    <div class="checkbox ">
                      <label><input type="checkbox" value="">Terreno en la Zona del Acuíferos Potrero Caimital.</label>
                    </div>
                  </div>
                </div>
              </div>

              <div class="form-group">
                <div class="col-md-6">
                  <button type="submit" class="btn btn-success">Guardar</button> 
                  <a href="?c=class0102usuarios&m=index" class="btn btn-danger" role="button">Regresar</a>
                </div>
              </div>
            </fieldset>
          </form>
      </div>
    </div>
  </div>
  <script src="assets/js/jquery.min.js"></script>
  <script src="assets/js/jquery-ui/jquery-ui.min.js"></script>
  <script src="assets/bootstrap/js/bootstrap.min.js"></script>
  <script>
    $( function() {
      $( "#fecha" ).datepicker();
    } );
  </script>
</body>
</html>