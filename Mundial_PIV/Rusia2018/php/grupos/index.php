<?php 
	require_once("../paises/paises_modelo.php");
	$grupoa = new Pais();
	$grupoa = $grupoa->consultarXGrupo("A");
	$grupob = new Pais();
	$grupob = $grupob->consultarXGrupo("B");
	$grupoc = new Pais();
	$grupoc = $grupoc->consultarXGrupo("C");
	$grupod = new Pais();
	$grupod = $grupod->consultarXGrupo("D");
	$grupoe = new Pais();
	$grupoe = $grupoe->consultarXGrupo("E");
	$grupof = new Pais();
	$grupof = $grupof->consultarXGrupo("F");
	$grupog = new Pais();
	$grupog = $grupog->consultarXGrupo("G");
	$grupoh = new Pais();
	$grupoh = $grupoh->consultarXGrupo("H");
	
	
 ?>

 <div class="row">
 	<div class="col-12">
 		<?php 
 		if ($grupoa): ?>
 		
		 	<div class="card">
		 		<div class="card-header">Grupo A</div>
		 		<div class="card-body">
		 			<table class="table">
		 				<thead class="thead-dark">
		 					<tr>
		 						<th scope="col"></th>
		 						<th scope="col"></th>
		 						<th scope="col">PJ</th>
		 						<th scope="col">G</th>
		 						<th scope="col">E</th>
		 						<th scope="col">P</th>
		 						<th scope="col">GF</th>
		 						<th scope="col">GC</th>
		 						<th scope="col">DG</th>
		 						<th scope="col">PTS</th>
		 					</tr>
		 				</thead>
		 				<tbody>
		 					<?php 
		 						foreach ($grupoa as $pais) { ?>
			 						<tr>
				 						<td>
				 							<img src="<?php echo $pais['Bandera']?>">
				 							<?php echo $pais['SelecNom'] ?>
				 						</td>
				 						<td class="align-items-center"></td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
			 						</tr> 							
		 						<?php }

		 						 ?>
		 					
		 				</tbody>
		 			</table>
		 		</div>
		 	</div>
		 	<br>
 	<?php endif;

 	if ($grupob): ?>
 		
		 	<div class="card">
		 		<div class="card-header">Grupo B</div>
		 		<div class="card-body">
		 			<table class="table">
		 				<thead class="thead-dark">
		 					<tr>
		 						<th scope="col"></th>
		 						<th scope="col"></th>
		 						<th scope="col">PJ</th>
		 						<th scope="col">G</th>
		 						<th scope="col">E</th>
		 						<th scope="col">P</th>
		 						<th scope="col">GF</th>
		 						<th scope="col">GC</th>
		 						<th scope="col">DG</th>
		 						<th scope="col">PTS</th>
		 					</tr>
		 				</thead>
		 				<tbody>
		 					<?php 
		 						foreach ($grupob as $pais) { ?>
			 						<tr>
				 						<td>
				 							<img src="<?php echo $pais['Bandera']?>">
				 							<?php echo $pais['SelecNom'] ?>
				 						</td>
				 						<td class="align-items-center"></td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
			 						</tr> 							
		 						<?php }

		 						 ?>
		 					
		 				</tbody>
		 			</table>
		 		</div>
		 	</div>
		 	<br>
 	<?php endif;

 	if ($grupoc): ?>
 		
		 	<div class="card">
		 		<div class="card-header">Grupo C</div>
		 		<div class="card-body">
		 			<table class="table">
		 				<thead class="thead-dark">
		 					<tr>
		 						<th scope="col"></th>
		 						<th scope="col"></th>
		 						<th scope="col">PJ</th>
		 						<th scope="col">G</th>
		 						<th scope="col">E</th>
		 						<th scope="col">P</th>
		 						<th scope="col">GF</th>
		 						<th scope="col">GC</th>
		 						<th scope="col">DG</th>
		 						<th scope="col">PTS</th>
		 					</tr>
		 				</thead>
		 				<tbody>
		 					<?php 
		 						foreach ($grupoc as $pais) { ?>
			 						<tr>
				 						<td>
				 							<img src="<?php echo $pais['Bandera']?>">
				 							<?php echo $pais['SelecNom'] ?>
				 						</td>
				 						<td class="align-items-center"></td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
			 						</tr> 							
		 						<?php }

		 						 ?>
		 					
		 				</tbody>
		 			</table>
		 		</div>
		 	</div>
		 	<br>
 	<?php endif;

 	if ($grupoc): ?>
 		
		 	<div class="card">
		 		<div class="card-header">Grupo D</div>
		 		<div class="card-body">
		 			<table class="table">
		 				<thead class="thead-dark">
		 					<tr>
		 						<th scope="col"></th>
		 						<th scope="col"></th>
		 						<th scope="col">PJ</th>
		 						<th scope="col">G</th>
		 						<th scope="col">E</th>
		 						<th scope="col">P</th>
		 						<th scope="col">GF</th>
		 						<th scope="col">GC</th>
		 						<th scope="col">DG</th>
		 						<th scope="col">PTS</th>
		 					</tr>
		 				</thead>
		 				<tbody>
		 					<?php 
		 						foreach ($grupoe as $pais) { ?>
			 						<tr>
				 						<td>
				 							<img src="<?php echo $pais['Bandera']?>">
				 							<?php echo $pais['SelecNom'] ?>
				 						</td>
				 						<td class="align-items-center"></td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
			 						</tr> 							
		 						<?php }

		 						 ?>
		 					
		 				</tbody>
		 			</table>
		 		</div>
		 	</div>
		 	<br>
 	<?php endif;

 	if ($grupoc): ?>
 		
		 	<div class="card">
		 		<div class="card-header">Grupo E</div>
		 		<div class="card-body">
		 			<table class="table">
		 				<thead class="thead-dark">
		 					<tr>
		 						<th scope="col"></th>
		 						<th scope="col"></th>
		 						<th scope="col">PJ</th>
		 						<th scope="col">G</th>
		 						<th scope="col">E</th>
		 						<th scope="col">P</th>
		 						<th scope="col">GF</th>
		 						<th scope="col">GC</th>
		 						<th scope="col">DG</th>
		 						<th scope="col">PTS</th>
		 					</tr>
		 				</thead>
		 				<tbody>
		 					<?php 
		 						foreach ($grupoe as $pais) { ?>
			 						<tr>
				 						<td>
				 							<img src="<?php echo $pais['Bandera']?>">
				 							<?php echo $pais['SelecNom'] ?>
				 						</td>
				 						<td class="align-items-center"></td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
			 						</tr> 							
		 						<?php }

		 						 ?>
		 					
		 				</tbody>
		 			</table>
		 		</div>
		 	</div>
		 	<br>
 	<?php endif;


 	if ($grupoc): ?>
 		
		 	<div class="card">
		 		<div class="card-header">Grupo F</div>
		 		<div class="card-body">
		 			<table class="table">
		 				<thead class="thead-dark">
		 					<tr>
		 						<th scope="col"></th>
		 						<th scope="col"></th>
		 						<th scope="col">PJ</th>
		 						<th scope="col">G</th>
		 						<th scope="col">E</th>
		 						<th scope="col">P</th>
		 						<th scope="col">GF</th>
		 						<th scope="col">GC</th>
		 						<th scope="col">DG</th>
		 						<th scope="col">PTS</th>
		 					</tr>
		 				</thead>
		 				<tbody>
		 					<?php 
		 						foreach ($grupof as $pais) { ?>
			 						<tr>
				 						<td>
				 							<img src="<?php echo $pais['Bandera']?>">
				 							<?php echo $pais['SelecNom'] ?>
				 						</td>
				 						<td class="align-items-center"></td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
			 						</tr> 							
		 						<?php }

		 						 ?>
		 					
		 				</tbody>
		 			</table>
		 		</div>
		 	</div>
		 	<br>
 	<?php endif;

 	if ($grupoc): ?>
 		
		 	<div class="card">
		 		<div class="card-header">Grupo G</div>
		 		<div class="card-body">
		 			<table class="table">
		 				<thead class="thead-dark">
		 					<tr>
		 						<th scope="col"></th>
		 						<th scope="col"></th>
		 						<th scope="col">PJ</th>
		 						<th scope="col">G</th>
		 						<th scope="col">E</th>
		 						<th scope="col">P</th>
		 						<th scope="col">GF</th>
		 						<th scope="col">GC</th>
		 						<th scope="col">DG</th>
		 						<th scope="col">PTS</th>
		 					</tr>
		 				</thead>
		 				<tbody>
		 					<?php 
		 						foreach ($grupog as $pais) { ?>
			 						<tr>
				 						<td>
				 							<img src="<?php echo $pais['Bandera']?>">
				 							<?php echo $pais['SelecNom'] ?>
				 						</td>
				 						<td class="align-items-center"></td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
			 						</tr> 							
		 						<?php }

		 						 ?>
		 					
		 				</tbody>
		 			</table>
		 		</div>
		 	</div>
		 	<br>
 	<?php endif;


 	if ($grupoc): ?>
 		
		 	<div class="card">
		 		<div class="card-header">Grupo H</div>
		 		<div class="card-body">
		 			<table class="table">
		 				<thead class="thead-dark">
		 					<tr>
		 						<th scope="col"></th>
		 						<th scope="col"></th>
		 						<th scope="col">PJ</th>
		 						<th scope="col">G</th>
		 						<th scope="col">E</th>
		 						<th scope="col">P</th>
		 						<th scope="col">GF</th>
		 						<th scope="col">GC</th>
		 						<th scope="col">DG</th>
		 						<th scope="col">PTS</th>
		 					</tr>
		 				</thead>
		 				<tbody>
		 					<?php 
		 						foreach ($grupoh as $pais) { ?>
			 						<tr>
				 						<td>
				 							<img src="<?php echo $pais['Bandera']?>">
				 							<?php echo $pais['SelecNom'] ?>
				 						</td>
				 						<td class="align-items-center"></td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
				 						<td>0</td>
			 						</tr> 							
		 						<?php }

		 						 ?>
		 					
		 				</tbody>
		 			</table>
		 		</div>
		 	</div>
		 	<br>
 	<?php endif;

 	 ?>


 	</div>
 </div>