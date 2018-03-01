  <center>
    <h2>Editar Servicio: <?php echo $this->class21servicios->getAtributo('PU21DESCSERVI');?> </h2>
  </center>
    <form action="?c=class21servicios&m=editar" method="post">
      <div class="form-group">
        <label for="PU21IDSERVI">Código del Servicio:</label>
        <input type="text" class="form-control" id="PU21IDSERVI" name="PU21IDSERVI" value="<?php echo $this->class21servicios->getAtributo('PU21IDSERVI');?>" readonly>
      </div>
      <div class="form-group">
        <label for="PU21DESCSERVI">Descripción del Servicio:</label>
        <input type="text" class="form-control" id="PU21DESCSERVI" name="PU21DESCSERVI" value="<?php echo $this->class21servicios->getAtributo('PU21DESCSERVI');?>" >
      </div>
     
      <button type="submit" class="btn btn-success">Editar</button> 
      <a href="?c=class21servicios&m=index" class="btn btn-danger" role="button">Regresar</a>    
    </form>
