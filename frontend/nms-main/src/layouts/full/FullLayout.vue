<script setup>
import {RouterView} from 'vue-router';
import VerticalSidebarVue from './vertical-sidebar/VerticalSidebar.vue';
import VerticalHeaderVue from './vertical-header/VerticalHeader.vue';
</script>

<template>
  <v-app>
    <VerticalHeaderVue/>
    <VerticalSidebarVue/>
    <v-main>
      <v-container fluid="" class="page-wrapper pa-0 ma-0">
        <div>
          <RouterView/>
        </div>
      </v-container>
    </v-main>
  </v-app>
</template>
