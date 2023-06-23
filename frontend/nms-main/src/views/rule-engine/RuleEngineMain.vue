<script setup>
import Pagination from '@/components/Pagination.vue';
import PageHeader from "@/components/PageHeader.vue";
import PageTableCard from "@/components/card/PageTableCard.vue";

</script>

<template>
  <PageHeader title="Rule Engine" :path-list="['자산 관리','규칙 설정']">
    <template v-slot:button-area>
      <CBtnWhite append-icon="mdi-refresh">새로고침</CBtnWhite>
    </template>
  </PageHeader>
  <PageTableCard>
    <template v-slot:filter-area>
      <v-spacer class="border-0"></v-spacer>
      <v-sheet width="150" class="pr-1 bg-transparent">
        <CSelectCompact :items="['전체', 'Colorado', 'Florida', 'Georgia', 'Texas', 'Wyoming']"></CSelectCompact>
      </v-sheet>
      <v-sheet width="250" class="pr-1 bg-transparent">
        <CSearchInputCompact></CSearchInputCompact>
      </v-sheet>
      <CBtnWhiteCompact append-icon="mdi-filter-remove">초기화</CBtnWhiteCompact>
    </template>
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
