<script setup>
import {getCurrentInstance, computed, ref, watch, watchEffect} from "vue";
import DataResultTable from "@/views/data-explorer/DataResultTable.vue";
import DataResultChart from "@/views/data-explorer/DataResultChart.vue";

const {proxy} = getCurrentInstance();
const cardHeight = computed(() => {
  return proxy.$vuetify.display.height - 220;
});

const tab = ref('table');

</script>

<template>
  <VCard elevation="0" :height="cardHeight" rounded="0">
    <v-tabs v-model="tab" bg-color="#000000" slider-color="#0F62FE" class="tab-bar" align-tabs="center">
      <v-tab value="table" class="text-capitalize" width="50%">Table</v-tab>
      <v-tab value="chart" class="text-capitalize" width="50%">Chart</v-tab>
    </v-tabs>
    <v-window v-model="tab" class="bg-white h-100vh">
      <v-window-item value="table">
        <DataResultTable></DataResultTable>
      </v-window-item>
      <v-window-item value="chart">
        <DataResultChart></DataResultChart>
      </v-window-item>
    </v-window>
  </VCard>

</template>

<style scoped lang="scss">

</style>
