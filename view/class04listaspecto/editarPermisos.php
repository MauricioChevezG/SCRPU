
  <?php $idactividades = $this->pu04inspeccion->getTodasActividades(); ?>



<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Panel de Administración</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- Custom styles for this template -->
    <link href="../css/dashboard.css" rel="stylesheet">
  </head>

  <body>
  

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
        <input type="text" class="form-control" id="id" name="id" value="<?php echo $this->pu04inspeccion->getAtributo('PU04IDTRA');?>" readonly>
        <?php  $idtramite = $this->pu04inspeccion->getAtributo('PU04IDTRA'); ?>
      </div>
        <?php foreach( $idactividades as $idaspecto ): ?>
          <?php $isCheck = $this->pu04inspeccion->tieneActividades($idtramite, $idaspecto['PU06IDACTDES']);?>
                  <div class="checkbox">
                    <label>
                      <input type="checkbox" name="idactdes<?php echo $idaspecto['PU06IDACTDES']; ?>"
                        <?php if($isCheck['total']) {echo "checked";} ?>/> <?php echo $idaspecto['PU06DESAD'] ;?> 
                    </label>                                          
                  </div>
        <?php 
        	endforeach; 
        
        ?>
                  <button type="submit" class="btn btn-default">Guardar</button>
                </form>
              </div>
            </div>
          </div>
            
        </div>

        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
  </body>
</html>
