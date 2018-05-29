<?php 


	require_once("../modeloAbstractoDB.php");


	class Jugador extends modeloAbstractoDB{
		
		public $JugadorApe;
		public $JugadorEdad;
		public $JugadorEqui;
		public $JugadorGoles;
		public $JugadorId;
		public $JugadorNom;
		public $JugadorNum;
		public $JugadorPo;
		public $JugadorUrl;

		public function lista(){

		}

		public function consultarAll(){
			$this->query = "
			SELECT * FROM jugador ORDER BY JugadorGoles DESC";

			$this->obtener_resultados_query();
			return $this->rows;
		}

	}


 ?>