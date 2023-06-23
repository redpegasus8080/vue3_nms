<script setup>
import Pagination from '@/components/Pagination.vue';
import PageHeader from "@/components/PageHeader.vue";
import PageTableCard from "@/components/card/PageTableCard.vue";
import CBtnPrimary from "@/components/CBtnPrimary.vue";
import CBtnPrimaryCompact from "@/components/CBtnPrimaryCompact.vue";
import CInputCompact from "@/components/CInputCompact.vue";
import CInputReadonlyCompact from "@/components/CInputReadonlyCompact.vue";

function onSave(){

}

function onServiceOpen(){

}
</script>

<template>
  <PageHeader title="Service Management" :path-list="['서비스 관리','서비스 설정']">
    <template v-slot:button-area>
      <CBtnPrimary append-icon="mdi-check" @click="onSave" >저장하기</CBtnPrimary>
      <CBtnWhite append-icon="mdi-open-in-new" @click="onServiceOpen">서비스 바로가기</CBtnWhite>
      <CBtnWhite append-icon="mdi-refresh">새로고침</CBtnWhite>
    </template>
  </PageHeader>
  <v-row class="px-3 py-5 h-100vh service-status">
    <v-col cols="6">
      <v-row>
        <v-col cols="12">
          <h3 class="title mb-3">서비스 정보</h3>
          <v-divider></v-divider>
          <v-row class="align-center ma-0 pa-0 pt-3">
            <v-col cols="12" sm="2" class="ma-0 pa-0">
              <v-label class="dialog-form-label">Service Id</v-label>
            </v-col>
            <v-col cols="12" sm="10" class="ma-0 pa-0">
              <v-sheet width="100%" class="bg-transparent">
                <CInputCompact></CInputCompact>
              </v-sheet>
            </v-col>
          </v-row>
          <v-row class="align-center ma-0 pa-0 pt-3">
            <v-col cols="12" sm="2" class="ma-0 pa-0">
              <v-label class="dialog-form-label">Service Name</v-label>
            </v-col>
            <v-col cols="12" sm="10" class="ma-0 pa-0">
              <v-sheet width="100%" class="bg-transparent">
                <CInputCompact></CInputCompact>
              </v-sheet>
            </v-col>
          </v-row>
          <v-row class="align-center ma-0 pa-0 pt-3">
            <v-col cols="12" sm="2" class="ma-0 pa-0">
              <v-label class="dialog-form-label">대표이미지</v-label>
            </v-col>
            <v-col cols="12" sm="10" class="ma-0 pa-0">
              <v-sheet width="100%" class="bg-transparent">
                <CInputCompact></CInputCompact>
              </v-sheet>
            </v-col>
          </v-row>
          <v-row class="align-center ma-0 pa-0 pt-3">
            <v-col cols="12" sm="2" class="ma-0 pa-0">
              <v-label class="dialog-form-label">서비스 개요</v-label>
            </v-col>
            <v-col cols="12" sm="10" class="ma-0 pa-0">
              <v-sheet width="100%" class="bg-transparent">
                <CInputCompact></CInputCompact>
              </v-sheet>
            </v-col>
          </v-row>
          <v-row class="align-center ma-0 pa-0 pt-3">
            <v-col cols="12" sm="2" class="ma-0 pa-0">
              <v-label class="dialog-form-label">서비스 주소</v-label>
            </v-col>
            <v-col cols="12" sm="10" class="ma-0 pa-0">
              <v-sheet width="100%" class="bg-transparent">
                <CInputReadonlyCompact></CInputReadonlyCompact>
              </v-sheet>
            </v-col>
          </v-row>

        </v-col>
      </v-row>
    </v-col>
    <v-divider vertical=""></v-divider>
    <v-col cols="6">
      <v-row>
        <v-col cols="12">
          <h3 class="title mb-3">확장 패키지 설정</h3>
          <v-divider></v-divider>
          <v-row class="pt-3">
            <v-col cols="6" v-for="(i) in 3" :key="i">
              <v-card elevation="10" class="overflow-hidden" rounded="0">
                <v-img src="https://picsum.photos/600/600/?random"  cover  class="w-100"  height="250"/>
                <v-card-text class="pa-6">
                  <h5 class="text-h6 title">스마트 쉼터</h5>
                  <p class=" text-subtitle-1 textSecondary mt-3"
                  >With supporting text below as a natural lead-in to additional
                    content.
                  </p>
                  <CBtnPrimary class="mt-4">사용 신청하기</CBtnPrimary>
                  <CBtnPrimary class="ml-3 mt-4">설정하기</CBtnPrimary>
                </v-card-text>
              </v-card>
            </v-col>
          </v-row>

        </v-col>
      </v-row>
    </v-col>
  </v-row>
</template>

<style scoped lang="scss">

</style>
