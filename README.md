<!-- npm start copy "https://api.mapbox.com/styles/v1/mapbox/streets-v11/tiles/256/{z}/{x}/{y}?access_token=<map_box_api_key>" mbtiles:///maps/combleux_19x256.mbtiles -z 0 -Z 19 -b "1.974792 47.893902 2.013030 47.907914" -->


## Contruire l'image
```
npm run build-img
```

## Lancer la création de la map sur MAPBOX en ne fournissant que le nom de la ville et la clé MAPBOX

```
npm start "<mapbox_api_key>" "<nom_ville>"
```
> Attention à ne pas mettre d'accents

Exemple:
```sh
npm start "pk.xxxx.yyyy" "la ferte saint aubin"
```

## Lancer la création de la map sur OSM en ne fournissant que le nom de la ville

```
npm run start-ville-osm "<nom_ville>"
```
> Attention à ne pas mettre d'accents

Exemple:
```sh
npm run start-ville-osm "la ferte saint aubin"
```

## Exécuter le conteneur correspondant à l'image et accéder au sh
```
npm run sh
```