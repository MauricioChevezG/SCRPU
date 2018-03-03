   
    <center><h2>Agregar Nuevo Trámite</h2></center>
    <form action="?c=class04ingresotramite&m=agregar" method="post" >
      <div class="form-group">
        <label for="PU04IDTRA">Código del Trámite:</label>
        <input type="text" class="form-control" id="PU04IDTRA" name="PU04IDTRA">
      </div>
      <div class="form-group">
        <label for="PU04DESCRIPCIONLUGAR">Dirección del trámite a realizar:</label>
        <input type="text" class="form-control" id="PU04DESCRIPCIONLUGAR" name="PU04DESCRIPCIONLUGAR">
      </div>

      <button type="submit" class="btn btn-success">Guardar Trámite</button> 
      <a id="regresar" class="btn btn-danger" role="button" href="?c=class04ingresotramite&m=index">Regresar</a>  

     
     </form>
