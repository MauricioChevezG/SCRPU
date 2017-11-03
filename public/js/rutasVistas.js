// coloca el  contenido especifico en un div especifico de mi pagina principal
function vistaRetrasados(){
		$("#tabcontenido1").load("?c=classlistretrasados&m=listarRetrasado");	
	}
function vistaNuevos(){
		$("#tabcontenido2").load("?c=classlistnuevos&m=listarNuevo");
    	}
function vistaInspeccion(){
		$("#tabcontenido3").load("?c=classlistinspeccion&m=listarInspeccion");	
	}
function vistaOficina(){
		$("#tabcontenido4").load("?c=classlistoficina&m=listarOficina");
    }
function vistaAceptados(){
		$("#tabcontenido5").load("?c=classlistaceptados&m=listarAceptados");	
	}
function vistaDenegados(){
		$("#tabcontenido6").load("?c=classlistdenegados&m=listarDenegados");
    }