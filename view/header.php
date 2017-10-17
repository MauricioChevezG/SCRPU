<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>SCRPU</title>
	<!--Metadato responsivo de Bootstrap-->
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<!--Archivos CSS-->
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<!-- <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
<link rel="stylesheet" href="assets/js/jquery-ui/jquery-ui.min.js" />
<link rel="stylesheet" href="assets/js/bootstrap.min.js" /> -->

        
   
  <style>

.panel-heading{
	background-color: #f5f5f5;
}
  </style>
</head>
<body>
	<div class="container-fluid">
    <div class="row">
        <div class="col-sm-12 col-md-12">
            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><span class="glyphicon glyphicon-folder-close">
                            </span>Menu</a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <table class="table">
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-pencil text-primary"></span><a href="?c=class0102usuarios">Articles</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-flash text-success"></span><a href="http://www.jquery2dotnet.com">News</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-file text-info"></span><a href="http://www.jquery2dotnet.com">Newsletters</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-comment text-success"></span><a href="http://www.jquery2dotnet.com">Comments</a>
                                        <span class="badge">42</span>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"><span class="glyphicon glyphicon-th">
                            </span>Mantenimientos</a>
                        </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse ">
                        <div class="panel-body">
                            <table class="table">
                                <tr>
                                    <td>
                                         <span class="glyphicon glyphicon-user"></span>
                                         <a href="?c=class0102usuarios">Usuarios</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                          <span class="glyphicon glyphicon-list-alt"></span>
                                         <a href="?c=class03puestos">Puestos</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                         <span class="glyphicon glyphicon-tags"></span>
                                         <a href="?c=class06actdes">Actividades a Desarrollar</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                         <span class="glyphicon glyphicon-list-alt"></span>
                                         <a href="?c=class07terrft">Terreno Frete a Ruta</a>
                                    </td>
                                </tr>
                                 <tr>
                                    <td>
                                         <span class="glyphicon glyphicon-map-marker"></span>
                                         <a href="?c=class08regcor">Localización</a>
                                    </td>
                                </tr>
                                 <tr>
                                    <td>
                                         <span class="glyphicon glyphicon-list-alt"></span>
                                         <a href="?c=class09desceg">Espacio Geográfico</a>
                                    </td>
                                </tr>
                                 <tr>
                                    <td>
                                         <span class="glyphicon glyphicon-leaf"></span>
                                         <a href="?c=class0102usuarios">Aspectos Biofísicos</a>
                                    </td>
                                </tr>
                                 <tr>
                                    <td>
                                         <span class="glyphicon glyphicon-briefcase"></span>
                                         <a href="?c=class12tipdesec">Tipo de Desarrollo en el Sector</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                         <span class="glyphicon glyphicon-globe"></span>
                                         <a href="?c=class13aarep">Afectación de Áreas de protección</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                         <span class="glyphicon glyphicon-flash"></span>
                                         <a href="?c=class16servae">Servicio de Electricidad y Agua</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                         <span class="glyphicon glyphicon-road"></span>
                                         <a href="?c=class12tipdesec">Existencia de Calle en Servidumbre Frente a Ruta</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                         <span class="glyphicon glyphicon-list-alt"></span>
                                         <a href="?c=class20desas">Desarrolo de Servidumbre</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                         <span class="glyphicon glyphicon-refresh"></span>
                                         <a href="?c=class22serrvi">Servicio de Red Vial</a>
                                    </td>
                                </tr>
                                 <tr>
                                    <td>
                                         <span class="glyphicon glyphicon-link"></span>
                                         <a href="?c=class24infest">Existencia de Infraestructura</a>
                                    </td>
                                </tr>
                                 <tr>
                                    <td>
                                         <span class="glyphicon glyphicon-send"></span>
                                         <a href="?c=class26planreg">Plan Retulador</a>
                                    </td>
                                </tr>
                                 <tr>
                                    <td>
                                         <span class="glyphicon glyphicon-tree-conifer"></span>
                                         <a href="?c=class32capuso">Capacidad de Uso de Suelo</a>
                                    </td>
                                </tr>
                                 <tr>
                                    <td>
                                         <span class="glyphicon glyphicon-italic"></span>
                                         <a href="?c=class34clases">Clases</a>
                                    </td>
                                </tr>
                                 <tr>
                                    <td>
                                         <span class="glyphicon glyphicon-tree-deciduous"></span>
                                         <a href="?c=class34clases">Tipo Suelo</a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree"><span class="glyphicon glyphicon-user">
                            </span>Account</a>
                        </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse">
                        <div class="panel-body">
                            <table class="table">
                                <tr>
                                    <td>
                                        <a href="http://www.jquery2dotnet.com">Change Password</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="http://www.jquery2dotnet.com">Notifications</a> <span class="label label-info">5</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="http://www.jquery2dotnet.com">Import/Export</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-trash text-danger"></span><a href="http://www.jquery2dotnet.com" class="text-danger">
                                            Delete Account</a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour"><span class="glyphicon glyphicon-file">
                            </span>Reports</a>
                        </h4>
                    </div>
                    <div id="collapseFour" class="panel-collapse collapse">
                        <div class="panel-body">
                            <table class="table">
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-usd"></span><a href="http://www.jquery2dotnet.com">Sales</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-user"></span><a href="http://www.jquery2dotnet.com">Customers</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-tasks"></span><a href="http://www.jquery2dotnet.com">Products</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-shopping-cart"></span><a href="http://www.jquery2dotnet.com">Shopping Cart</a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <!--     <div class="col-sm-9 col-md-9">
            <div class="well">
                <h1>
                    Accordion Menu With Icon</h1>
                Admin Dashboard Accordion Menu
            </div>
        </div> -->
    </div>
</div>

		<div id="contenido" name="contenido" >
				
		</div>