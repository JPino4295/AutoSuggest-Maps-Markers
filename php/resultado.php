<?php
require_once("dbcontroller.php");
$db = new DBController();

if(!empty($_POST["provincia"])){
    $sqlId = "SELECT id_prov FROM provincias WHERE nombre_prov = '".$_POST["provincia"]."'";
    $runId = $db -> runQuery($sqlId);
    if (!empty($runId)){
        foreach ($runId as $idResultado){
            $id = $idResultado["id_prov"];
            $sql = "SELECT id_ciud, nombre_ciud FROM ciudades WHERE FK_prov = ".$id;
            $result = $db -> runQuery($sql);

            ?>
            <div id="map" name="map" class="map"></div>
            <script>

                function initMap(){
                    var country = "<?php echo $_POST["provincia"]?> España"
                    var geocoder = new google.maps.Geocoder();
                    var location = country.toLowerCase();
                    var map = new google.maps.Map(document.getElementById('map'), {
                        center: new google.maps.LatLng(-33.863276, 151.207977),
                        zoom: 10
                    });
                    
                    geocoder.geocode ({'address':location}, function(result, status){
                            if (status == google.maps.GeocoderStatus.OK){
                                map.setCenter(result[0].geometry.location);
                            }else{
                                alert();
                            }
                    });
                    // a
                    <?php
                    foreach ($result as $resultado){
                ?>
                        var ciudad = "<?php echo $resultado["nombre_ciud"]?> España"
                        var geocoder = new google.maps.Geocoder();
                        var location = ciudad.toLowerCase();
                        geocoder.geocode ({'address':location}, function(result, status){
                            if (status == google.maps.GeocoderStatus.OK){
                                 marker = new google.maps.Marker({
                                    position: (result[0].geometry.location),
                                    map: map
                                })
                            }else{
                                alert();
                            }
                    });
                   
                <?php
                    }
                ?>          
                // a
                }
                initMap();

            </script>  
            
            <?php

           
        }
    }
}else{
    ?>
    <p class="error">No hay ningun resultado disponible</p>
    <?php
}
   


?>
