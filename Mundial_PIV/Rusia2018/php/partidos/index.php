<?php 
	require_once("partidos_modelo.php");

	$partidos = new Partidos();
	$partidos = $partidos->consultarAll();
 ?>

 <div class="row">
  	<ul class="nav">
	  <li class="nav-item">
	    <a class="nav-link active" href="#">Grupos</a>
	  </li>
	  <!--li class="nav-item">
	    <a class="nav-link" href="#">2da fase</a>
	  </li-->
	</ul>
	<br>
 </div>

 <div class="row">
 	<div class="col-12">
 		<div class="card">
 			<div class="card-header">Partido</div>
 			<div class="card-body">
 				<?php 

 				foreach ($partidos as $partido) {
 					require_once("../paises/paises_modelo.php");
 					$pais1 = new Pais();
 					$pais1 = $pais1->consultarXId($partido['SelecId1']);

 					$pais2 = new Pais();
 					$pais2 = $pais2->consultarXId($partido['SelecId2']);
 					?>
 					<div class="row">
 					<div class="col-5">
 						<div class="row">
 							<div class="col-6">
 								<label><?php echo utf8_encode($pais1[0]['SelecNom']) ?></label>		
 							</div>
 							<div class="col-6">
 								<input type="number" name="">		
 							</div>
 						</div>
 					</div>
 					<div class="col-2">
 						<label>VS</label>
 					</div>
 					<div class="col-5">
 						<div class="row">
 							<div class="col-6">
 								<input type="number" name="">		
 							</div>
 							<div class="col-6">
 								<label><?php echo utf8_encode($pais2[0]['SelecNom']) ?></label>		
 							</div>
 						</div>
 					</div>
 				</div>
 				<br>
 				<?php }

 				 ?>
 				
 			</div>
 		</div>
 	</div>
 </div>