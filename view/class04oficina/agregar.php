<?php $idactividades = $this->class04oficina->getTodasActividades(); ?>
   <div class="container-fluid">
     
  <center><h2>Guardar datos de Inspección Realizada</h2></center>
    <form action="?c=class04oficina&m=agregar" method="post" >

        <h4>Guardando información de Oficina al Trámite:</h4>
      <div class="col-xs-2">
  <input type="text" class="form-control" id="PU04IDTRA" name="PU04IDTRA" value="<?php echo $this->class04oficina->getAtributo('PU04IDTRA');?>"  readonly> <?php  $idtramite = $this->class04oficina->getAtributo('PU04IDTRA'); ?>
</div>

        <h3>Datos del solicitante:</h3>

     <div class="container-fluid">
          <div class="form-group row">
            <div class="col-xs-2">
                 <label for="PU39CEDSOLICI">Cédula del Solicitante:</label>
                  <input type="text" class="form-control" name="PU39CEDSOLICI" id="PU39CEDSOLICI">
            </div>
          </div>
      </div>

      <div class="container-fluid">
          <div class="form-group row">
            <div class="col-xs-2">
                 <label for="PU39NOMSOLICI">Nombre del Solicitante:</label>
                  <input type="text" class="form-control" name="PU39NOMSOLICI" id="PU39NOMSOLICI">
            </div>
          </div>
      </div>

      <div class="container-fluid">
          <div class="form-group row">
            <div class="col-xs-2">
                 <label for="PU39APE1SOLICI">1° Apellido del Solicitante:</label>
                  <input type="text" class="form-control" name="PU39APE1SOLICI" id="PU39APE1SOLICI">
            </div>
          </div>
      </div>

      <div class="container-fluid">
          <div class="form-group row">
            <div class="col-xs-2">
                 <label for="PU39APE2SOLICI">2° Apellido del Solicitante:</label>
                  <input type="text" class="form-control" name="PU39APE2SOLICI" id="PU39APE2SOLICI">
            </div>
          </div>
      </div>

      <div class="container-fluid">
          <div class="form-group row">
            <div class="col-xs-2">
                 <label for="PU04IDDISTRITO">Distrito al que pertenece:</label>
                  <input type="text" class="form-control" name="PU04IDDISTRITO" id="PU04IDDISTRITO">
            </div>
          </div>
      </div>

     <div class="container-fluid">
          <div class="form-group row">
            <div class="col-xs-2">
                 <label for="PU39BARRIO">Barrio donde vive:</label>
                  <input type="text" class="form-control" name="PU39BARRIO" id="PU39BARRIO">
            </div>
          </div>
      </div>

      <div class="container-fluid">
          <div class="form-group row">
            <div class="col-xs-2">
                 <label for="PU39DIRECCION">Dirección exacta de recidencia:</label>
                  <input type="text" class="form-control" name="PU39DIRECCION" id="PU39DIRECCION">
            </div>
          </div>
      </div>

        <h3>Datos del propietario:</h3>

     <div class="container-fluid">
          <div class="form-group row">
            <div class="col-xs-2">
                 <label for="PU40CEDPROPIE">Cédula del Propietario:</label>
                  <input type="text" class="form-control" name="PU40CEDPROPIE" id="PU40CEDPROPIE">
            </div>
          </div>
      </div>

      <div class="container-fluid">
          <div class="form-group row">
            <div class="col-xs-2">
                 <label for="PU40NOMPROPIE">Nombre del Propietario:</label>
                  <input type="text" class="form-control" name="PU40NOMPROPIE" id="PU40NOMPROPIE">
            </div>
          </div>
      </div>

     <div class="container-fluid">
          <div class="form-group row">
            <div class="col-xs-2">
                 <label for="PU40APE1PROPIE">1° Apellido del Propietario:</label>
                  <input type="text" class="form-control" name="PU40APE1PROPIE" id="PU40APE1PROPIE">
            </div>
          </div>
      </div>

      <div class="container-fluid">
          <div class="form-group row">
            <div class="col-xs-2">
                 <label for="PU40APE2PROPIE">2° Apellido del Propietario:</label>
                  <input type="text" class="form-control" name="PU40APE2PROPIE" id="PU40APE2PROPIE">
            </div>
          </div>
      </div>


     <h3>Datos de la propiedad:</h3>

      <div class="container-fluid">
          <div class="form-group row">
            <div class="col-xs-2">
                 <label for="PU40NFINCA">Finca 5-:</label>
                  <input type="text" class="form-control" name="PU40NFINCA" id="PU40NFINCA">
            </div>
          </div>
      </div>

      <div class="container-fluid">
          <div class="form-group row">
            <div class="col-xs-2">
                 <label for="PU40NPLANO">Plano G-:</label>
                  <input type="text" class="form-control" name="PU40NPLANO" id="PU40NPLANO">
            </div>
          </div>
      </div>


     



      <button type="submit" class="btn btn-success">Guardar Registro Oficina</button> 
      <a id="regresar" class="btn btn-danger" role="button" href="?c=class04oficina&m=index">Regresar</a>  
     </form>


      

</div>
<br>
<br>



<div id="parentVerticalTab">
  <ul class="resp-tabs-list hor_1">
    <li href="#tabconten1">Actividad a Desarrollar</li>
    <li href="#tabconten2">***Falta infor de infraestructura***</li>
  </ul> 
  <div class="resp-tabs-container hor_1">



    <div class="container-fluid" id="tabconten1">
      <!-- contenido de tab 6 -->

  
        <form method="POST" action="?c=class04oficina&m=editarActividades">
          <div class="form-group">
            <label for="id">Código Trámite</label>
            <input type="text" class="form-control" id="id" name="id" value="<?php echo $this->class04oficina->getAtributo('PU04IDTRA');?>" readonly> 
            <?php  $idtramite = $this->class04oficina->getAtributo('PU04IDTRA'); ?>
          </div>
          <?php foreach( $idactividades as $idactividad ): ?>
          <?php $isCheck = $this->class04oficina->tieneActividades($idtramite, $idactividad['PU06IDACTDES']);?>
          <div class="checkbox">
            <label>
            <input type="checkbox" name="idactdes<?php echo $idactividad['PU06IDACTDES']; ?>"
             <?php if($isCheck['total']) {echo "checked";} ?>
            /> <?php echo $idactividad['PU06DESAD'] ;?>
            </label>
          </div>
          <?php endforeach; ?>
          <button type="submit" class="btn btn-success">Guardar</button>
          <br>
        </form>
    </div>
  </div>