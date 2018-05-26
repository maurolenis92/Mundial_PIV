<?php 
	require_once('paises_modelo.php');

	$paises = new Pais();

	$paises = $paises->consultarAll();

 ?>

 <div class="row">
  	<div class="col-12">
  		<div class="card">
		 		<div class="card-header">Goleadores</div>
		 		<div class="card-body">
		 			<table class="table" id="tabla">
		 				<thead class="thead-dark">
		 					<tr>
		 						<th scope="col">Equipo</th>
		 						<th scope="col">Continente</th>
		 						<th scope="col">Grupo</th>
		 						<th scope="col">Sede</th>
		 					</tr>
		 				</thead>
		 				<tbody>
		 					<?php 
		 						foreach ($paises as $pais) { ?>
			 						<tr>
				 						<td> <?php echo utf8_encode($pais['SelecNom'])  ?> </td>
				 						<td> <?php echo $pais['PaisContinente']  ?> </td>
				 						<td> <?php echo $pais['grupo']  ?> </td>
				 						<td> <?php echo "Pendiente"  ?> </td>
			 						</tr> 							
		 						<?php }

		 						 ?>
		 					
		 				</tbody>
		 			</table>
		 		</div>
		 	</div>
  	</div>
  </div>

  <script>
	$(document).ready(function(){
		$("#tabla").DataTable();
	});
  </script>