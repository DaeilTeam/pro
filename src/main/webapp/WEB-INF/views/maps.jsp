<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="https://maps.google.com/maps/api/js?v=3.exp&region=KR"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&libraries=weather"></script>

<meta name="google-signin-client_id" content="516768670649-csqp0komrhs8q8iocbtf9c2hmulfeqq8.apps.googleusercontent.com"></meta>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script type="text/javascript">
function google_map_script(){
    wp_enqueue_script('google-map-api', 'https://maps.google.com/maps/api/js?v=3.exp&region=KR', array(), false, true);
}
add_action('wp_enqueue_scripts', 'google_map_script');

google.maps.event.addDomListener(window, 'load', initialize);

function initialize(){
    if($("#google_map").length) {
 
    var mapOptions = {
        center : new google.maps.LatLng(37.5651, 126.98955)
    };
 
    var map = new google.maps.Map(document.getElementById('google_map'), mapOptions);
 
    var image = 'http://cheolguso.com/img/iconimg.png';
	
    var marker = new google.maps.Marker({
        map : map,
        position : map.getCenter(),
        icon : image
    });
 
    var weatherLayer = new google.maps.weather.WeatherLayer({
        temperatureUnits: google.maps.weather.TemperatureUnit.CELSIUS
    });
 
    weatherLayer.setMap(map);
    var cloudLayer = new google.maps.weather.CloudLayer();
    cloudLayer.setMap(map);
 
    }
}
</script>
</head>
<body>

</body>
</html>