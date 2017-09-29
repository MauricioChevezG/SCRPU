<?php 
$result = $this->class10aspbio->listar(); 
//`pu10aspbio`Aspectos Biofísicos
//`PU10IDASBIO``PU10DESCABIO`class10aspbio
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Vista Aspectos Biofísicos</title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
  <div class="container">
    <h2>Listado de Aspectos Biofísicos:</h2>   
    <a href="?c=class10aspbio&m=agregar" class="btn btn-primary" role="button">Registrar Aspectos Biofísicos:</a>
   
    <br>
    <br>
      <br>   
    <?php if ($result->num_rows): ?>
      <table class="table table-bordered">
        <thead>
          <tr>
            <th>Código Aspectos Biofísicos:</th>
            <th>Descripción Aspectos Biofísicos:</th>
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
                        <a href="?c=class10aspbio&m=editar&id=<?php echo $row[0]; ?>">
                        <span class="glyphicon glyphicon-pencil"></span> Editar</a>
                    </li>
                    <li>
                      <a href="?c=class10aspbio&m=eliminar&id=<?php echo $row[0]; ?>">
                       <span class="glyphicon glyphicon-trash"></span> Eliminar</a>
                    </li>
                     <li>
                      <a href="?c=class10aspbio&m=ver&id=<?php echo $row[0]; ?>">
                       <span class="glyphicon glyphicon-eye-open"></span> ver</a>
                    </li>
                  </ul>
                </div></td>
              </tr>
            <?php endwhile; ?>
          <?php else: ?>
            <div class="alert alert-info">
              <center>
                <strong>¡Información!</strong> No hay información registrada.
              </center>
            </div>
          <?php endif ?>
        </tbody>
      </table>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </body>
  </html>