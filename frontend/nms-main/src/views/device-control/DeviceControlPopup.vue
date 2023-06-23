<script setup>

import CDialogCard from "@/components/dialog/CDialogCard.vue";
import {ref} from "vue";
import CInputCompact from "@/components/CInputCompact.vue";
import CBtnDialogClose from "@/components/dialog/CBtnDialogClose.vue";
import CBtnDialogPrimary from "@/components/dialog/CBtnDialogPrimary.vue";
import DataResultChart from "@/views/data-explorer/DataResultChart.vue";
import DataResultTable from "@/views/data-explorer/DataResultTable.vue";
import CInputReadonlyCompact from "@/components/CInputReadonlyCompact.vue";
import CBtnPrimaryCompact from "@/components/CBtnPrimaryCompact.vue";
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
      낸난방기 <v-label class="text-lg-subtitle-1">제어하기</v-label>
    </template>
    <template v-slot:subtitle-text>
      한글어린이공원
    </template>
    <template v-slot:body >
      <v-card-item class="dialog-body pa-0" >
        <v-tabs v-model="tab" bg-color="#000000" slider-color="#0F62FE" class="tab-bar pl-8">
          <v-tab value="units" class="text-capitalize">Unit 선택</v-tab>
          <v-tab value="control" class="text-capitalize">제어하기</v-tab>
        </v-tabs>
        <v-window v-model="tab" class="bg-transparent px-8 py-3 pt-10"  style="height: 350px">
          <v-window-item value="units"  transition="fade-transition" reverse-transition="fade-transition">
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
                <th></th>
              </tr>
              </thead>
              <tbody>
              <tr v-for="i in 10">
                <td>1</td>
                <td>123</td>
                <td>456</td>
                <td><CBtnPrimaryCompact class="my-1">선택</CBtnPrimaryCompact></td>
              </tr>
              </tbody>
            </v-table>
          </v-window-item>

          <v-window-item value="control"  transition="fade-transition" reverse-transition="fade-transition">
            <div class="d-flex border-0 ma-0 pa-0 pb-1">
              <h3 class="title mb-3">운전모드</h3>
              <v-spacer></v-spacer>
            </div>

            <v-table fixed-header density="compact" hover="true" >
              <thead>
              <tr>
                <th class="text-left">
                  현재값
                </th>
                <th class="text-left">
                  제어값
                </th>
                <th class="text-left">
                </th>
              </tr>
              </thead>
              <tbody>
              <tr >
                <td>123</td>
                <td><CInputCompact></CInputCompact></td>
                <td><CBtnPrimaryCompact class="my-1">전송</CBtnPrimaryCompact></td>
              </tr>
              </tbody>
            </v-table>
          </v-window-item>

        </v-window>
      </v-card-item>
    </template>
    <template v-slot:action>
      <v-row class="pa-0 ma-0">
        <v-col cols="6" class="pa-0 ma-0">
        </v-col>
        <v-col cols="6" class="pa-0 ma-0">
          <CBtnDialogClose @click="onClose"></CBtnDialogClose>
        </v-col>
      </v-row>
    </template>
  </CDialogCard>

</template>

<style scoped lang="scss">

</style>
