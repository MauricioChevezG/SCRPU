   
    <center><h2>Agregar Nuevo Tramite</h2></center>
    <form action="?c=class04ingresotramite&m=agregar" method="post" >
      <div class="form-group">
        <label for="PU04IDTRA">Código del Tramite:</label>
        <input type="text" class="form-control" id="PU04IDTRA" name="PU04IDTRA">
      </div>
      <div class="form-group">
        <label for="PU04DESCRIPCIONLUGAR">Ubicacion:</label>
        <input type="text" class="form-control" id="PU04DESCRIPCIONLUGAR" name="PU04DESCRIPCIONLUGAR">
      </div>

      <button type="submit" class="btn btn-success">Guardar Tramite</button> 
      <a id="regresar" class="btn btn-danger" role="button" href="?c=class04ingresotramite&m=index">Regresar</a>  

      <!--<script type="text/javascript">

        $("#regresar").click(function(){
        var bool=confirm("XXXXX----DESEA REGRESAR----XXXXX?");
        if(bool){
        $("#contenido").load("?c=class04ingresotramite&m=index");
        }else{
        $.alert("CANCELADO");
        }
      });
      </script>-->
     </form>
