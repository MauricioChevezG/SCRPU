<?php $result = $this->class04tramite->listarRetrasado(); ?>
    <h2>Listado de Tramites Retrasados</h2>
    <!--<a href="?c=class04tramite&m=agregar" class="btn btn-primary" role="button">Registrar</a> -->
    <br><br>    
    <?php if ($result->num_rows): ?>
      <table class="display table table-bordered" id="tramites-retrasados">
        <thead>
          <tr>
            <th>Tramite</th>
            <th>Fecha</th>
            <th>Estado</th>
           <!--  <th style="width: 120px;">Más</th> -->
          </tr>
        </thead>
        <tbody>
          <?php while ($row = mysqli_fetch_array($result)):?>
            <tr>
              <td><?php echo $row[0]; ?></td>
              <td><?php echo $row[1]; ?></td>
              <td><?php echo $row[2]; ?></td>
           <!--    <td><div class="dropdown">
                <button class="btn btn-info dropdown-toggle" type="button" data-toggle="dropdown">Opciones
                  <span class="caret"></span></button>
                  <ul class="dropdown-menu">
                    <li>
                        <a href="?c=class04tramite&m=editar&id=<?php echo $row[0]; ?>">
                        <span class="glyphicon glyphicon-pencil"></span> Editar</a>
                    </li>
                    <li>
                      <a href="?c=class04tramite&m=eliminar&id=<?php echo $row[0]; ?>">
                       <span  class="glyphicon glyphicon-trash"></span> Eliminar</a>
                    </li>
                     <li>
                      <a href="?c=class04tramite&m=ver&id=<?php echo $row[0]; ?>">
                       <span class="glyphicon glyphicon-eye-open"></span> ver</a>
                    </li>
                  </ul>
                </div></td> -->
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

      </table>