<?php $idactividades = $this->pu04inspeccion->getTodasActividades(); ?>
<?php $idespacios = $this->pu04inspeccion->getTodasEspaciosGeo(); ?>
<?php $idterrenofr = $this->pu04inspeccion->getTodasTerrenoFR(); ?>
<?php $iddesarrollosec = $this->pu04inspeccion->getTodasDesarrolloSec(); ?>
<?php $idaspectosbio = $this->pu04inspeccion->getTodasAspectosBio(); ?>
<?php $idservicios = $this->pu04inspeccion->getTodasServicios(); ?>
<?php $idareas = $this->pu04inspeccion->getTodasAreasPro(); ?>
<?php $idtiporedv = $this->pu04inspeccion->getTodasTipoRed(); ?>




<form method="POST" action="?c=class04inspeccion&m=agregarTra">
          <div class="form-group">
            <h4>Realizando estudio al trámite</h4>

<div class="col-xs-2">
  <input type="text" class="form-control" id="id" name="id" value="<?php echo $this->pu04inspeccion->getAtributo('PU04IDTRA');?>"  readonly> <?php  $idtramite = $this->pu04inspeccion->getAtributo('PU04IDTRA'); ?>
</div>

<div class="  form-group  ">
     <div class=" col-xs-2 text-left">
      
        <label for="PU04NORTE">Norte:</label>
        <input type="text" class="form-control" id="PU04NORTE" name="PU04NORTE">
        
      </div>
      <div class="col-xs-2 text-left">
          
        <label for="PU04ESTE">Este:</label>
        <input type="text" class="form-control" id="PU04ESTE" name="PU04ESTE">
      
      </div>
      <div class="col-xs-2 text-left">
         
        <label for="PU04ALTITUD">Altitud:</label>
        <input type="text" class="form-control" id="PU04ALTITUD" name="PU04ALTITUD"><br>
      
      </div>

<button type="submit" class="btn btn-success ">Guardar</button>
          <br>

       </div>



          </div>
</form>

<br>
<div id="parentVerticalTab">
  <ul class="resp-tabs-list hor_1">
    <li href="#tabconten1">Espacio Geográfico</li>
    <li href="#tabconten2">Aspectos Biofísicos</li>
    <li href="#tabconten3">Áreas de Protección</li>
    <li href="#tabconten4">Actividades a Desarrollar</li>
    <li href="#tabconten5">Terreno Frente a Ruta</li>
    <li href="#tabconten6">Desarrollo en el Sector</li>
    <li href="#tabconten7">Servicios disponibles</li>
    <li href="#tabconten8">Tipo de Red Vial</li>
  </ul> 
  <div class="resp-tabs-container hor_1">
    <div class="container-fluid" id="tabconten1">
      <!-- contenido de tab 1 -->

         <form method="POST" action="?c=class04inspeccion&m=editarEspaciosGeo">
          <div class="form-group">
            <label for="id">Código Trámite</label>
            <input type="text" class="form-control" id="id" name="id" value="<?php echo $this->pu04inspeccion->getAtributo('PU04IDTRA');?>" readonly> 
            <?php  $idtramite = $this->pu04inspeccion->getAtributo('PU04IDTRA'); ?>
          </div>
          <?php foreach( $idespacios as $espacio ): ?>
          <?php $isCheck = $this->pu04inspeccion->tieneEspaciosGeo($idtramite, $espacio['PU09IDDEG']);?>
          <div class="checkbox">
            <label>
            <input type="checkbox" name="idespacio<?php echo $espacio['PU09IDDEG']; ?>"
             <?php if($isCheck['total1']) {echo "checked";} ?>
            /> <?php echo $espacio['PU09DESCREG'] ;?>
            </label>
          </div>
          <?php endforeach; ?>
          <button type="submit" class="btn btn-success">Guardar</button>
          <br>
        </form>

    </div>
    <div class="container-fluid" id="tabconten2">
      <!-- contenido de tab 2 -->

               <form method="POST" action="?c=class04inspeccion&m=editarAspectosBio">
          <div class="form-group">
            <label for="id">Código Trámite</label>
            <input type="text" class="form-control" id="id" name="id" value="<?php echo $this->pu04inspeccion->getAtributo('PU04IDTRA');?>" readonly> 
            <?php  $idtramite = $this->pu04inspeccion->getAtributo('PU04IDTRA'); ?>
          </div>

          <?php foreach( $idaspectosbio as $idaspecto ): ?>
          <?php $isCheck = $this->pu04inspeccion->tieneAspectosBio($idtramite, $idaspecto['PU10IDASBIO']);?>
          <div class="checkbox">
            <label>
            <input type="checkbox" name="idaspecto<?php echo $idaspecto['PU10IDASBIO']; ?>"
             <?php if($isCheck['total5']) {echo "checked";} ?>
            /> <?php echo $idaspecto['PU10DESCABIO'] ;?>
            </label>
          </div>
          <?php endforeach; ?>
          <button type="submit" class="btn btn-success">Guardar</button>
          <br>
        </form>

    </div>
    <div class="container-fluid" id="tabconten3">
      <!-- contenido de tab 3 -->
