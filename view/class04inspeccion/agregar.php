<?php $result = $this->pu09tradeg->listar(); ?> 
<?php $result2 = $this->pu10aspbio->listar(); ?> 
<?php $result3 = $this->pu13aap->listar(); ?> 
<?php $result4 = $this->pu05actdes->listar(); ?> 


<center>
<h2>Agregar nuevo tramite</h2>
</center>
<form action="?c=class04inspeccion&m=agregar" method="post">
  <div class="container well">
  <div class=" form-group ">
    <div class="col-xs-2 text-center">
      <label for="PU04IDTRA;">Numero de Tramite:</label>
      <input type="text" class="form-control" id="PU04IDTRA" name="PU04IDTRA">
    </div>
    <br>
    <div class="col-xs-2 text-center">
      <label for="PU04FETRA">Fecha:</label>
      <input type="text" class="form-control" name="PU04FETRA" id="fecha">
    </div>
  </div>
  <br>
</div>
  
  <div class="container well ">
    <center>
    <h4>Agregar Localización</h4>
    </center>
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


  <br>
  <div class="container well">
    <div class="form-group">
      <p>
        <b>Existe Terreno Frente a ruta:</b>
      </p>
      <?php while ($row = mysqli_fetch_array($result1)):?>
      <label class="checkbox-inline">
       <input type="checkbox" value="<?php echo $row['pu07idtfr'];?>" name="pu07terrft[]"><?php echo $row['PU07NOMTFR']; ?>
      </label>
      <?php endwhile; ?>
    </div>
  <br>
  </div>
  <br>


   <div class="container well">
    <div class="form-group">
      <p>
        <b>Tipo de Desarrollo en el Sector:</b>
      </p>
      <?php while ($row = mysqli_fetch_array($result1)):?>
      <label class="checkbox-inline">
      <input type="checkbox" value="<?php echo $row['pu12idtdesec'];?>" name="pu12tipdesec[]"><?php echo $row['PU12TIPODES']; ?>
      </label>
      <?php endwhile; ?>
    </div>
  <br>
  </div>
  



  <br>
  <div class="container well">
    <div class="form-group">
      <p>
        <b>Descripción del Espacio Geográfico :</b>
      </p>
      <?php while ($row = mysqli_fetch_array($result)):?>
      <label class="checkbox-inline">
      <input type="checkbox" value="<?php echo $row['pu09iddeg'];?>" name="pu09tradeg[]"><?php echo $row['PU09DESCREG']; ?>
      </label>
      <?php endwhile; ?>
    </div>
  <br>
  </div>
  <br>
  <div class="container well">
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
  <br>
  <div class="container well">
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
  <br>
  <div class="container well">
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
  <br>
  <div class="container">
    <button type="submit" class="btn btn-success">Guardar</button>
    <a href="?c=class04inspeccion&m=index" class="btn btn-default" role="button">Regresar</a>
  </div>
</form>
<br>
<br>