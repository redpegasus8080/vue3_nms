<script setup>

import CDialogCard from "@/components/dialog/CDialogCard.vue";
import {ref} from "vue";
import CInputCompact from "@/components/CInputCompact.vue";
import CBtnDialogClose from "@/components/dialog/CBtnDialogClose.vue";
import CBtnDialogPrimary from "@/components/dialog/CBtnDialogPrimary.vue";
import DataResultChart from "@/views/data-explorer/DataResultChart.vue";
import DataResultTable from "@/views/data-explorer/DataResultTable.vue";

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
      사용자그룹 등록
    </template>
    <template v-slot:body>
      <v-card-item class="dialog-body pb-6">

          <v-row class="align-center ma-0 pa-0 pt-6">
            <v-col cols="12" sm="2" class="ma-0 pa-0">
              <v-label class="dialog-form-label">그룹명</v-label>
            </v-col>
            <v-col cols="12" sm="10" class="ma-0 pa-0">
              <v-sheet width="100%" class="bg-transparent">
                <CInputCompact></CInputCompact>
              </v-sheet>
            </v-col>
          </v-row>
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
