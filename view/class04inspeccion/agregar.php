  <center>
    <h2>Inspeccion</h2>
  </center>
    <form action="?c=class04inspeccion&m=agregar" method="post">
<div class=" container-fluid    well"> 
      <center>
    <h4>wee</h4>
  </center>
  <div class="  form-group  ">
      <div class="col-xs-2 text-center">
        <label for="PU04IDTRA;">Numero de Tramite:</label>
        <input type="text" class="form-control" id="PU04IDTRA;" name="PU04IDTRA;">
      </div>
       <br>
       <div class="col-xs-2 text-center">
       <label for="PU04FETRA;">Fecha:</label> 
       <input type="text" class="form-control" name="PU04FETRA" id="fecha">
      </div> </div>
</div>

      <div class="container-fluid  well   "> 
       <center>
    <h4>Agregar Localización</h4>
  </center>
  <div class="  form-group  ">
     <div class=" col-xs-2 text-center">
      
        <label for="PU04NORTE">Norte:</label>
        <input type="text" class="form-control" id="PU04NORTE" name="PU04NORTE">
        
      </div>
      <div class="col-xs-2 text-center">
          
        <label for="PU04ESTE">Este:</label>
        <input type="text" class="form-control" id="PU04ESTE" name="PU04ESTE">
      
      </div>
      <div class="col-xs-2 text-center">
         
        <label for="PU04ALTITUD">Altitud:</label>
        <input type="text" class="form-control" id="PU04ALTITUD" name="PU04ALTITUD">
      
      </div> </div>
      </div>

      <div class="container-fluid    well"> 
        <center>
    <h4>Terreno frente a Ruta</h4>
  </center>
     
    <label class="radio-inline"><input type="radio" name="PU07IDTFR">Cantonal.</label>
    <label class="radio-inline"><input type="radio" name="PU07IDTFR">Nacional.</label>
    <label class="radio-inline"><input type="radio" name="PU07IDTFR">Calle fisicamente.</label>
    <label class="radio-inline"><input type="radio" name="PU07IDTFR">Solo en Plano.</label>
    <label class="radio-inline"><input type="radio" name="PU07IDTFR">No existe</label>

 </div>
<div class="container-fluid    well"> 
        <center>
    <h4>Descripción del Espacio Geográfico</h4>
  </center>
      <div class="checkbox ">
      <label class="checkbox-inline">
    <input type="checkbox" value="1" name="PU09IDDEG1">Topografía Plana.</label>
    <label class="checkbox-inline">
      <input type="checkbox" value="2" name="PU09IDDEG2">Topografía Semiplano.</label>
    <label class="checkbox-inline">
      <input type="checkbox" value="3" name="PU09IDDEG3">Topografía con depresión.</label>
    <label class="checkbox-inline">
      <input type="checkbox" value="4" name="PU09IDDEG4">Existen Movimientos de Tierra.</label>
    <label class="checkbox-inline">
      <input type="checkbox" value="5" name="PU09IDDEG5">Futuro Movimientos de Tierra.</label>
    <label class="checkbox-inline">
      <input type="checkbox" value="6" name="PU09IDDEG6">Topografía Irregular.</label><br>
    <label class="checkbox-inline">
      <input type="checkbox" value="7" name="PU09IDDEG7">Otros.</label>
</div>
 </div>
<div class="container-fluid    well"> 
        <center>
    <h4>Descripción Aspectos Biofisicos</h4>
  </center>
      <div class="checkbox ">
      <label class="checkbox-inline">
    <input type="checkbox" value="1" name="PU10IDASBIO1">Vegetación de Jardín.</label>
    <label class="checkbox-inline">
      <input type="checkbox" value="2" name="PU10IDASBIO2">Tipo Pasto.</label>
    <label class="checkbox-inline">
      <input type="checkbox" value="3" name="PU10IDASBIO3">Bosque Secundario.</label><br>
    <label class="checkbox-inline">
      <input type="checkbox" value="4" name="PU10IDASBIO4">Bosque Primario.</label>
    <label class="checkbox-inline">
      <input type="checkbox" value="5" name="PU10IDASBIO5">Arboles Dispersos.</label>
    <label class="checkbox-inline">
      <input type="checkbox" value="6" name="PU10IDASBIO6">no existe.</label>

</div>
 </div>
 <div class="container-fluid    well"> 
        <center>
    <h4>Actividad a desarrollar</h4>
  </center>
      <div class="checkbox ">
      <label class="checkbox-inline">
    <input type="checkbox" value="">Infraestructura de Tipo Residencial.</label>
    <label class="checkbox-inline">
      <input type="checkbox" value="">Infraestructura de Tipo Comercial.</label>
    <label class="checkbox-inline">
      <input type="checkbox" value="">Infraestructura de Tipo Institucional.</label>
    <label class="checkbox-inline">
      <input type="checkbox" value="">Infraestructura de Tipo Residencial y Comercial.</label>
    <label class="checkbox-inline">
      <input type="checkbox" value="">No Existen Desarrollos en la Zona.</label>
     <label class="checkbox-inline">
      <input type="checkbox" value="">Otros.</label>
</div>
 </div>
      <button type="submit" class="btn btn-success">Guardar Usuario</button> 
      <a href="?c=class0102usuarios&m=index" class="btn btn-danger" role="button">Regresar</a>    
     </form>
 