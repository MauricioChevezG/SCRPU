		<div class="row">
			<div class="panel panel-default">
				<div class="panel-heading">Detalle del Servicio</div>
				<div class="panel-body">
					<ul class="list-group">
						<li class="list-group-item"><strong>Código del Servicio: </strong><?php echo $this->class21servicios->getAtributo('PU21IDSERVI');?></li>
						<li class="list-group-item"><strong>Descripción del Servicio: </strong><?php echo $this->class21servicios->getAtributo('PU21DESCSERVI');?></li>
					</ul>
					<a href="?c=class21servicios&m=index" class="btn btn-danger" role="button">Regresar</a>  
				</div>
			</div>
		</div>