<?php $result = $this->classlistdenegados->listarDenegados(); ?>  
    <?php if ($result->num_rows): ?>
      <table class="display table table-bordered" cellspacing="0" border="0" width="100%"  id="grilla-denegados">
        <thead>
          <tr>
            <th>Tramite</th>
            <th>Fecha</th>
            <th>Estado</th>
          </tr>
        </thead>
        <tbody>
          <?php while ($row = mysqli_fetch_array($result)):?>
            <tr>
              <td><?php echo $row[0]; ?></td>
              <td><?php echo $row[1]; ?></td>
              <td><?php echo $row[2]; ?></td>
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
      <script src="public/js/indicetablas.js"></script>