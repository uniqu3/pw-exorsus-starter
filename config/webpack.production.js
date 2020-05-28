const webpack = require('webpack');
const merge = require('webpack-merge');
const OptimizeCssAssetsPlugin = require('optimize-css-assets-webpack-plugin');
const COMMON = require('./webpack.common');

module.exports = (env, argv) => {

    const mode = argv.mode;

    return merge([
        COMMON(mode),
        {
            plugins: [
                new webpack.DefinePlugin({
                    'process.env.NODE_ENV': JSON.stringify(mode)
                }),
                new OptimizeCssAssetsPlugin({
                    cssProcessorOptions: {
                        safe: true,
                        discardComments: {
                            removeAll: true
                        },
                    },
                })
            ]
        }
    ]);
};
