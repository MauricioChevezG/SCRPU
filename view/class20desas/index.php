<?php $result = $this->class20desas->listar(); ?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Vista Desarrolo de Servidumbre</title>
  <link rel="stylesheet" type="text/css" href="../../datatables/Bootstrap-3.3.7/css/bootstrap-theme.min.css">
  <link rel="stylesheet" type="text/css" href="../../datatables/Bootstrap-3.3.7/css/bootstrap.min.css">
</head>
<body>
  <div class="container">
    <h2>Listado de Desarrolo de Servidumbre</h2>   
    <a href="?c=class20desas&m=agregar" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-pawn"></span> Registrar</a>
    <br><br>    
    <?php if ($result->num_rows): ?>
      <table class="table table-bordered">
        <thead>
          <tr>
            <th>Código del Desarrollo:</th>
            <th>Descripción del Desarrollo:</th>
            <th style="width: 120px;">Más</th>
          </tr>
        </thead>
        <tbody>
          <?php while ($row = mysqli_fetch_array($result)):?>
            <tr>
              <td><?php echo $row[0]; ?></td>
              <td><?php echo $row[1]; ?></td>
              
              <td><div class="dropdown">
                <button class="btn btn-info dropdown-toggle" type="button" data-toggle="dropdown">Opciones
                  <span class="caret"></span></button>
                  <ul class="dropdown-menu">
                    <li>
                        <a href="?c=class20desas&m=editar&id=<?php echo $row[0]; ?>">
                        <span class="glyphicon glyphicon-pencil"></span> Editar</a>
                    </li>
                    <li>
                      <a href="?c=class20desas&m=eliminar&id=<?php echo $row[0]; ?>">
                       <span class="glyphicon glyphicon-trash"></span> Eliminar</a>
                    </li>
                     <li>
                      <a href="?c=class20desas&m=ver&id=<?php echo $row[0]; ?>">
                       <span class="glyphicon glyphicon-eye-open"></span> ver</a>
                    </li>
                  </ul>
                </div></td>
              </tr>
            <?php endwhile; ?>
          <?php else: ?>
            <div class="alert alert-info">
              <center>
                <strong>¡Información!</strong> No hay Desarrolo de Servidumbre.
              </center>
            </div>
          <?php endif ?>
        </tbody>
      </table>
    </div>
    <script src="../../datatables/jQuery-2.2.4/jquery-2.2.4.min.js"></script>
    <script src="../../datatables/Bootstrap-3.3.7/js/bootstrap.min.js"></script>
  </body>
  </html>