<script setup>

import CDialogCard from "@/components/dialog/CDialogCard.vue";
import {ref} from "vue";
import CInputCompact from "@/components/CInputCompact.vue";
import CBtnDialogClose from "@/components/dialog/CBtnDialogClose.vue";
import CBtnDialogPrimary from "@/components/dialog/CBtnDialogPrimary.vue";
import DataResultChart from "@/views/data-explorer/DataResultChart.vue";
import DataResultTable from "@/views/data-explorer/DataResultTable.vue";
import CInputReadonlyCompact from "@/components/CInputReadonlyCompact.vue";
const dialogShow = ref(false);
const tab = ref('details');

function open() {
  dialogShow.value = true;
}

function onClose() {
  dialogShow.value = false;
}

defineExpose({
  open
})
</script>

<template>
  <CDialogCard v-model="dialogShow" @onClose="onClose">
    <template v-slot:title-text>
      낸난방기
    </template>
    <template v-slot:subtitle-text>
      Device Details
    </template>
    <template v-slot:body >
      <v-card-item class="dialog-body pa-0" >
        <v-tabs v-model="tab" bg-color="#000000" slider-color="#0F62FE" class="tab-bar pl-8">
          <v-tab value="details" class="text-capitalize">Details</v-tab>
          <v-tab value="units" class="text-capitalize">Units</v-tab>
          <v-tab value="attributes" class="text-capitalize">Attributes</v-tab>
          <v-tab value="thing" class="text-capitalize">Thing</v-tab>
        </v-tabs>
        <v-window v-model="tab" class="bg-transparent px-8 py-3 pt-10"  style="height: 350px">
          <v-window-item value="details"  transition="fade-transition" reverse-transition="fade-transition">
            <v-row class="align-center ma-0 pa-0 pt-3">
              <v-col cols="12" sm="2" class="ma-0 pa-0">
                <v-label class="dialog-form-label">Device Id</v-label>
              </v-col>
              <v-col cols="12" sm="10" class="ma-0 pa-0">
                <v-sheet width="100%" class="bg-transparent">
                  <CInputReadonlyCompact>한글어린이공원</CInputReadonlyCompact>
                </v-sheet>
              </v-col>
            </v-row>
            <v-row class="align-center ma-0 pa-0 pt-3">
              <v-col cols="12" sm="2" class="ma-0 pa-0">
                <v-label class="dialog-form-label">Device Name</v-label>
              </v-col>
              <v-col cols="12" sm="10" class="ma-0 pa-0">
                <v-sheet width="100%" class="bg-transparent">
                  <CInputReadonlyCompact>한글어린이공원</CInputReadonlyCompact>
                </v-sheet>
              </v-col>
            </v-row>
            <v-row class="align-center ma-0 pa-0 pt-3">
              <v-col cols="12" sm="2" class="ma-0 pa-0">
                <v-label class="dialog-form-label">제조사</v-label>
              </v-col>
              <v-col cols="12" sm="10" class="ma-0 pa-0">
                <v-sheet width="100%" class="bg-transparent">
                  <CInputReadonlyCompact>한글어린이공원</CInputReadonlyCompact>
                </v-sheet>
              </v-col>
            </v-row>
            <v-row class="align-center ma-0 pa-0 pt-3">
              <v-col cols="12" sm="2" class="ma-0 pa-0">
                <v-label class="dialog-form-label">대표 이미지</v-label>
              </v-col>
              <v-col cols="12" sm="10" class="ma-0 pa-0">
                <v-sheet width="100%" class="bg-transparent">
                  <CInputReadonlyCompact>한글어린이공원</CInputReadonlyCompact>
                </v-sheet>
              </v-col>
            </v-row>
          </v-window-item>
          <v-window-item value="units"  transition="fade-transition" reverse-transition="fade-transition">
            <div class="d-flex border-0 ma-0 pa-0 pb-1">
              <v-spacer></v-spacer>
              <CBtnPrimary append-icon="mdi-plus">Unit 추가</CBtnPrimary>
            </div>

            <v-table fixed-header density="compact" hover="true" height="300px">
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
            </v-table>
          </v-window-item>
          <v-window-item value="attributes"  transition="fade-transition" reverse-transition="fade-transition">
            <div class="d-flex border-0 ma-0 pa-0 pb-1">
              <v-spacer></v-spacer>
              <CBtnPrimary append-icon="mdi-plus">Attribute 추가</CBtnPrimary>
            </div>

            <v-table fixed-header density="compact" hover="true" height="300px">
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
            </v-table>
          </v-window-item>
          <v-window-item value="devices"  transition="fade-transition" reverse-transition="fade-transition">
            <div class="d-flex border-0 ma-0 pa-0 pb-1">
              <v-spacer></v-spacer>
              <CBtnPrimary append-icon="mdi-plus">Device 추가</CBtnPrimary>
            </div>

            <v-table fixed-header density="compact" hover="true" height="300px">
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
            </v-table>
          </v-window-item>
          <v-window-item value="thing"  transition="fade-transition" reverse-transition="fade-transition">
            <div class="d-flex border-0 ma-0 pa-0 pb-1">
              <v-spacer></v-spacer>
              <CBtnPrimary append-icon="mdi-swap-horizontal">Thing 변경하기</CBtnPrimary>
            </div>
            <v-row class="align-center ma-0 pa-0 pt-3">
              <v-col cols="12" sm="2" class="ma-0 pa-0">
                <v-label class="dialog-form-label">시설명</v-label>
              </v-col>
              <v-col cols="12" sm="10" class="ma-0 pa-0">
                <v-sheet width="100%" class="bg-transparent">
                  <CInputReadonlyCompact></CInputReadonlyCompact>
                </v-sheet>
              </v-col>
            </v-row>
            <v-row class="align-center ma-0 pa-0 pt-3">
              <v-col cols="12" sm="2" class="ma-0 pa-0">
                <v-label class="dialog-form-label">시설 아이디</v-label>
              </v-col>
              <v-col cols="12" sm="10" class="ma-0 pa-0">
                <v-sheet width="100%" class="bg-transparent">
                  <CInputReadonlyCompact></CInputReadonlyCompact>
                </v-sheet>
              </v-col>
            </v-row>
            <v-row class="align-center ma-0 pa-0 pt-3">
              <v-col cols="12" sm="2" class="ma-0 pa-0">
                <v-label class="dialog-form-label">위도</v-label>
              </v-col>
              <v-col cols="12" sm="10" class="ma-0 pa-0">
                <v-sheet width="100%" class="bg-transparent">
                  <CInputReadonlyCompact></CInputReadonlyCompact>
                </v-sheet>
              </v-col>
            </v-row>
            <v-row class="align-center ma-0 pa-0 pt-3">
              <v-col cols="12" sm="2" class="ma-0 pa-0">
                <v-label class="dialog-form-label">경도</v-label>
              </v-col>
              <v-col cols="12" sm="10" class="ma-0 pa-0">
                <v-sheet width="100%" class="bg-transparent">
                  <CInputReadonlyCompact></CInputReadonlyCompact>
                </v-sheet>
              </v-col>
            </v-row>
            <v-row class="align-center ma-0 pa-0 pt-3">
              <v-col cols="12" sm="2" class="ma-0 pa-0">
                <v-label class="dialog-form-label">주소</v-label>
              </v-col>
              <v-col cols="12" sm="10" class="ma-0 pa-0">
                <v-sheet width="100%" class="bg-transparent">
                  <CInputReadonlyCompact></CInputReadonlyCompact>
                </v-sheet>
              </v-col>
            </v-row>
          </v-window-item>
        </v-window>
      </v-card-item>
    </template>
    <template v-slot:action>
      <v-row class="pa-0 ma-0">
        <v-col cols="6" class="pa-0 ma-0">
          <CBtnDialogClose @click="onClose"></CBtnDialogClose>
        </v-col>
        <v-col cols="6" class="pa-0 ma-0">
          <CBtnDialogPrimary>저장하기</CBtnDialogPrimary>
        </v-col>
      </v-row>
    </template>
  </CDialogCard>

</template>

<style scoped lang="scss">

</style>
