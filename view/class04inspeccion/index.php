<<<<<<< HEAD:view/class04inspeccion/index.php
<?php $result = $this->class04inspeccion->listar(); ?>

=======
<?php 
$result = $this->class04inspeccion->listar(); 
?>
>>>>>>> pr/15:view/class04inspecion/index.php
    <div class="container-fluid">
        <h2>Listado de puestos</h2>   
    <a href="#" onclick="agregar();" class="btn btn-primary" role="button">Registrar puesto</a>
    <br><br>    
    <?php if ($result->num_rows): ?>
<<<<<<< HEAD:view/class04inspeccion/index.php
      <table class="display table table-bordered" id="grilla-inspeccion" cellpadding="0" cellspacing="0" border="0" width="100%">
=======
      <table class="table table-bordered table-hover" id="grilla-inspeccion">
>>>>>>> pr/15:view/class04inspecion/index.php
        <thead>
          <tr>
            <th>Id Tramite</th>
            <th>Fecha</th>
            <th>Terreno F R</th>
            <th>Norte</th>
            <th>Este</th>
            <th>Altitud</th>
            <th>Tipo Desarrollo</th>
            <th style="width: 120px;">Más</th>
          </tr>
        </thead>
        <tbody>
          <?php while ($row = mysqli_fetch_array($result)):?>
            <tr>
              <td><?php echo $row[0]; ?></td>
              <td><?php echo $row[1]; ?></td>
              <td><?php echo $row[2]; ?></td>
              <td><?php echo $row[3]; ?></td>
              <td><?php echo $row[4]; ?></td>
              <td><?php echo $row[5]; ?></td>
              <td><?php echo $row[6]; ?></td>
              <td><div class="dropdown">
                <button class="btn btn-info dropdown-toggle" type="button" data-toggle="dropdown">Opciones
                  <span class="caret"></span></button>
                  <ul class="dropdown-menu">
                    <li>
                        <a href="?c=class04inspeccion&m=editar&id=<?php echo $row[0]; ?>">
                        <span class="glyphicon glyphicon-pencil"></span> Editar</a>
                    </li>
                    <li>
                      <a href="?c=class04inspeccion&m=eliminar&id=<?php echo $row[0]; ?>">
                       <span  class="glyphicon glyphicon-trash"></span> Eliminar</a>
                    </li>
                     <li>
                      <a href="?c=class04inspeccion&m=ver&id=<?php echo $row[0]; ?>">
                       <span class="glyphicon glyphicon-eye-open"></span> ver</a>
                    </li>
                  </ul>
                </div></td>
              </tr>
            <?php endwhile; ?>
          <?php else: ?>
            <div style="background-color:#b2ff59" class="alert alert-info">
              <center>
                <strong>¡Información!</strong> No hay información sobre puestos.
              </center>
            </div>
          <?php endif ?>
        </tbody>
<<<<<<< HEAD:view/class04inspeccion/index.php
      </table>
=======
      </table> -->
>>>>>>> pr/15:view/class04inspecion/index.php
    </div>