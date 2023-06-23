<script setup lang="ts">
import {ChevronRightIcon} from 'vue-tabler-icons';

const props = defineProps({
  title: String,
  breadcrumbs: Array as any,
  icon: String
});
</script>

<template>
  <div class="page-breadcrumb ma-0 pa-0">
    <div class="d-flex justify-space-between">
      <div class="d-flex py-0 align-center">
        <div>
          <v-breadcrumbs :items="breadcrumbs" class="pa-0 ma-0">
            <template v-slot:divider v-if="breadcrumbs">
              <v-icon>mdi-chevron-right</v-icon>
            </template>
            <template v-slot:title="{ item }">
              <span>{{ item.title }}</span>
            </template>
          </v-breadcrumbs>
          <h1>{{ title }}</h1>
        </div>
      </div>
    </div>
  </div>
</template>

<!--<style lang="scss">-->
<!--.page-breadcrumb {-->
<!--  .v-toolbar {-->
<!--    background: transparent;-->
<!--  }-->
<!--}-->
<!--</style>-->
