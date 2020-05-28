const webpack = require('webpack');
const merge = require('webpack-merge');
const os = require('os');
const COMMON = require('./webpack.common');
const CONFIG = require('../package.json').config;

module.exports = (env, argv) => {

    const mode = argv.mode;

    return merge([
        COMMON(mode),
        {
            plugins: [
                new webpack.DefinePlugin({
                    'process.env.NODE_ENV': JSON.stringify(mode)
                }),
            ],
            devServer: {
                host: os.hostname(),
                port: 8080,
                contentBase: CONFIG.path_public, // should point to the processwire public folder
                proxy: {
                    '*': 'http://127.0.0.1' // Redirect everything to actual webserver
                },
                disableHostCheck: true,
                hot: true
            }
        }
    ]);
};
