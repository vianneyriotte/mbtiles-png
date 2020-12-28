rm /maps/* -Rf

# Exemple:
# copy "https://api.mapbox.com/styles/v1/mapbox/streets-v11/tiles/256/{z}/{x}/{y}?access_token=<map_box_api_key>" mbtiles:///maps/combleux_19x256.mbtiles -z 0 -Z 19 -b "1.974792 47.893902 2.013030 47.907914"

# Construction de la carte d'une ville à partir de son nom
if [ "$1" == "osm" ] && [ "$2" == "ville" ]; then
    execresult=$(node index.js "$3")
    echo $execresult
    eval "sh create_map.sh osm $execresult"
    exit 0
fi

# Construction de la carte d'une ville à partir de son nom
if [ "$1" == "ville" ]; then
    execresult=$(node index.js "$3")
    echo $execresult
    eval "sh create_map.sh $2 $execresult"
    exit 0
fi

# Construction d'une ville en fournissant toutes les infos
if [ "$1" == "osm" ]; then
./node_modules/.bin/tl copy "http://a.tile.openstreetmap.fr/hot/{z}/{x}/{y}.png" mbtiles:///maps/$2_18.mbtiles -z 0 -Z 18 -b "$3"
else
./node_modules/.bin/tl copy "https://api.mapbox.com/styles/v1/mapbox/streets-v11/tiles/256/{z}/{x}/{y}?access_token=$1" mbtiles:///maps/$2_18x256.mbtiles -z 0 -Z 18 -b "$3"
fi


