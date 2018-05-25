<?php 
	require_once("../modeloAbstractoDB.php");


	class Sede extends modeloAbstractoDB{
		
		public $SedeId;
		public $sedinfraestrutura;
		public $sedtranscomunicacion;
		public $sedfuenEmp;
		public $sedServiciosbas;
		public $sedrecreacion;
		public $sedalimentacion;
		public $sedclima;
		public $sedpoblacion;
		public $Sedcultura;
		public $SedNom;
		public $SedUrl;

		public function lista(){

		}

		public function consultarAll(){
			$this->query = "
			SELECT * FROM sedes";

			$this->obtener_resultados_query();
			return $this->rows;
		}

	}

 ?>