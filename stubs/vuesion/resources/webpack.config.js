const ForkTsCheckerWebpackPlugin = require('fork-ts-checker-webpack-plugin');

/**
 * modify webpack config
 * @param {webpack.Configuration} config - webpack config
 * @param {string} target - build target, can  be "client" or "server"
 * @returns {*}
 */
module.exports = (config) => {
  config.performance = {
    hints: 'warning',
    maxAssetSize: 267000,
    maxEntrypointSize: 318000,
  };

  if (process.env.NODE_ENV === 'development') {
    config.plugins[2] = new ForkTsCheckerWebpackPlugin({
      memoryLimit: 1024,
      vue: true,
    });
  }

  return config;
};
