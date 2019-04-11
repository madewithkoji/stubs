# Serve from 0.0.0.0 instead of localhost for docker
sed -i -e 's+gatbsy build+Bgatsby build -H 0.0.0.0+g' package.json
