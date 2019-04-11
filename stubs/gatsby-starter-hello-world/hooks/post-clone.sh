# Serve from 0.0.0.0 instead of localhost for docker
sed -i -e 's+gatsby develop+gatsby develop -H 0.0.0.0+g' package.json
