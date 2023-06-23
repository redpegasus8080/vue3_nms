import { createApp } from 'vue'
import ElementPlus from 'element-plus'
import 'element-plus/dist/index.css'
import App from './App.vue'
import vuetify from './plugins/vuetify'
import { loadFonts } from './plugins/webfontloader'
import router from './router'

import dayjs from 'dayjs';
import Vue3Dayjs from 'vue3-dayjs-plugin';
import 'dayjs/locale/ko'; // 필요한 로케일을 가져오세요

loadFonts()

dayjs.locale('ko');
createApp(App).use(router)
  .use(vuetify)
  .use(ElementPlus)
  .use(Vue3Dayjs, { dayjs })
  .mount('#app')
