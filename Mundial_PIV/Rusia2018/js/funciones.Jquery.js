function Inicio(){

	urlInicio = "./php/inicio/index.php";
	$.post(urlInicio, function(data) {
		$("#contenido").html(data);
	});

	$("#inicio a").click(function(e){
		e.preventDefault();
		url = $(this).attr("href");
		
		console.log('entro al metodo de inicio');

		$.post(url, function(data) {
			$("#contenido").html(data);
		});
	});

	$("#grupos a").click(function(e){
		e.preventDefault();
		url = $(this).attr("href");
		
		console.log('entro al metodo de grupos');

		$.post(url, function(data) {
			$("#contenido").html(data);
		});
	});


	$("#sedes a").click(function(e){
		e.preventDefault();
		url = $(this).attr("href");
		
		console.log('entro al metodo de sedes');

		$.post(url, function(data) {
			$("#contenido").html(data);
		});
	});


	$("#contenido").on("click", "#empresas", function(e){
		console.log("Entro al metodo de empresas");
		var codigo = $(this).attr("codigo");
		console.log(codigo);

        $( "#contenido" ).load("./php/empresas/index.php", {codigo: '9' });
       

		console.log("salio del metodooooo ");

	});

	$("#contenido").on("click", "#guardarEmpresa", function(e){
		console.log("Entro al metodo de empresas");

		var empr_codi = $("#empr_codi").attr("value"); 
		var empr_nit = $("#empr_nit").attr("value");
		var empr_nomb = $("#empr_nomb").attr("value"); 
		var empr_tele = $("#empr_tele").attr("value");
		var empr_dire = $("#empr_dire").attr("value"); 
		var muni_codi = $("#muni_codi").attr("value");

		console.log(empr_codi);

	});

	$("#contenido").on("click", "#empleados", function(e){
		console.log("Entro al metodo de empleados");
		var codigo = $(this).attr("codigo");
		console.log(codigo);

        $( "#contenido" ).load("./php/empleados/index.php", {codigo: '1' });
       

		console.log("salio del metodooooo ");

	});
}