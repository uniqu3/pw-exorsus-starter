const webpack = require('webpack');
const merge = require('webpack-merge');
const path = require('path');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');
const OptimizeCssAssetsPlugin = require('optimize-css-assets-webpack-plugin');
const BASE = require('./webpack.base');

//=============================================================
// Plugins
//=============================================================

const plugins = [
    new MiniCssExtractPlugin({
        filename: "css/[name].min.css"
    }),
    new webpack.DllPlugin({
        path: path.join("./[name]-manifest.json"),
        name: "[name]_[hash]"
    })
];

//=============================================================
// Module
//=============================================================

module.exports = (env, argv) => {

    const mode = argv.mode;

    if (mode === 'production') {
        plugins.push(new OptimizeCssAssetsPlugin({
            cssProcessorOptions: {
                safe: true,
                discardComments: {
                    removeAll: true
                },
            },
        }));
    }

    return merge([
        BASE(mode),
        {
            entry: {
                vendor: [
                    './src/js/vendor.js',
                    './src/less/vendor.less'
                ],
                wysiwyg: [
                    './src/less/wysiwyg.less'
                ],
            },
            output: {
                library: "[name]_[hash]"
            },
            plugins,
            resolve: {
                extensions: ['.js', '.json'],
                modules: [
                    path.resolve('./src/vendor'),
                    path.resolve('./node_modules')
                ]
            }
        }
    ]);
};
