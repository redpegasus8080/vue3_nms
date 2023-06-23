/**
 * plugins/vuetify.js
 *
 * Framework documentation: https://vuetifyjs.com`
 */

// Styles
import '@mdi/font/css/materialdesignicons.css'
import * as components from 'vuetify/components';
import * as directives from 'vuetify/directives';
import 'vuetify/styles';
// import '@/scss/style.scss';
// import { aliases, fa } from 'vuetify/iconsets/fa'
// import { mdi } from 'vuetify/iconsets/mdi'

// Composables
import { createVuetify } from 'vuetify'

// https://vuetifyjs.com/en/introduction/why-vuetify/#feature-guides
export default createVuetify({
  // components,
  // directives,
  // icons: {
  //   defaultSet: 'mdi'
  // },
  theme: {
    themes: {
      light: {
        colors: {
          background: '#F0F0F0',
          primary: '#0F62FE',
          secondary: '#393939',

        },
      },
    },
  },
})
