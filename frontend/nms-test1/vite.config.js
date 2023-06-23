import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'
import vuetify from 'vite-plugin-vuetify'

const path = require('path')

const CompressionWebpackPlugin = require('compression-webpack-plugin')
// const VueFilenameInjector = require('@d2-projects/vue-filename-injector')
const ThemeColorReplacer = require('webpack-theme-color-replacer')
const forElementUI = require('webpack-theme-color-replacer/forElementUI')
const { set, each, compact, map, keys } = require('lodash')

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [
    vue(),
    // sass(),
    // https://github.com/vuetifyjs/vuetify-loader/tree/next/packages/vite-plugin
    vuetify({
      autoImport: true,
    }),
    // AutoImport({
    //   resolvers: [ElementPlusResolver()],
    // }),
    // Components({
    //   resolvers: [ElementPlusResolver()],
    // }),
  ],
  define: { 'process.env': {} },
  resolve: {
    alias: {
      '@': path.resolve(__dirname, 'src'),
      //'@': path.resolve(__dirname, './src'),
    },
  },
  // SCSS 전역 사용
  css: {
    preprocessorOptions: {
      scss: {
        // additionalData: '@import "@/assets/style/unit/color.scss";',
        additionalData: '@import "@/assets/style/public.scss";'
        //additionalData: '@import "@/assets/style/public.scss";'
        //additionalData: '@use @import "src/assets/style/public.scss";'
        // additionalData: '@use "@/assets/style/public.scss" as *;'
      },
      less: {
        lessOptions: {
          modifyVars: {
            blue: '#2262AB'
          }
        }
      }
    }
  }
  /* remove the need to specify .vue files https://vitejs.dev/config/#resolve-extensions
  resolve: {
    extensions: [
      '.js',
      '.json',
      '.jsx',
      '.mjs',
      '.ts',
      '.tsx',
      '.vue',
    ]
  },
  */
})
