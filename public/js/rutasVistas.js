// coloca el index de puestos en el contenido especifico de my pagina principal
function vistaRetrasados(){
		$("#tabcontenido1").load("?c=class04tramite&m=listarRetrasado");	
	}
function vistaNuevos(){
		$('#tabcontenido1').fadeOut();	
		$("#tabcontenido2").load("?c=class04tramite&m=listarNuevo");
    	}

     
		
    