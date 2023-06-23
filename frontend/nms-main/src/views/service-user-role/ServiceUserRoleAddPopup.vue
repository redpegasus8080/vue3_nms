<script setup>

import CDialogCard from "@/components/dialog/CDialogCard.vue";
import {ref} from "vue";
import CInputCompact from "@/components/CInputCompact.vue";
import CBtnDialogClose from "@/components/dialog/CBtnDialogClose.vue";
import CBtnDialogPrimary from "@/components/dialog/CBtnDialogPrimary.vue";
import DataResultChart from "@/views/data-explorer/DataResultChart.vue";
import DataResultTable from "@/views/data-explorer/DataResultTable.vue";
import CBtnIconDeleteCompact from "@/components/CBtnIconDeleteCompact.vue";
import CBtnIconEditCompact from "@/components/CBtnIconEditCompact.vue";
import CCheckboxPrimaryCompact from "@/components/CCheckboxPrimaryCompact.vue";

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
      역활/권한 등록
    </template>
    <template v-slot:body>
      <v-card-item class="dialog-body pb-6">
          <v-row class="align-center ma-0 pa-0 pt-3 pb-5">
            <v-col cols="12" sm="2" class="ma-0 pa-0">
              <v-label class="dialog-form-label">역활/권한명</v-label>
            </v-col>
            <v-col cols="12" sm="10" class="ma-0 pa-0">
              <v-sheet width="100%" class="bg-transparent">
                <CInputCompact></CInputCompact>
              </v-sheet>
            </v-col>
          </v-row>
        <v-table fixed-header density="compact" hover="true" height="300px">
          <thead>
          <tr>
            <th class="text-left">
              기능
            </th>
            <th class="text-left">
              권한
            </th>
          </tr>
          </thead>
          <tbody>
          <tr v-for="i in 10">
            <td>대시보드</td>
            <td>
              <v-sheet class="d-flex bg-transparent">
                <CCheckboxPrimaryCompact label="보기"></CCheckboxPrimaryCompact>
                <CCheckboxPrimaryCompact label="편집"></CCheckboxPrimaryCompact>
              </v-sheet>

            </td>
          </tr>
          </tbody>
        </v-table>

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
