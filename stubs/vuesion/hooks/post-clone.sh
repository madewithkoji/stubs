# Change the memory limit so we don't kill koji trying to give webpack 2gb
mv /usr/src/app/.koji/resources/webpack.config.js /usr/src/app/.vuesion/webpack.config.js
