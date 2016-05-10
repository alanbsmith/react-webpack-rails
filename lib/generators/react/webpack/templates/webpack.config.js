var webpack = require('webpack');
var path = require('path');

module.exports = {
  entry: [
    './client/'
  ],
  module: {
    loaders: [
      { test: /\.js?$/, loader: 'babel', exclude: /node_modules/ }
    ]
  },
  resolve: {
    extensions: ['', '.js']
  },
  output: {
    path: path.join(__dirname, '/app/assets/webpack/'),
    publicPath: '/',
    filename: 'bundle.js'
  },
  plugins: [
  ]
};
