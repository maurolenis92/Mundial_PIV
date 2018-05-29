<?php 
	require_once("../modeloAbstractoDB.php");

	class Partidos extends modeloAbstractoDB{
		
		public $ArbId;
		public $EstadioId;
		public $Goles1;
		public $Goles2;
		public $PartidoDate;
		public $PartidoHora;
		public $PartidoId;
		public $SedId;
		public $SelecId1;
		public $SelecId2;

		public function lista(){}

		public function consultarAll(){
			$this->query = "
			SELECT * FROM partidos";

			$this->obtener_resultados_query();
			return $this->rows;
		}
	}

 ?>