const fetch = require('sync-fetch');
var querystring = require('querystring');

const response = fetch(
	'https://nominatim.openstreetmap.org/search.php?city=' +
		querystring.escape(process.argv[2]) +
		'&polygon_geojson=1&format=jsonv2'
);
const json = response.json();

console.log(json);
