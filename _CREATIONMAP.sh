cd mbtiles-png && npm start <api_key> "$1"

cd ..

cd mbtiles-png && docker run --name tl-sh -it --rm -v $(pwd)/maps:/maps --entrypoint="" tl:01 sh -c "node get_geojson.js ""$1"" > /maps/mapinfos.json"

cd ..

cp ./mbtiles-png/maps/*.mbtiles /home/docker-flyers/data/resources/maps

cat ./mbtiles-png/maps/mapinfos.json