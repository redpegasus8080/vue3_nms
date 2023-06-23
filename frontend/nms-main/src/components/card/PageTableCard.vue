<script setup>

import Pagination from "@/components/Pagination.vue";
</script>

<template>
  <v-spacer class="pt-2"></v-spacer>
  <v-card elevation="0" class="table-card rounded-0 px-3">
    <v-card-item class="border-0 pa-0 ma-0">
      <div class="d-flex border-0 ma-0 pa-0">
        <slot name="filter-area"></slot>
      </div>
    </v-card-item>
    <v-divider class="mt-2"></v-divider>
    <v-card-text class="ma-0 pa-0">
      <v-table v-if="$slots['table-area']" density="compact" hover="true">
        <slot name="table-area"></slot>
      </v-table>
      <slot v-if="$slots['body-area']" name="body-area"></slot>
    </v-card-text>
    <v-card-actions class="d-flex border-0 ma-0 py-3 px-0">
      <slot name="pagination-area"></slot>
    </v-card-actions>
  </v-card>
</template>

<style scoped lang="scss">

</style>
