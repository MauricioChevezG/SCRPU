  <center>
    <h2>Agregar Nuevo Servicio</h2>
  </center>
    <form action="?c=class21servicios&m=agregar" method="post">
     	<div class="form-group">
        <label for="PU21IDSERVI">Código del Servicio:</label>
        <input type="text" class="form-control" id="PU21IDSERVI" name="PU21IDSERVI">
      </div>
      <div class="form-group">
        <label for="PU21DESCSERVI">Descripción del Servicio:</label>
        <input type="text" class="form-control" id="PU21DESCSERVI" name="PU21DESCSERVI">
      </div>
      <button type="submit" class="btn btn-success">Guardar</button> 
      <a href="?c=class21servicios&m=index" class="btn btn-danger" role="button">Regresar</a>    
     </form>