<form method="POST" action="?c=class04inspeccion&m=editarAreasPro">
          <div class="form-group">
            <label for="id">Código Trámite</label>
            <input type="text" class="form-control" id="id" name="id" value="<?php echo $this->pu04inspeccion->getAtributo('PU04IDTRA');?>" readonly> 
            <?php  $idtramite = $this->pu04inspeccion->getAtributo('PU04IDTRA'); ?>
          </div>
          <?php foreach( $idareas as $idarea ): ?>
          <?php $isCheck = $this->pu04inspeccion->tieneAreasPro($idtramite, $idarea['PU13IDAAP']);?>
          <div class="checkbox">
            <label>
            <input type="checkbox" name="idareasp<?php echo $idarea['PU13IDAAP']; ?>"
             <?php if($isCheck['total7']) {echo "checked";} ?>
            /> <?php echo $idarea['PU13DESCAAP'] ;?>
            </label>
          </div>
          <?php endforeach; ?>
          <button type="submit" class="btn btn-success">Guardar</button>
          <br>
        </form>

    </div>
    <div class="container-fluid" id="tabconten4">
      <!-- contenido de tab 4 -->
      
          <form method="POST" action="?c=class04inspeccion&m=editarActividades">
          <div class="form-group">
            <label for="id">Código Trámite</label>
            <input type="text" class="form-control" id="id" name="id" value="<?php echo $this->pu04inspeccion->getAtributo('PU04IDTRA');?>" readonly> 
            <?php  $idtramite = $this->pu04inspeccion->getAtributo('PU04IDTRA'); ?>
          </div>
          <?php foreach( $idactividades as $idactividad ): ?>
          <?php $isCheck = $this->pu04inspeccion->tieneActividades($idtramite, $idactividad['PU06IDACTDES']);?>
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
    <div class="container-fluid" id="tabconten5">
      <!-- contenido de tab 5 -->

      <form method="POST" action="?c=class04inspeccion&m=editarTerrenoFR">
          <div class="form-group">
            <label for="id">Código Trámite</label>
            <input type="text" class="form-control" id="id" name="id" value="<?php echo $this->pu04inspeccion->getAtributo('PU04IDTRA');?>" readonly> 
            <?php  $idtramite = $this->pu04inspeccion->getAtributo('PU04IDTRA'); ?>
          </div>
          <?php foreach( $idterrenofr as $idterrenoFR ): ?>
          <?php $isCheck = $this->pu04inspeccion->tieneTerrenoFR($idtramite, $idterrenoFR['PU07IDTFR']);?>
          <div class="checkbox">
            <label>
            <input type="checkbox" name="idterreno<?php echo $idterrenoFR['PU07IDTFR']; ?>"
             <?php if($isCheck['total3']) {echo "checked";} ?>
            /> <?php echo $idterrenoFR['PU07NOMTFR'] ;?>
            </label>
          </div>
          <?php endforeach; ?>
          <button type="submit" class="btn btn-success">Guardar</button>
          <br>
        </form>

    </div>
    <div class="container-fluid" id="tabconten6">
      <!-- contenido de tab 6 -->

  
      <form method="POST" action="?c=class04inspeccion&m=editarDesarrolloSec">
          <div class="form-group">
            <label for="id">Código Trámite</label>
            <input type="text" class="form-control" id="id" name="id" value="<?php echo $this->pu04inspeccion->getAtributo('PU04IDTRA');?>" readonly> 
            <?php  $idtramite = $this->pu04inspeccion->getAtributo('PU04IDTRA'); ?>
          </div>

          <?php foreach( $iddesarrollosec as $iddesarrollo ): ?>
          <?php $isCheck = $this->pu04inspeccion->tieneDesarrolloSec($idtramite, $iddesarrollo['PU12IDTDESEC']);?>
          <div class="checkbox">
            <label>
            <input type="checkbox" name="iddesarrollosc<?php echo $iddesarrollo['PU12IDTDESEC']; ?>"
             <?php if($isCheck['total4']) {echo "checked";} ?>
            /> <?php echo $iddesarrollo['PU12TIPODES'] ;?>
            </label>
          </div>
          <?php endforeach; ?>
          <button type="submit" class="btn btn-success">Guardar</button>
          <br>
        </form>


    </div>

    <div class="container-fluid" id="tabconten7">
      <!-- contenido de tab 7 -->

      <form method="POST" action="?c=class04inspeccion&m=editarServicios">
          <div class="form-group">
            <label for="id">Código Trámite</label>
            <input type="text" class="form-control" id="id" name="id" value="<?php echo $this->pu04inspeccion->getAtributo('PU04IDTRA');?>" readonly> 
            <?php  $idtramite = $this->pu04inspeccion->getAtributo('PU04IDTRA'); ?>
          </div>

          <?php foreach( $idservicios as $servicios ): ?>
          <?php $isCheck = $this->pu04inspeccion->tieneServicios($idtramite, $servicios['PU21IDSERVI']);?>
          <div class="checkbox">
            <label>
            <input type="checkbox" name="idservicio<?php echo $servicios['PU21IDSERVI']; ?>"
             <?php if($isCheck['total6']) {echo "checked";} ?>
            /> <?php echo $servicios['PU21DESCSERVI'] ;?>
            </label>
          </div>
          <?php endforeach; ?>
          <button type="submit" class="btn btn-success">Guardar</button>
          <br>
        </form>
    </div>

    <div class="container-fluid" id="tabconten8">
      <!-- contenido de tab 8 -->
      <form method="POST" action="?c=class04inspeccion&m=editarTipoRed">
          <div class="form-group">
            <label for="id">Código Trámite</label>
            <input type="text" class="form-control" id="id" name="id" value="<?php echo $this->pu04inspeccion->getAtributo('PU04IDTRA');?>" readonly> 
            <?php  $idtramite = $this->pu04inspeccion->getAtributo('PU04IDTRA'); ?>
          </div>
          <?php foreach( $idtiporedv as $idtipored ): ?>
          <?php $isCheck = $this->pu04inspeccion->tieneTipoRed($idtramite, $idtipored['PU22IDTREDV']);?>
          <div class="checkbox">
            <label>
            <input type="checkbox" name="idtiporedvial<?php echo $idtipored['PU22IDTREDV']; ?>"
             <?php if($isCheck['total8']) {echo "checked";} ?>
            /> <?php echo $idtipored['PU22DESCTRV'] ;?>
            </label>
          </div>
          <?php endforeach; ?>
          <button type="submit" class="btn btn-success ">Guardar</button>
          <br>
        </form>
    </div>



  </div>
</div>
<br/>
<div id="nested-tabInfo2">
   Tab Seleccionado: <span class="tabName"></span>
</div>
<br/>
<br/>

