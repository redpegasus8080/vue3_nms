<template>
  <v-app>
    <Sidebar></Sidebar>
  </v-app>
</template>

<script>
import { reactive, computed } from 'vue';
import Sidebar from '../layouts/full/vertical-sidebar/VerticalSidebar.vue';

export default {
  name: 'my-navi',
  components: {
    Sidebar
  },
  props: {
  },
  setup(props, { emit }) {
    return {
    };
  },
};
</script>
