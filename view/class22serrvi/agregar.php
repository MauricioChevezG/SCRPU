  <center>
    <h2>Agregar Nuevo Servicio</h2>
  </center>
    <form action="?c=class22serrvi&m=agregar" method="post">
     	<div class="form-group">
        <label for="PU22IDREDVI">Código del Servicio:</label>
        <input type="text" class="form-control" id="PU22IDREDVI" name="PU22IDREDVI">
      </div>
      <div class="form-group">
        <label for="PU22DESSVI">Descripción del Servicio:</label>
        <input type="text" class="form-control" id="PU22DESSVI" name="PU22DESSVI">
      </div>
      <button type="submit" class="btn btn-success">Guardar</button> 
      <a href="?c=class22serrvi&m=index" class="btn btn-danger" role="button">Regresar</a>    
     </form>