<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>SCRPU</title>
	<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="card card-deck text-md-center">
					<div class="col-md-8 mx-md-auto	mt-md-5">
						<form action="?c=classlogin&m=sesion" method="post">
				            <fieldset>
						        <div class="card-header">
						            <div class="card-title">
						            	<div class="col-md-6 mx-md-auto">
						            		<label>
							                	<h3><strong>Inicio de Sesion</strong><span class="glyphicon glyphicon-log-in pull-right"></span></h3>
							                </label>
						            	</div>
						                
						            </div>	
						        </div>
						        <div class="card-block">
							        <div class="form-group">
							        	<div class="col-md-5 mx-md-auto">
							        		<div class="input-group">
								            	<label for="usuario" class="control-label input-group-addon">Usuario:</label>
								                <input type="text" id="usuario" name="usuario" class="form-control" placeholder="Nombre de Usuario">
								            </div>
							        	</div>
							            
							        </div>
							        <div class="form-group">
							        	<div class="col-md-5 mx-md-auto">
							        		<div class="input-group">
								            	<label for="clave" class="control-label input-group-addon">Clave:</label>
								                <input type="password" id="clave" name="clave" class="form-control" placeholder="Clave">
								            </div>
							        	</div>							            
							        </div>
						        </div>
						        <div class="card-footer">
						            <div class="form-group">
						            	<div class="col-md-5 mx-md-auto">
						            		<div class="input-group">
									            <input type="submit" class="btn btn-success btn-block" name="submit" value="Entrar">
									        </div>
						            	</div>
							            					            						            	
								    </div> 	            
						        </div>
				            </fieldset>
					    </form>
					</div>
						
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
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>