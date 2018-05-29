<?php 

	require_once("../modeloAbstractoDB.php");


	class Pais extends modeloAbstractoDB{
		
		public $SedeId;
		public $Bandera;
		public $GolesNum;
		public $grupo;
		public $PaisContinente;
		public $SelecId;
		public $SelecNom;

		public function lista(){

		}

		public function consultarAll(){
			$this->query = "
			SELECT * FROM pais";

			$this->obtener_resultados_query();
			return $this->rows;
		}

		public function consultarXGrupo($grupo){
			$this->query = "
			SELECT * FROM pais WHERE grupo = '$grupo'
			";

			$this->obtener_resultados_query();
			return $this->rows;

		}

		public function consultarXId($id){
			$this->query = "
			SELECT * FROM pais WHERE SelecId = '$id'
			";

			$this->obtener_resultados_query();
			return $this->rows;

		}

	}
	
 ?>