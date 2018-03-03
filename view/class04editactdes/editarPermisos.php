
  <?php $idactividades = $this->class04editactdes->getTodasActividades(); ?>


                <form method="POST" action="?c=class04editactdes&m=editarActividades">
        <label for="id">Código Trámite</label>
        <input type="text" class="form-control" id="id" name="id" value="<?php echo $this->class04editactdes->getAtributo('PU04IDTRA');?>" readonly>
       
      </div>
        <?php foreach( $idactividades as $idaspecto ): ?>
          <?php $isCheck = $this->class04editactdes->tieneActividades($idtramite, $idaspecto['PU06IDACTDES']);?>
                  <div class="checkbox">
                    <label>
                      <input type="checkbox" name="idactdes<?php echo $idaspecto['PU06IDACTDES']; ?>"
                        <?php if($isCheck['total']) {echo "checked";} ?>/> <?php echo $idaspecto['PU06DESAD'] ;?> 
                    </label>                                          
                  </div>
        <?php 
        	endforeach; 
        
        ?>
                  <button type="submit" class="btn btn-default">Guardar</button>
                </form>
   
