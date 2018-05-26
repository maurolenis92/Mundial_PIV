<?php 
	require_once('../jugadores/jugador_modelo.php');
	$jugadores = new Jugador();
	$jugadores = $jugadores->consultarAll();

 ?>

 

  
  <div class="row">
  	<ul class="nav">
	  <li class="nav-item">
	    <a class="nav-link active" href="#">Goles</a>
	  </li>
	  <li class="nav-item">
	    <a class="nav-link" href="#">Tarjetas Amarillas</a>
	  </li>
	  <li class="nav-item">
	    <a class="nav-link" href="#">Tarjetas Rojas</a>
	  </li>
	</ul>
	<br>
  </div>
  <div class="row">
  	<div class="col-12">
  		<div class="card">
		 		<div class="card-header">Goleadores</div>
		 		<div class="card-body">
		 			<table class="table" id="tabla">
		 				<thead class="thead-dark">
		 					<tr>
		 						<th scope="col">Jugador</th>
		 						<th scope="col">Numero</th>
		 						<th scope="col">Edad</th>
		 						<th scope="col">Posicion</th>
		 						<th scope="col">Equipo</th>
		 						<th scope="col">Goles</th>
		 					</tr>
		 				</thead>
		 				<tbody>
		 					<?php 
		 						foreach ($jugadores as $jugador) { ?>
			 						<tr>
				 						<td> <?php echo $jugador['JugadorNom']  ?> </td>
				 						<td> <?php echo $jugador['JugadorNum']  ?> </td>
				 						<td> <?php echo $jugador['JugadorEdad']  ?> </td>
				 						<td> <?php echo $jugador['JugadorPo']  ?> </td>
				 						<td> <?php echo $jugador['JugadorEqui']  ?> </td>
				 						<td> <?php echo $jugador['JugadorGoles']  ?> </td>
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
