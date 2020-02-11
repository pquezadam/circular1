// config/webpack/environment.js
const { environment } = require('@rails/webpacker')
const webpack = require('webpack')
// Add an additional plugin of your choosing : ProvidePlugin
environment.plugins.prepend('Provide', new webpack.ProvidePlugin({
    $: 'jquery',
    JQuery: 'jquery',
    jquery: 'jquery',
    'window.Tether': "tether",
    Popper: ['popper.js', 'default'], // for Bootstrap 4
  })
)
module.exports = environment















//import { environment } from '@rails/webpacker'

//import { ProvidePlugin } from 'webpack'

//environment.plugins.prepend('Provide',
  //new ProvidePlugin({
    //$: 'jquery/dist/jquery',
    //jQuery: 'jquery/dist/jquery',
    //Popper: ['popper.js', 'default']
  //})
//)

//export default environment
