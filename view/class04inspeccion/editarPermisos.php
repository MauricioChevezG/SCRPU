 <?php $idactividades = $this->pu04inspeccion->getTodasActividades(); ?>

<br>
<center>
<h2>Inspección del Tramites</h2>
<label for="id">Código Trámite</label>
<div class="col-xs-2">
  <input type="text" class="form-control" id="id" name="id" value="<?php echo $this->pu04inspeccion->getAtributo('PU04IDTRA');?>" readonly> <?php  $idtramite = $this->pu04inspeccion->getAtributo('PU04IDTRA'); ?>
</div>
</center><br>
<div id="parentVerticalTab">
  <ul class="resp-tabs-list hor_1">
    <li href="#tabconten1">*Espacio geografico*</li>
    <li href="#tabconten2">Aspectos</li>
    <li href="#tabconten3">Areas de Proteccion</li>
    <li href="#tabconten4">vistaEditactdes</li>
    <li href="#tabconten5">Tramites Aceptados</li>
    <li href="#tabconten6">Tramites Denegados</li>
  </ul>
  <div class="resp-tabs-container hor_1">
    <div class="container-fluid" id="tabconten1">
      <!-- contenido de tab 1 -->
                    <form method="POST" action="?c=class04inspeccion&m=editarActividades">
          <div class="form-group">
            <label for="id">Código Trámite</label>
            <input type="text" class="form-control" id="id" name="id" value="<?php echo $this->pu04inspeccion->getAtributo('PU04IDTRA');?>" readonly> <?php  $idtramite = $this->pu04inspeccion->getAtributo('PU04IDTRA'); ?>
          </div>
          <?php foreach( $idactividades as $idaspecto ): ?>
          <?php $isCheck = $this->pu04inspeccion->tieneActividades($idtramite, $idaspecto['PU06IDACTDES']);?>
          <div class="checkbox">
            <label>
            <input type="checkbox" name="idactdes<?php echo $idaspecto['pu06idactdes']; ?>"
             <?php if($isCheck['total']) {echo "checked";} ?>
            /> <?php echo $idaspecto['PU06DESAD'] ;?>
            </label>
          </div>
          <?php endforeach; ?>
          <button type="submit" class="btn btn-default">Guardar</button>
          <br>
        </form>

    </div>
    <div class="container-fluid" id="tabconten2">
      <!-- contenido de tab 2 -->
    </div>
    <div class="container-fluid" id="tabconten3">
      <!-- contenido de tab 3 -->
    </div>
    <div class="container-fluid" id="tabconten4">
      <!-- contenido de tab 4 -->
    </div>
    <div class="container-fluid" id="tabconten5">
      <!-- contenido de tab 5 -->
    </div>
    <div class="container-fluid" id="tabconten6">
      <!-- contenido de tab 6 -->
    </div>
  </div>
</div>
<br/>
<div id="nested-tabInfo2">
   Selected tab: <span class="tabName"></span>
</div>
<br/>
<br/>

