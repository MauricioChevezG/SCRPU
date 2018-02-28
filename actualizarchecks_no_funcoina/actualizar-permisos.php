<?php
  require 'model/class04inspeccion.php';
   $pu06actividad = $this->pu04inspeccion->getTodasCategorias();


  // Eliminamos todos sus permisos:
  eliminarCaracteristicasTerreno($idtramite);
  //$pu06actdes = getTodasCategoriaspu06actdes();
  // Reasignaremos sus permisos:
  foreach ($pu06actividad as $pu06actdes):
    if( isset( $_POST['pu06actdes'.$pu06actdes[0]] ) )
      asignarCaracteristicasTerreno($idtramite, $pu06actdes[0]);
  endforeach;

  header('Location: editarPermisos.php?idtramite='.$idtramite);

?>
