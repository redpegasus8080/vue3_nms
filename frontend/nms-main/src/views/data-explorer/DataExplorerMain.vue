<script setup>
import PageHeader from "@/components/PageHeader.vue";
import DataResultList from "@/views/data-explorer/DataResultView.vue";

import VueDatePicker from '@vuepic/vue-datepicker';
import '@vuepic/vue-datepicker/dist/main.css';
import {ref} from "vue";

const date = ref();
</script>

<template>
  <PageHeader title="Data Explorer" :path-list="['Home','데이터 탐색기']">
    <template v-slot:button-area>
      <CBtnWhite append-icon="mdi-refresh">새로고침</CBtnWhite>
    </template>
  </PageHeader>
  <v-sheet class="data-explorer pt-3 bg-transparent">
  <v-row class="h-100vh">
    <v-col cols="3" class="pr-0 pt-0">
      <VCard elevation="0" rounded="0" class="bg-transparent">
        <v-card-text class="pb-0">
          <h3 class="title mb-3">Options</h3>
        </v-card-text>
        <v-divider></v-divider>

        <v-card-text class="pb-0">
          <v-row class="align-center mb-3">
            <v-col cols="12" sm="3" class="pb-sm-3 pb-0">
              <v-label>데이터 형식</v-label>
            </v-col>
            <v-col cols="12" sm="9">
              <v-sheet width="100%" class="pr-1 bg-transparent">
                <CSelectCompact :items="['원본', '집계']"></CSelectCompact>
              </v-sheet>
            </v-col>
          </v-row>
          <v-row class="align-center mb-3">
            <v-col cols="12" sm="3" class="pb-sm-3 pb-0">
              <v-label>조회기간</v-label>
            </v-col>
            <v-col cols="12" sm="9" class="group-form">
              <v-text-field
                density="compact"
                placeholder="시작일자"
                type="date"
                variant="outlined"
                hide-details
              ></v-text-field>
              <v-text-field
                density="compact"
                placeholder="종료일자"
                type="date"
                variant="outlined"
                hide-details
              ></v-text-field>
              <VueDatePicker :auto-position="false" v-model="date" style="z-index: 1999999"></VueDatePicker>
            </v-col>
          </v-row>
        </v-card-text>


        <v-card-text class="pb-0">
          <v-row class="align-center mb-3">
            <v-col cols="12" sm="3" class="pb-sm-3 pb-0">
              <v-label class=" font-weight-medium">Name</v-label>
            </v-col>
            <v-col cols="12" sm="9">
              <v-text-field color="primary" variant="outlined" type="text" placeholder="John Deo" hide-details />
            </v-col>
          </v-row>
        </v-card-text>
        <v-card-item>
          <CBtnPrimary append-icon="mdi-plus">장치 추가</CBtnPrimary>
          <v-card elevation="0" rounded="0" class="bg-surface border-0 overflow-y-auto" max-height="350" >
            <v-card-item class="py-0 pl-2 pb-5" v-for="i in 3">
              <v-row class="py-0">
                <v-col cols="12" class="pa-6 py-3 pb-0">
                  <h5 class="text-h5 pt-3">장치 아이디</h5>
                  <h6 class="text-subtitle-1 text-13 py-4 pt-0 textSecondary">
                    장치 이름
                  </h6>
                  <v-row class="align-center mb-3">
                    <v-col cols="12" sm="3" class="py-0">
                      <v-label class="py-0">Unit</v-label>
                    </v-col>
                    <v-col cols="12" sm="9" class="py-0">
                      <v-sheet width="100%" class="py-0 bg-transparent">
                        <CSelectCompact :items="['원본', '집계']"></CSelectCompact>
                      </v-sheet>
                    </v-col>
                  </v-row>
                  <v-row class="align-center mb-3">
                    <v-col cols="12" sm="3" class="py-0">
                      <v-label>Chart</v-label>
                    </v-col>
                    <v-col cols="12" sm="9" class="py-0">
                      <v-sheet width="100%" class="py-0 bg-transparent">
                        <CSelectCompact :items="['Bar', 'Line']"></CSelectCompact>
                      </v-sheet>
                    </v-col>
                  </v-row>
                </v-col>
              </v-row>
              <v-divider class="mt-3"></v-divider>
            </v-card-item>
          </v-card>

        </v-card-item>

      </VCard>


    </v-col>
    <v-col cols="9" class="py-0 pl-0">
      <DataResultList></DataResultList>
    </v-col>
  </v-row>
  </v-sheet>
</template>

<style scoped lang="scss">

</style>
