
  <?php $idactividades = $this->class04listaarep->getTodasActividades(); ?>

    <div class="container-fluid">
      <div class="row">
       
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">Panel de Administración</h1>

          <h4 class="sub-header">Modificando trámites</h4>
          <p>Se están modificando los permisos para el trámite:</p> 

          <div class="row">
            <div class="col-sm-6 col-sm-offset-3">
            
            <div class="panel panel-default">
              <div class="panel-heading"><h3 class="panel-title">Edición de permisos</h3></div>
              <div class="panel-body">
               <div class="form-group">
                <form method="POST" action="?c=class04inspeccion&m=editarActividades">
        <label for="id">Código Trámite</label>
        <input type="text" class="form-control" id="id" name="id" value="<?php echo $this->class04listaarep->getAtributo('PU04IDTRA');?>" readonly>
        <?php  $idtramite = $this->class04listaarep->getAtributo('PU04IDTRA'); ?>
      </div>
        <?php foreach( $idactividades as $idaspecto ): ?>
          <?php $isCheck = $this->class04listaarep->tieneActividades($idtramite, $idaspecto['PU06IDACTDES']);?>
                  <div class="checkbox">
                    <label>
                      <input type="checkbox" name="idactdes<?php echo $idaspecto['PU06IDACTDES']; ?>"
                        <?php if($isCheck['total']) {echo "checked";} ?>/> <?php echo $idaspecto['PU06DESAD'] ;?> 
                    </label>                                          
                  </div>
        <?php 
        	endforeach; ?>
          
                  <button type="submit" class="btn btn-default">Guardar</button>
                </form>
    
