
var a = function(pos) {
  var b    = pos.coords.latitude,
      long = pos.coords.longitude,
	  coords = b+'+'+long;
	document.getElementById('google_map').setAttribute('src','https://www.google.com/maps/embed/v1/place?key=AIzaSyB_1OmthHTQgVvd7jXj19tSZjz8j5PeTcI&q=loc:' + coords); 
	   document.getElementById("map").style.display = 'block';

};
		 
		  
   navigator.geolocation.getCurrentPosition(a);

 