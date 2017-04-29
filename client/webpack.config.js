const webpack = require('webpack')
const path = require('path')

const config = {
  entry: [
    './app',
  ],

  output: {
    filename: '[name].js',
    publicPath: 'http://0.0.0.0:4000/',
  },

  resolve: {
    extensions: ['.js', '.jsx'],
  },
  plugins: [
    new webpack.DefinePlugin({
      'process.env': {
        NODE_ENV: JSON.stringify(process.env.NODE_ENV),
      },
    }),
  ],
  module: {
    loaders: [
      {
        test: /\.jsx?$/,
        loader: 'babel-loader',
        exclude: /node_modules/,
      },
    ],
  },
  devtool: 'inline-source-map',
  devServer: {
    contentBase: 'public/dist',
    host: '0.0.0.0',
    port: 4000,
  },
}

module.exports = config
