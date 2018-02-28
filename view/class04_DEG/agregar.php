<?php $result = $this->class04deg->listar_DEG(); ?>  
 


<form action="?c=class04deg&m=agregar_DEG" method="post">
  
<div class="form-group">
  <center><h1>Agregar Espacio Geográfico</h1>></center>
</div>

      <div class="container-fluid  well   "> 
      <div class="form-group">
        <p><b>Descripción del Espacio Geográfico :</b></p>
      <?php while ($row = mysqli_fetch_array($result)):?>
        <label class="checkbox-inline">
          <input type="checkbox" value="<?php echo $row['PU09IDDEG'];?>" name="class04deg[]"><?php echo $row['PU09DESCREG']; ?>
        </label>
      <?php endwhile; ?>
      </div>
      </div><br>

        



      <button type="submit" class="btn btn-success">Guardar</button> 
      <a href="?c=class04deg&m=index" class="btn btn-danger" role="button">Regresar</a>    
    </form>

