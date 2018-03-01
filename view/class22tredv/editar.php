  <center>
    <h2>Editar Tipo de Red Vial: <?php echo $this->class22tredv->getAtributo('PU22DESCTRV');?> </h2>
  </center>
    <form action="?c=class22tredv&m=editar" method="post">
      <div class="form-group">
        <label for="PU22IDTREDV">Código del Tipo de Red Vial:</label>
        <input type="text" class="form-control" id="PU22IDTREDV" name="PU22IDTREDV" value="<?php echo $this->class22tredv->getAtributo('PU22IDTREDV');?>" readonly>
      </div>
      <div class="form-group">
        <label for="PU22DESCTRV">Descripción del Tipo de Red Vial:</label>
        <input type="text" class="form-control" id="PU22DESCTRV" name="PU22DESCTRV" value="<?php echo $this->class22tredv->getAtributo('PU22DESCTRV');?>" >
      </div>
     
      <button type="submit" class="btn btn-success">Editar</button> 
      <a href="?c=class22tredv&m=index" class="btn btn-danger" role="button">Regresar</a>    
    </form>
