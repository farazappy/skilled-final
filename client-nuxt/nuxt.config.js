import VuetifyLoaderPlugin from 'vuetify-loader/lib/plugin'
import pkg from './package'

export default {
  mode: 'universal',

  /*
  ** Headers of the page
  */
  head: {
    title: pkg.name,
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
      { hid: 'description', name: 'description', content: pkg.description }
    ],
    link: [
      { rel: 'icon', type: 'image/x-icon', href: '/favicon.ico' },
      {
        rel: 'stylesheet',
        href:
          'https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons'
      }
    ]
  },

  /*
  ** Customize the progress-bar color
  */
  loading: { color: '#fff' },

  /*
  ** Global CSS
  */
  css: [
    '~/assets/style/index.scss'
  ],

  /*
  ** Plugins to load before mounting the App
  */
  plugins: [
    '~/plugins/vuetify',
    { src: '~/plugins/chartist', mode: 'client' },

    './plugins/mixins/user',
    './plugins/mixins/notification',
  ],

  /*
  ** Nuxt.js modules
  */
  modules: [
    // Doc: https://axios.nuxtjs.org/usage
    '@nuxtjs/axios',
    '@nuxtjs/auth'
  ],
  /*
  ** Axios module configuration
  */
  axios: {
    // See https://github.com/nuxt-community/axios-module#options
    // baseURL: 'http://192.168.0.5:8000/api'
    baseURL: 'http://127.0.0.1:8000/api'
  },
  router: {
    middleware: ['auth']
  },
  auth: {
    redirect: {
      login: '/',
      logout: '/',
      home: '/dashboard',
      // callback: '/login'
    },
    strategies: {
      local: {
        endpoints: {
          login: { url: 'auth/login/', method: 'post', propertyName: 'success.user.token' },
          logout: { url: 'auth/logout/', method: 'post' },
          user: { url: 'me', method: 'get', propertyName: false }
        },
      }
    }
    // Options
  },
  /*
  ** Build configuration
  */
  build: {
    transpile: ['vuetify/lib'],
    plugins: [new VuetifyLoaderPlugin()],
    loaders: {

    },
    /*
    ** You can extend webpack config here
    */
    extend (config, ctx) {
    }
  }
}
