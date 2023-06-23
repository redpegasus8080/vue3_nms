<script setup>
import {getCurrentInstance, computed, ref, watch, watchEffect} from "vue";
import PageTableCard from "@/components/card/PageTableCard.vue";
import Pagination from "@/components/Pagination.vue";

const {proxy} = getCurrentInstance();
const cardHeight = computed(() => {
  return proxy.$vuetify.display.height - 220;
});

const tab = ref('table');

</script>

<template>
  <PageTableCard>
    <template v-slot:filter-area></template>
    <template v-slot:table-area>
      <thead>
      <tr>
        <th class="text-left">
          #
        </th>
        <th class="text-left">
          aaaaa
        </th>
        <th class="text-left">
          bbbbb
        </th>
      </tr>
      </thead>
      <tbody>
      <tr v-for="i in 10">
        <td>123</td>
        <td>456</td>
        <td>789</td>
      </tr>
      </tbody>
    </template>
    <template v-slot:pagination-area>
      <PaginationDisplaying firstNum="1" lastNum="10" totalNum="12345"></PaginationDisplaying>
      <v-spacer></v-spacer>
      <v-sheet width="100" class="pr-1 bg-transparent">
        <CSelectCompact
          :items="['10', '30', '50', '70', '100']"
        ></CSelectCompact>
      </v-sheet>
      <Pagination
        :pageNum="1"
        :pageCount="10"
        :pageRowCount="10"
        :pageTotalCount="100"
      ></Pagination>
    </template>
  </PageTableCard>

</template>

<style scoped lang="scss">

</style>
