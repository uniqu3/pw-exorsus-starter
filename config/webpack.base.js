const path = require('path');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');
const PKG = require('../package.json');
const CONFIG = PKG.config;

module.exports = mode => {

    return {
        output: {
            filename: "js/[name].min.js",
            path: path.resolve(CONFIG.path_assets),
            publicPath: path.join(path.basename(process.cwd()), CONFIG.path_assets)
        },
        module: {
            rules: [{
                test: /\.jsx?$/,
                exclude: /node_modules/,
                use: ['babel-loader']
            },
            {
                test: /\.less$/,
                exclude: /node_modules/,
                use: ['css-hot-loader'].concat({
                    loader: MiniCssExtractPlugin.loader,
                    options: {
                        hmr: mode === 'development',
                    }
                }, {
                    loader: 'css-loader',
                    options: {
                        importLoaders: 1,
                        sourceMap: true,
                        url: false
                    }
                }, {
                    loader: 'postcss-loader',
                    options: {
                        plugins: () => require('autoprefixer'),
                        sourceMap: 'inline'
                    }
                },
                'less-loader'
                )
            },
            {
                test: /\.css$/,
                exclude: /node_modules/,
                use: ['css-hot-loader'].concat({
                    loader: MiniCssExtractPlugin.loader,
                    options: {
                        // only enable hot in development
                        hmr: mode === 'development',
                        // if hmr does not work, this is a forceful method.
                        reloadAll: true,
                    }
                }, {
                    loader: 'css-loader',
                    options: {
                        importLoaders: 1,
                        sourceMap: true,
                        url: true
                    }
                }, {
                    loader: 'postcss-loader',
                    options: {
                        plugins: () => require('autoprefixer'),
                        sourceMap: 'inline'
                    }
                })
            },
            {
                test: /\.(jpe?g|png|gif|svg)$/,
                exclude: '/fonts/',
                loader: 'file-loader',
                options: {
                    name: "[path][name].[ext]",
                    publicPath: '../'
                },
            },
            {
                test: /\.(woff(2)?|ttf|eot|svg)(\?v=\d+\.\d+\.\d+)?$/,
                exclude: ['/images/', '/svg/'],
                loader: 'file-loader',
                options: {
                    name: "fonts/[name].[ext]",
                    publicPath: '../'
                },
            }
            ]
        },
        resolve: {
            moduleExtensions: ['-loader'],
            extensions: ['.js', '.jsx', '.json', '.css', '.less'],
            modules: [
                path.join('./src/js'),
                path.join('./node_modules')
            ]
        }
    };
};
