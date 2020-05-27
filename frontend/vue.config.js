const path = require('path');
const EncodingPlugin = require('webpack-encoding-plugin');
const LodashModuleReplacementPlugin = require('lodash-webpack-plugin');
const CopyPlugin = require('copy-webpack-plugin');
const webpack = require('webpack');

module.exports = {
    outputDir: 'target/dist',
    assetsDir: 'assets',
    configureWebpack: {
        resolve: {
            alias: {
                'assets': path.resolve(__dirname, 'src/assets')
            }
        },
        plugins: [
            new EncodingPlugin({
                encoding:  'utf-8',
            }),
            new LodashModuleReplacementPlugin({
                shorthands: true,
                paths: true
            }),
            new webpack.NormalModuleReplacementPlugin(/element-ui[/\\]lib[|\\]locale[/\\]lang[/\\]zh-CN/, 'element-ui/lib/locale/lang/ru'),
            new CopyPlugin([
                { from: 'src/locale/', to:  'locale/' }
            ]),

        ]
    },
    pluginOptions: {
        i18n: {
            locale: "ru",
            fallbackLocale: "ru",
            localeDir: 'locales',
            enableInSFC: true
        }
    }
}