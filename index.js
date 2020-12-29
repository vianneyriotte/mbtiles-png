const fetch = require('sync-fetch');
var querystring = require('querystring');

const response = fetch(
	'https://nominatim.openstreetmap.org/search.php?city=' +
		querystring.escape(process.argv[2]) +
		'&polygon_geojson=1&format=jsonv2'
);
const json = response.json();

console.log(
	`"${process.argv[2].split(' ').join('_')}" "${'' +
		json[0].boundingbox[2] +
		' ' +
		json[0].boundingbox[0] +
		' ' +
		json[0].boundingbox[3] +
		' ' +
		json[0].boundingbox[1]}"`
);
