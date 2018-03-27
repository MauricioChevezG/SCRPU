<?php $result1 = $this->pu38servi->listar(); ?>
<?php $result2 = $this->pu26planreg->listar(); ?>
<?php $result3 = $this->pu26planreg1->listarNicoya(); ?>
<?php $result4 = $this->pu26planreg2->listarSamara(); ?>
<?php $result5 = $this->pu13aap->listar(); ?>



   <div class="container-fluid">
     
  <center><h2>Agregar Nuevo Trámite</h2></center>
    <form action="?c=class04ingresotramite&m=agregar" method="post" >
      <div class="form-group row">
        <div class="col-md-3">
        <label for="PU04IDTRA">Código del Trámite:</label>
        <input type="text" class="form-control" id="PU04IDTRA" name="PU04IDTRA">
        </div>
      </div>

      <div class="container-fluid">
      <div class="form-group row">
      <div class="col-xs-2">
      <label for="PU04FETRA">Fecha de Revisión de Expediente:</label>
      <input type="date" class="form-control" name="PU04FETRA" id="">
      </div>
      </div>
      </div>


      <div class="form-group row">
           <div class="col-md-3">
          <label for="PU04IDDISTRITO">Distrito:</label>
          <input type="text" class="form-control" id="PU04IDDISTRITO" name="PU04IDDISTRITO">
          </div>
      </div>
  

 <div class="container-fluid  well   "> 
      <div class="form-group">
        <p><b>Accesos :</b></p>
      <?php while ($row = mysqli_fetch_array($result1)):?>
        <label class="checkbox-inline">
          <input type="checkbox" value="<?php echo $row['PU38IDSERVIDUMBRE'];?>" name="pu38servi[]"><?php echo $row['PU38DESCRIPSERVIDUM']; ?>
        </label>
      <?php endwhile; ?>
      </div>
      </div><br>


       <div class="container-fluid  well   "> 
      <div class="form-group">
        <p><b>Plan Regulador :</b></p>
      <?php while ($row = mysqli_fetch_array($result2)):?>
        <label class="checkbox-inline">
          <input type="checkbox" value="<?php echo $row['PU26IDPLAN'];?>" name="pu26planreg[]"><?php echo $row['PU26PLNDESC']; ?>
        </label>
      <?php endwhile; ?>
      </div>
      </div><br>

       <div class="container-fluid  well   "> 
      <div class="form-group">
        <p><b>Nicoya :</b></p>
      <?php while ($row = mysqli_fetch_array($result3)):?>
        <label class="checkbox-inline">
          <input type="checkbox" value="<?php echo $row['PU26IDDESCNICOYASAMA'];?>" name="pu26planreg1[]"><?php echo $row['PU26DESCACNICOYASAMA']; ?>
        </label>
      <?php endwhile; ?>
      </div>
      </div><br>

      <div class="container-fluid  well   "> 
      <div class="form-group">
        <p><b>Sámara :</b></p>
      <?php while ($row = mysqli_fetch_array($result4)):?>
        <label class="checkbox-inline">
          <input type="checkbox" value="<?php echo $row['PU26IDDESCNICOYASAMA'];?>" name="pu26planreg1[]"><?php echo $row['PU26DESCACNICOYASAMA']; ?>
        </label>
      <?php endwhile; ?>
      </div>
      </div><br>

      <div class="container-fluid  well   "> 
      <div class="form-group">
        <p><b>Afectación de Áreas de Protección :</b></p>
      <?php while ($row = mysqli_fetch_array($result5)):?>
        <label class="checkbox-inline">
          <input type="checkbox" value="<?php echo $row['PU13IDAAP'];?>" name="pu13aap[]"><?php echo $row['PU13DESCAAP']; ?>
        </label>
      <?php endwhile; ?>
      </div>
      </div><br>
      



      <button type="submit" class="btn btn-success">Guardar Trámite</button> 
      <a id="regresar" class="btn btn-danger" role="button" href="?c=class04ingresotramite&m=index">Regresar</a>  
     </form>


      

</div>