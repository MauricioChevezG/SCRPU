<?php $result = $this->class35tipsue->listar();?>
<div class="container-fluid">
  <h2>Listado Tipo Suelo</h2>   
  <a href="?c=class35tipsue&m=agregar" class="btn btn-primary" role="button">Registrar Tipo Suelo</a>
  <br>
  <br>   
  <?php if ($result->num_rows): ?>
  <table class="table table-bordered table-hover" id="grilla-tipsue">
    <thead>
      <tr>
        <th>Código de Tipo Suelo:</th>
        <th>Descripción de Tipo Suelo:</th>
        <th style="width: 120px;">Más</th>
      </tr>
    </thead>
    <tbody>
    <?php while ($row = mysqli_fetch_array($result)):?>
      <tr>
        <td><?php echo $row[0]; ?></td>
        <td><?php echo $row[1]; ?></td>        
        <td>
          <div class="dropdown">
            <button class="btn btn-info dropdown-toggle" type="button" data-toggle="dropdown">Opciones<span class="caret"></span></button>
            <ul class="dropdown-menu">
              <li><a href="?c=class35tipsue&m=editar&id=<?php echo $row[0]; ?>"><span class="glyphicon glyphicon-pencil"></span> Editar</a></li>
              <li><a href="?c=class35tipsue&m=eliminar&id=<?php echo $row[0]; ?>"><span class="glyphicon glyphicon-trash"></span> Eliminar</a></li>
              <li><a href="?c=class35tipsue&m=ver&id=<?php echo $row[0]; ?>"><span class="glyphicon glyphicon-eye-open"></span> ver</a></li>
            </ul>
          </div></td>
      </tr>
      <?php endwhile; ?>
      <?php else: ?>
      <div class="alert alert-info">
        <center><strong>¡Información!</strong> No hay Tipo Suelo.</center>
      </div>
      <?php endif ?>
    </tbody>
  </table>
</div>
