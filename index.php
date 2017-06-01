<html>
<head>
<TITLE>Busqueda Autosuggest</TITLE>
<head>
<link rel="stylesheet" href="./css/style.css">
 <meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-2.1.1.min.js" type="text/javascript"></script>
<script defer type="text/javascript" src="//maps.googleapis.com/maps/api/js?key=AIzaSyCwQLDZfCl19mcRC3bW-qH4fChSJIJ-WKs"></script>
<script src="./js/autocomplete.js"></script>
</head>
<body>
	<div class="header">
		<h1 id="title">Búsqueda con AutoSuggest</h1>
	</div>
	<div class="form" ng-app="">
		<p class="parrafoProvincia">Inserta el nombre de la provincia</p>
		<input type="text" id="busqueda" placeholder="Provincia" ng-model="provincia">
		<input type="button" value="Enviar" id="enviar" onClick="mostrar();">
		<div id="sugerencias" class="divSugerencias"></div>
		<div id="resultado" class="resultado"></div>
	</div>
	
</body>
</html>