/**
 * main.js
 *
 * Bootstraps Vuetify and other plugins then mounts the App`
 */

// Components
import App from './App.vue'

// Composables
import { createApp } from 'vue'

// Plugins
import { registerPlugins } from '@/plugins'
import '@/scss/style.scss';

import VueTablerIcons from 'vue-tabler-icons';
import PerfectScrollbar from 'vue3-perfect-scrollbar';
import CBtnPrimary from "@/components/CBtnPrimary.vue";
import CBtnWhite from "@/components/CBtnWhite.vue";
import CSelectCompact from "@/components/CSelectCompact.vue";
import CSearchInputCompact from "@/components/CSearchInputCompact.vue";
import CBtnWhiteCompact from "@/components/CBtnWhiteCompact.vue";
import PaginationDisplaying from "@/components/PaginationDisplaying.vue";
import VueApexCharts from 'vue3-apexcharts';

const app = createApp(App)
app.use(VueTablerIcons);
app.use(PerfectScrollbar);
app.use(VueApexCharts);
app.component('CBtnPrimary', CBtnPrimary);
app.component('CBtnWhite', CBtnWhite);
app.component('CSelectCompact', CSelectCompact);
app.component('CSearchInputCompact', CSearchInputCompact);
app.component('CBtnWhiteCompact', CBtnWhiteCompact);
app.component('PaginationDisplaying', PaginationDisplaying);

registerPlugins(app)

app.mount('#app')
