<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>SCRPU</title>
	<!-- Jquery Confirm v3 -->
  	<link rel="stylesheet" href="assets/jquery-confirm/dist/jquery-confirm.min.css">
	<!-- css de los tabs -->
	<link rel="stylesheet" href="public/css/easy-responsive-tabs.css ">
	<!-- css de datatable -->
	<link rel="stylesheet" href="assets/datatables/DataTables-1.10.16/css/jquery.dataTables.min.css">
	<!-- ccs de date piker  -->
	<link rel="stylesheet" href="assets/jquery-ui/jquery-ui.css">
	<!-- para los container well -->
	<link rel="stylesheet" href="assets/bootstrap/css/bootstrap-theme.css">
	<!-- para el formato principal y sub menu -->
	<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
	<!-- Custom fonts for this template-->
	<link  rel="stylesheet" type="text/css" href="vendor/font-awesome/css/font-awesome.min.css">
	<!-- Page level plugin CSS-->
	<link rel="stylesheet" href="vendor/datatables/dataTables.bootstrap4.css">
	<!-- Custom styles for this template-->
	<link rel="stylesheet" href="css/sb-admin.css">
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-6 offset-md-5">
				<div class="card card-login">
					<form action="?c=classlogin&m=sesion" method="post">
			            <fieldset>
					        <div class="card-header">
					            <div class="card-title text-center">
					                <label>
					                	<span class="glyphicon glyphicon-log-in pull-right"></span><strong>Login</strong>
					                </label>
					            </div>	
					        </div>
					        <div class="card-block">
						        <div class="form-group">
						            <div class="input-group">
						            	<label for="usuario" class="control-label input-group-addon">Usuario</label>
						                <input type="text" id="usuario" name="usuario" class="form-control" placeholder="Nombre de Usuario">
						            </div>
						        </div>
						        <div class="form-group">
						            <div class="input-group">
						            	<label for="clave" class="control-label input-group-addon">Clave</label>
						                <input type="password" id="clave" name="clave" class="form-control" placeholder="Clave">
						            </div>
						        </div>
					        </div>
					        <div class="card-footer">
					            <div class="form-group">
					            	<div class="input-group">
					            		<input type="submit" class="btn btn-success" name="submit" value="Entrar">
					            	</div>
						        </div> 
					        </div>
			            </fieldset>
				    </form>	
		        </div>
			</div>
		</div>
		<footer class="sticky-footer">
	      <div class="container">
	        <div class="text-center">
	          <small>Derechos Reservados Planificación Urbana 2018</small>
	        </div>
	      </div>
	    </footer>
	</div>
	<script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/jquery-ui/jquery-ui.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/datatables/DataTables-1.10.16/js/jquery.dataTables.min.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>
    <script src="assets/jquery-confirm/dist/jquery-confirm.min.js"></script>
</body>
</html>