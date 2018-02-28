		<div class="container-fluid well">
			<br>
			<div class="panel panel-default">
				<div class="panel-heading">Detalle Afectación de Áreas de protección</div>
				<div class="panel-body">
					<ul class="list-group">
						<li class="list-group-item"><strong>Código Detalle Afectación de Áreas de protección: </strong><?php echo $this->class13aarep->getAtributo('PU13IDAAP');?></li>
						<li class="list-group-item"><strong>Descripción Detalle Afectación de Áreas de protección: </strong><?php echo $this->class13aarep->getAtributo('PU13DESCAAP');?></li>
					</ul>
					<br>
					<a href="?c=class13aarep&m=index" class="btn btn-danger" role="button">Regresar</a>  
					<br>
				</div>
			</div>
			<br>
		</div>

