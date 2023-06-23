<script setup>
import Pagination from '@/components/Pagination.vue';
import PageHeader from "@/components/PageHeader.vue";
import PageTableCard from "@/components/card/PageTableCard.vue";
import CBtnIconViewCompact from "@/components/CBtnIconViewCompact.vue";
import CBtnIconDeleteCompact from "@/components/CBtnIconDeleteCompact.vue";
import CBtnIconEditCompact from "@/components/CBtnIconEditCompact.vue";
import CBtnPrimary from "@/components/CBtnPrimary.vue";
import ServiceUserRoleAddPopup from "@/views/service-user-role/ServiceUserRoleAddPopup.vue";
import {ref} from "vue";

const serviceUserRoleAddPopup = ref();
function onRoleAdd(){
  serviceUserRoleAddPopup.value.open();
}
</script>

<template>
  <PageHeader title="User Role Management" :path-list="['사용자 관리','사용자 역활/권한']">
    <template v-slot:button-area>
      <CBtnPrimary append-icon="mdi-plus" @click="onRoleAdd" >역활/권한 등록</CBtnPrimary>
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
        <th class="text-left">
        </th>
      </tr>
      </thead>
      <tbody>
      <tr v-for="i in 10">
        <td>123</td>
        <td>456</td>
        <td>789</td>
        <td>
          <CBtnIconViewCompact></CBtnIconViewCompact>
          <CBtnIconDeleteCompact></CBtnIconDeleteCompact>
          <CBtnIconEditCompact></CBtnIconEditCompact>
        </td>
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
  <ServiceUserRoleAddPopup ref="serviceUserRoleAddPopup"></ServiceUserRoleAddPopup>
</template>

<style scoped lang="scss">

</style>
