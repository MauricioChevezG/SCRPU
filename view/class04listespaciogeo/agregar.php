<?php $result = $this->class04listespaciogeo->listar(); ?>
  
 
 <div class="form-group">
       <center><h1>Agregar nuevo Espacio</h1></center>
      </div>

<form action="?c=class04inspeccion&m=agregar" method="post">

      <div class="container-fluid  well   "> 
      <div class="form-group">
        <p><b>Descripción del Espacio Geográfico :</b></p>
      <?php while ($row = mysqli_fetch_array($result)):?>
        <label class="checkbox-inline">
          <input type="checkbox" value="<?php echo $row['PU09IDDEG'];?>" name="pu09tradeg[]"><?php echo $row['PU09DESCREG']; ?>
        </label>
      <?php endwhile; ?>
      </div>
      </div><br>

       
      <button type="submit" class="btn btn-success">Guardar</button> 
      <a href="?c=class04inspeccion&m=index" class="btn btn-danger" role="button">Regresar</a>    
    </form>

