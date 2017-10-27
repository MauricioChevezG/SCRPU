
  <center>
    <h2>Agregar Nueva Localización</h2>
  </center>
  <div class="container-fluid">
    <form action="?c=class08regcor&m=agregar" method="post">
     	<div class="form-group">
        <label for="PU08IDGPS">Código de localización</label>
        <input type="text" class="form-control" id="PU08IDGPS" name="PU08IDGPS">
      </div>
      <div class="form-group">
        <label for="PU08NORTE">Norte:</label>
        <input type="text" class="form-control" id="PU08NORTE" name="PU08NORTE">
      </div>
      <div class="form-group">
        <label for="PU08ESTE">Este:</label>
        <input type="text" class="form-control" id="PU08ESTE" name="PU08ESTE">
      </div>
      <div class="form-group">
        <label for="PU08ALTITUD">Altitud</label>
        <input type="text" class="form-control" id="PU08ALTITUD" name="PU08ALTITUD">
      </div>
      <button type="submit" class="btn btn-success">Guardar</button> 
      <a href="?c=class08regcor&m=index" class="btn btn-danger" role="button">Regresar</a>    
     </form>
   </div>
