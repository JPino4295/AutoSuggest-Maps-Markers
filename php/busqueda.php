<?php
require_once("dbcontroller.php");
$db_handle = new DBController();
if(!empty($_POST["keyword"])) {
$query ="SELECT * FROM provincias WHERE nombre_prov like '%" . $_POST["keyword"] . "%' ORDER BY nombre_prov LIMIT 0,6";
$result = $db_handle->runQuery($query);
if(!empty($result)) {
?>
<ul id="listaProvincias">
<?php
foreach($result as $provincia) {
?>
<li onClick="selectProvincia('<?php echo $provincia["nombre_prov"]; ?>');"><?php echo $provincia["nombre_prov"]; ?></li>
<?php } ?>
</ul>
<?php } } ?>