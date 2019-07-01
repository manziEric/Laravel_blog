
var mymap = L.map('mapid').setView([
    51.4398847487041,4.9294281005859375], 9);

L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6ImNpejY4NXVycTA2emYycXBndHRqcmZ3N3gifQ.rJcFIG214AriISLbB6B5aw', {
    maxZoom: 18,
    id: 'mapbox.streets'
}).addTo(mymap);

L.marker([51.4398847487041,4.9294281005859375]).addTo(mymap)
    .bindPopup("<b>Baarle hertog</b><br><b>blogstraat 7</b>");