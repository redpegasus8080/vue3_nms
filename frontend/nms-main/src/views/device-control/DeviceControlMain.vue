<script setup>
import Pagination from '@/components/Pagination.vue';
import PageHeader from "@/components/PageHeader.vue";
import PageTableCard from "@/components/card/PageTableCard.vue";
import EventTimeline from "@/views/service-status/EventTimeline.vue";
import ThingStatus from "@/views/service-status/ThingStatus.vue";
import DeviceStatus from "@/views/service-status/DeviceStatus.vue";
import CBtnPrimaryCompact from "@/components/CBtnPrimaryCompact.vue";
import DeviceControlPopup from "@/views/device-control/DeviceControlPopup.vue";
import {ref} from "vue";

const deviceControlPopup = ref();
function onDeviceSelected(){
  deviceControlPopup.value.open();
}
</script>

<template>
  <PageHeader title="Device Control" :path-list="['자산 관리','디바이스 제어']">
    <template v-slot:button-area>
      <CBtnWhite append-icon="mdi-refresh">새로고침</CBtnWhite>
    </template>
  </PageHeader>
  <v-row class="px-3 py-5 h-100vh service-status">
    <v-col cols="6">
      <v-row>
        <v-col cols="12">
          <h3 class="title mb-3">Things</h3>
          <v-divider></v-divider>
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
                <td><CBtnPrimaryCompact class="my-1">선택</CBtnPrimaryCompact></td>
              </tr>
              </tbody>
            </template>
            <template v-slot:pagination-area>
              <v-spacer></v-spacer>
              <Pagination
                :pageNum="1"
                :pageCount="10"
                :pageRowCount="10"
                :pageTotalCount="100"
              ></Pagination>
              <v-spacer></v-spacer>
            </template>
          </PageTableCard>
        </v-col>
      </v-row>
    </v-col>
    <v-divider vertical=""></v-divider>
    <v-col cols="6">
      <v-row>
        <v-col cols="12">
          <h3 class="title mb-3">Devices</h3>
          <v-divider></v-divider>
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
                <td><CBtnPrimaryCompact class="my-1" @click="onDeviceSelected">선택</CBtnPrimaryCompact></td>
              </tr>
              </tbody>
            </template>
            <template v-slot:pagination-area>
              <v-spacer></v-spacer>
              <Pagination
                :pageNum="1"
                :pageCount="10"
                :pageRowCount="10"
                :pageTotalCount="100"
              ></Pagination>
              <v-spacer></v-spacer>
            </template>
          </PageTableCard>
        </v-col>
      </v-row>
    </v-col>
  </v-row>
  <DeviceControlPopup ref="deviceControlPopup"></DeviceControlPopup>

</template>

<style scoped lang="scss">

</style>
