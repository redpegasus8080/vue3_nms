<script setup>
import Pagination from '@/components/Pagination.vue';
import PageHeader from "@/components/PageHeader.vue";
import PageTableCard from "@/components/card/PageTableCard.vue";
import CBtnPrimary from "@/components/CBtnPrimary.vue";
import AuthTokenAddPopup from "@/views/auth-token/AuthTokenAddPopup.vue";
import {ref} from "vue";
import CBtnIconViewCompact from "@/components/CBtnIconViewCompact.vue";
import CBtnIconDeleteCompact from "@/components/CBtnIconDeleteCompact.vue";
import CBtnIconEditCompact from "@/components/CBtnIconEditCompact.vue";
import CInputReadonlyCompact from "@/components/CInputReadonlyCompact.vue";

const authTokenAddPopup = ref();

function onTokenAdd(){
  authTokenAddPopup.value.open();
}

function onDetailOpen(){

}

const dataList = ref([]);
for (let i=0;i<10;i++){
  dataList.value.push({
    detailShow: false,
    name: i + ' 토큰'
  });
}

</script>

<template>
  <PageHeader title="Authentication Token Management" :path-list="['서비스 관리','인증키 관리']">
    <template v-slot:button-area>
      <CBtnPrimary append-icon="mdi-plus" @click="onTokenAdd" >인증키 등록</CBtnPrimary>
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
    <template v-slot:body-area>
      <v-row justify="center">
        <v-col v-for="(item, index) in dataList"  cols="8" class="pa-5 pb-0 d-flex ">
          <v-card >
            <v-card-title>
              {{ item.name }}
            </v-card-title>
            <v-card-actions>
              <v-spacer></v-spacer>
              <CBtnIconEditCompact density="default"></CBtnIconEditCompact>
              <CBtnIconDeleteCompact density="default"></CBtnIconDeleteCompact>
              <v-btn :icon="item.detailShow ? 'mdi-chevron-up' : 'mdi-chevron-down'" @click="item.detailShow = !item.detailShow"></v-btn>
            </v-card-actions>
            <v-expand-transition>
              <div v-show="item.detailShow">
                <v-divider></v-divider>
                <v-card-text>
                  <v-row class="align-center ma-0 pa-0 pt-3">
                    <v-col cols="12" sm="2" class="ma-0 pa-0">
                      <v-label class="dialog-form-label">Token Key</v-label>
                    </v-col>
                    <v-col cols="12" sm="10" class="ma-0 pa-0 d-flex">
                      <v-btn flat="" density="compact" icon="mdi-content-copy"></v-btn>
                      <v-sheet width="100%" class="bg-transparent pl-3">
                        <CInputReadonlyCompact></CInputReadonlyCompact>
                      </v-sheet>
                    </v-col>
                  </v-row>
                  <v-row class="align-center ma-0 pa-0 pt-3">
                    <v-col cols="12" sm="2" class="ma-0 pa-0">
                      <v-label class="dialog-form-label">설명</v-label>
                    </v-col>
                    <v-col cols="12" sm="10" class="ma-0 pa-0">
                      <v-sheet width="100%" class="bg-transparent">
                        <CInputReadonlyCompact></CInputReadonlyCompact>
                      </v-sheet>
                    </v-col>
                  </v-row>

                </v-card-text>
              </div>
            </v-expand-transition>
          </v-card>
        </v-col>
      </v-row>
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
  <AuthTokenAddPopup ref="authTokenAddPopup"></AuthTokenAddPopup>
</template>

<style scoped lang="scss">

</style>
