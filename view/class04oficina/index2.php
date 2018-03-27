<?php $result = $this->class04oficina->listar(); ?>

        <h2>Oficina</h2>   
    <a href="?c=class04oficina&m=agregar"  class="btn btn-primary" role="button">Guardar Información Oficina</a>
   <br> <br>
      <h2>Listado de Trámites</h2>   
    <a href="?c=class04oficina&m=index1" class="btn btn-primary" role="button">Ver Trámites Inspecionados</a>
    <br><br>   
   <br>   
    <?php if ($result->num_rows): ?>
      <table class="display table table-bordered" cellpadding="0" cellspacing="0" border="0" width="100%" id="grilla-oficina">
        <thead>
          <tr>
            <th>Id Trámite</th>
            <th>Cédula Soli</th>
            <th>Nombre soli</th>
            <th>1° Apellido</th>
            <th>2° Apellido</th>
            <th>Distrito</th>
            <th>Barrio</th>
            <th>Dirección</th>
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
               <td><?php echo $row[7]; ?></td>
            
              <td><div class="dropdown">
                <button class="btn btn-info dropdown-toggle" type="button" data-toggle="dropdown">Opciones
                  <span class="caret"></span></button>
                  <ul class="dropdown-menu">
                    <li>
                        <a href="?c=class04inspeccion&m=agregarTra&id=<?php echo $row[0]; ?>">
                        <span class="glyphicon glyphicon-pencil"></span> Guardar Inspección</a>
                    </li>
                    <li>
                        <a href="?c=class04oficina&m=editar&id=<?php echo $row[0]; ?>">
                        <span class="glyphicon glyphicon-pencil"></span> Editar</a>
                    </li>
                    <li>
                      <a href="?c=class04oficina&m=eliminar&id=<?php echo $row[0]; ?>">
                       <span  class="glyphicon glyphicon-trash"></span> Eliminar</a>
                    </li>
                     <li>
                      <a href="?c=class04oficina&m=ver&id=<?php echo $row[0]; ?>">
                       <span class="glyphicon glyphicon-eye-open"></span> ver</a>
                    </li>
                      <li>
                      <a href="?c=class04inspeccion&m=agregar&id=<?php echo $row[0]; ?>">
                       <span class="glyphicon glyphicon-eye-open"></span> Trámite</a>
                    </li>
                  </ul>
                </div></td>
              </tr>
            <?php endwhile; ?>
          <?php else: ?>
            <div style="background-color:#b2ff59" class="alert alert-info">
              <center>
                <strong>¡Información!</strong> No hay información sobre Trámites.
              </center>
            </div>
          <?php endif ?>
        </tbody>
      </table>

   
