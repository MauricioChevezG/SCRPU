<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SCRPU</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">


    <style>
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 550px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
    }
        
    /* On small screens, set height to 'auto' for the grid */
    @media screen and (max-width: 767px) {
      .row.content {height: auto;} 
    }
  </style>

</script>
<script>
$(document).ready(function(){
    $("puesto").click(function(){
        $("#div1").load("?c=class03puestos");
    });
});
</script>



</head>

<body>

<nav class="navbar navbar-inverse visible-xs">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" >SCRPU</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Dashboard</a></li>
        <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><span class="glyphicon glyphicon-folder-close">
                            </span>Menu</a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in ">
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
                    <div id="collapseTwo" class="panel-collapse collapse">
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
                                         <a  href="?c=class03puestos">Puestos</a>
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
                                         <a href="?c=class10aspbio">Aspectos Biofísicos</a>
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
                                         <a href="?c=class18calleser">Existencia de Calle en Servidumbre Frente a Ruta</a>
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
                                         <a href="?c=class35tipsue">Tipo Suelo</a>
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
      </ul>
    </div>
  </div>
</nav>

<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-3 sidenav hidden-xs">
      <h2>SCRPU</h2>
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="#section1">Dashboard</a></li>
       <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseUno"><span class="glyphicon glyphicon-folder-close">
                            </span>Menu</a>
                        </h4>
                    </div>
                    <div id="collapseUno" class="panel-collapse collapse in ">
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
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseDos"><span class="glyphicon glyphicon-th">
                            </span>Mantenimientos</a>
                        </h4>
                    </div>
                    <div id="collapseDos" class="panel-collapse collapse">
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
                                         <a id="puesto"  href="">Puestos</a>
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
                                         <a href="?c=class10aspbio">Aspectos Biofísicos</a>
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
                                         <a href="?c=class18calleser">Existencia de Calle en Servidumbre Frente a Ruta</a>
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
                                         <a href="?c=class35tipsue">Tipo Suelo</a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseTres"><span class="glyphicon glyphicon-user">
                            </span>Account</a>
                        </h4>
                    </div>
                    <div id="collapseTres" class="panel-collapse collapse">
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
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseCuatro"><span class="glyphicon glyphicon-file">
                            </span>Reports</a>
                        </h4>
                    </div>
                    <div id="collapseCuatro" class="panel-collapse collapse">
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
       </ul><br>
    </div>


   <div class="col-sm-9">
    <br>
   <div class="well" id="div1">
        
      </div>
    </div>



  </div>
</div>
