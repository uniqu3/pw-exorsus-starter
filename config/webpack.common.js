const webpack = require('webpack');
const merge = require('webpack-merge');
const path = require('path');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');
const CopyWebpackPlugin = require('copy-webpack-plugin');
const PKG = require('../package.json');
const BASE = require('./webpack.base');

module.exports = mode => {
    return merge([
        BASE(mode),
        {
            context: path.resolve('./src'),
            entry: {
                app: [
                    //'core-js',
                    './js/app.js',
                    './less/app.less',
                ],
            },
            plugins: [
                new MiniCssExtractPlugin({
                    filename: 'css/[name].min.css',
                }),
                new webpack.DllReferencePlugin({
                    context: '.',
                    manifest: require('../vendor-manifest.json'),
                }),
                new webpack.DefinePlugin({
                    __DEV__: mode !== 'production',
                    __PROD__: mode === 'production',
                    __VERSION__: JSON.stringify(PKG.version),
                }),
                new CopyWebpackPlugin([
                    {
                        from: 'icons',
                        to: 'icons/[path][name].[ext]',
                        toType: 'template',
                    },
                    {
                        from: 'images',
                        to: 'images/[path][name].[ext]',
                        toType: 'template',
                    },
                    {
                        from: 'css/images',
                        to: 'css/images/[path][name].[ext]',
                        toType: 'template',
                    },
                    {
                        from: 'img',
                        to: 'img/[path][name].[ext]',
                        toType: 'template',
                    },
                    {
                        from: 'svg',
                        to: 'svg/[path][name].[ext]',
                        toType: 'template',
                    },
                    {
                        from: 'fonts',
                        to: 'fonts/[path][name].[ext]',
                        toType: 'template',
                    },
                ]),
            ],
        },
    ]);
};
