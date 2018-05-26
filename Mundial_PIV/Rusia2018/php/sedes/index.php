<?php 

	require_once('sedes_modelo.php');
	$sedes = new Sede();
	$sedes = $sedes->consultarAll();
 ?>

<div class="row">
	<?php 

	foreach ($sedes as $sede) { ?>
		
		<div class="col-4">
		<div class="card" style="width: 18rem;">
		  <img class="card-img-top" src="<?php echo$sede['SedUrl'] ?>" alt="Card image cap">
		  <div class="card-body">
		    <h5 class="card-title"><?php echo htmlentities($sede['SedNom'], ENT_QUOTES, 'utf-8') ?></h5>
		    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
		    <a href="#" class="btn btn-primary">Mas Información</a>
		  </div>
		</div>
		</div>	


	<?php } ?>
</div>