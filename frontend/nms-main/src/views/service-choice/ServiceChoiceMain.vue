<script setup>
import PageHeader from "@/components/PageHeader.vue";
import VerticalSidebarVue from "@/layouts/full/vertical-sidebar/VerticalSidebar.vue";
import VerticalHeaderVue from "@/layouts/full/vertical-header/VerticalHeader.vue";
import {RouterView} from "vue-router";
import BaseBreadcrumb from "@/components/shared/BaseBreadcrumb.vue";
import CBtnPrimary from "@/components/CBtnPrimary.vue";

</script>

<template>
  <v-app>
    <VerticalHeaderVue/>

    <div class=" border-bottom bg-surface position-relative">
      <v-main>
        <v-container fluid="" class="page-wrapper pb-sm-15 pb-10 py-0 px-0 rounded-0">
          <v-card elevation="0" >
            <v-card-item class="py-0 px-0">
              <v-card elevation="0" class="maxWidth border-0 rounded-0 p-0 m-0 pt-5">
                <v-card-item class="py-0 px-0 ">
                  <BaseBreadcrumb
                    title="서비스 선택하기"
                  ></BaseBreadcrumb>
                </v-card-item>
              </v-card>
            </v-card-item>
            <v-divider class="mt-2 pt-1"></v-divider>
            <v-card-item class="px-0">
              <v-card elevation="0" class="maxWidth border-0 rounded-0 p-0 m-0">
                <v-card-item class="py-0 px-0 ">
                  <CBtnPrimary>서비스 등록</CBtnPrimary>
                </v-card-item>
              </v-card>
            </v-card-item>
          </v-card>
          <v-card elevation="0" class="pt-10 bg-transparent" >
            <v-card-item class="py-0 px-0 bg-transparent">
              <v-card elevation="0" class="maxWidth border-0 rounded-0 p-0 m-0 bg-transparent">
                <v-card-item class="py-0 px-0 ">
                  <v-row>
                    <v-col cols="3" md="3" sm="12" v-for="(i) in 4" :key="i">
                      <v-card elevation="10" class="overflow-hidden">
                        <v-img src="https://picsum.photos/600/600/?random"  cover  class="w-100"  height="250"/>
                        <v-card-text class="pa-6">
                          <h5 class="text-h6 title">Special title treatment</h5>
                          <p class=" text-subtitle-1 textSecondary mt-3"
                          >With supporting text below as a natural lead-in to additional
                            content.
                          </p>
                          <v-btn class="mt-4" color="primary">선택하기</v-btn>
                        </v-card-text>
                      </v-card>
                    </v-col>
                  </v-row>
                </v-card-item>
              </v-card>
            </v-card-item>
          </v-card>
        </v-container>


      </v-main>

    </div>
  </v-app>

</template>

<style scoped lang="scss">

</style>
