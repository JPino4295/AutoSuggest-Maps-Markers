
$(document).ready(function(){
	$("#resultado").hide();
	$("#busqueda").keyup(function(){
		$.ajax({
		type: "POST",
		url: "./php/busqueda.php",
		data:'keyword='+$(this).val(),
		beforeSend: function(){
			$("#busqueda").css("background","#FFF url(./img/LoaderIcon.gif) no-repeat 165px");
		},
		success: function(data){
			$("#sugerencias").show();
			$("#sugerencias").html(data);
			$("#busqueda").css("background","#FFF");
		}
		});
	});
});

function selectProvincia(val) {
$("#busqueda").val(val);
$("#sugerencias").hide();
}

$(document).on

function mostrar(){
	$.ajax({
		type: "POST",
		url: "./php/resultado.php",
		data:'provincia='+$("#busqueda").val(),
		success: function(data){
			$("#resultado").show();
			$("#resultado").html(data);
		}
	});
}
