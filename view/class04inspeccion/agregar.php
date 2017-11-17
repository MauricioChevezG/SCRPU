<?php $result = $this->pu09tradeg->listar(); ?> 
<?php $result2 = $this->pu10aspbio->listar(); ?> 
<?php $result3 = $this->pu13aap->listar(); ?> 
<?php $result4 = $this->pu05actdes->listar(); ?> 
      
      <center><h2>Agregar nuevo tramite</h2></center>
      <form action="?c=class04inspeccion&m=agregar" method="post">
        
        <div class="container well col-md-8">
          <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-6 mx-auto">
              <div class="form-group">
                <div class="col-xs-2 text-center">
                  <label for="PU04IDTRA;">Numero de Tramite:</label>
                  <input type="text" class="form-control" id="PU04IDTRA" name="PU04IDTRA">
                </div>
              </div>
              <div class="form-group">
                <div class="col-xs-2 text-center">
                  <label for="PU04FETRA">Fecha:</label>
                  <input type="text" class="form-control" name="PU04FETRA" id="fecha">
                </div>
              </div>
            </div>
          </div>
        </div>
        <br>
        <div class="container well col-md-8">
          <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-6 mx-auto">
              <center><h4>Agregar Localización</h4></center>
              <div class=" form-group ">
                <div class=" col-xs-2 text-center">
                  <label for="PU04NORTE">Norte:</label>
                  <input type="text" class="form-control" id="PU04NORTE" name="PU04NORTE">
                </div>
                <div class="col-xs-2 text-center">
                  <label for="PU04ESTE">Este:</label>
                  <input type="text" class="form-control" id="PU04ESTE" name="PU04ESTE">
                </div>
                <div class="col-xs-2 text-center">
                  <label for="PU04ALTITUD">Altitud:</label>
                  <input type="text" class="form-control" id="PU04ALTITUD" name="PU04ALTITUD">
                </div>
              </div>
              <br>
            </div>
          </div>
        </div>

        <br>
        <div class="container well col-md-8">
          <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-6 mx-auto">
              <center><h4>Agregar T.F.R y T.D.S</h4></center>
              <div class=" form-group ">
                <div class=" col-xs-2 text-center">
                  <label for="PU07IDTFR">T.F.R:</label>
                  <input type="text" class="form-control" id="PU07IDTFR" name="PU07IDTFR">
                </div>
                <div class="col-xs-2 text-center">
                  <label for="PU12IDTDESEC">T.D.S:</label>
                  <input type="text" class="form-control" id="PU12IDTDESEC" name="PU12IDTDESEC">
                </div>
              </div>
              <br>
            </div>
          </div>
        </div>
        <br>
        <div class="container well col-md-8">
          <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-6 mx-auto">
              <div class="form-group">
                <p><b>Descripción del Espacio Geográfico :</b></p>
                <?php while ($row = mysqli_fetch_array($result)):?>
                <label class="checkbox-inline">
                <input type="checkbox" value="<?php echo $row['pu09iddeg'];?>" name="pu09tradeg[]"><?php echo $row['PU09DESCREG']; ?>
                </label>
                <?php endwhile; ?>
              </div>
              <br>
            </div>
          </div>
        </div>
        <br>
        <div class="container well col-md-8">
          <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-6 mx-auto">
              <div class="form-group">
                <p>
                  <b>Aspectos Biofísicos :</b>
                </p>
                <?php while ($row = mysqli_fetch_array($result2)):?>
                <label class="checkbox-inline">
                <input type="checkbox" value="<?php echo $row['pu10idasbio'];?>" name="pu10aspbio[]"><?php echo $row['PU10DESCABIO']; ?>
                </label>
                <?php endwhile; ?>
              </div>
              <br>
            </div>
          </div>
        </div>
        <br>
        <div class="container well col-md-8">
          <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-6 mx-auto">
              <div class="form-group">
                <p>
                  <b>Afectación de Áreas de Protección :</b>
                </p>
                <?php while ($row = mysqli_fetch_array($result3)):?>
                <label class="checkbox-inline">
                <input type="checkbox" value="<?php echo $row['pu13idaap'];?>" name="pu13aap[]"><?php echo $row['PU13DESCAAP']; ?>
                </label>
                <?php endwhile; ?>
              </div>
              <br>
            </div>
          </div>
        </div>
        <br>
        <div class="container well col-md-8">
          <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-6 mx-auto">
              <div class="form-group">
                <p>
                  <b>Actividades a Desarrollar :</b>
                </p>
                <?php while ($row = mysqli_fetch_array($result4)):?>
                <label class="checkbox-inline">
                <input type="checkbox" value="<?php echo $row['pu06idactdes'];?>" name="pu05actdes[]"><?php echo $row['PU06DESAD']; ?>
                </label>
                <?php endwhile; ?>
              </div>
              <br>
            </div>
          </div>
        </div>
        <br>
        <div class="container col-md-8 mr-md-0">
          <button type="submit" class="btn btn-success">Guardar</button>
          <a href="?c=class04inspeccion&m=index" class="btn btn-default" role="button">Regresar</a>
        </div>
      </form>
      <br>
      <br>