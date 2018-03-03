    <br>
    <center>
<h2>Inspección del Tramites</h2>
<label for="id">Código Trámite</label>
        <input type="text" class="form-control" id="id" name="id" value="<?php echo $this->pu04inspeccion->getAtributo('PU04IDTRA');?>" readonly>
        <?php  $idtramite = $this->pu04inspeccion->getAtributo('PU04IDTRA'); ?>
</center><br>
    <div id="parentVerticalTab">
            <ul class="resp-tabs-list hor_1">
                <li href="#" onclick="vistaEspacio();">*Espacio geografico*</li>
                <li href="#" onclick="vistaAspecto();">Aspectos</li>
                <li href="#" onclick="vistaAreaApro();">Areas de Proteccion</li>
                <li href="#" onclick="vistaEditactdes();">vistaEditactdes</li>
                <li href="#" onclick="vistaAceptados();">Tramites Aceptados</li>
                <li href="#" onclick="vistaDenegados();">Tramites Denegados</li>
            </ul>

            <div class="resp-tabs-container hor_1">
                <div class="container-fluid" id="tabconten1">
                    <!-- contenido de tab 1 -->
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
