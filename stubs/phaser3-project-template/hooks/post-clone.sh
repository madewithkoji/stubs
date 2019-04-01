# Serve webpack from 0.0.0.0 instead of localhost for docker
sed -i -e 's+webpack-dev-server --config webpack/base.js --open+webpack-dev-server --config webpack/base.js --host 0.0.0.0+g' package.json