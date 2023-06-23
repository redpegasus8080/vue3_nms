<script setup>
import { getCurrentInstance, computed, ref, watch, watchEffect } from "vue";

const { proxy } = getCurrentInstance();

</script>

<template>
  <VCard elevation="0" rounded="0">
    <v-card-text class="pb-0">
      <div class="d-sm-flex align-center">
        <div>
          <h3 class="title mb-1">시설현황</h3>
          <h5 class="title-sub">2023-05-18 18:20</h5>
        </div>
      </div>
    </v-card-text>
    <v-card-text>
      <v-row>
        <v-col cols="3" class="pr-4">
          <v-card class="total-box" elevation="10">
            <v-card-text class="pa-3">
              <h5 class="text-h5 text-white">Total</h5>
              <div class="w-100vh d-flex justify-center py-5 pb-3">
                <span class="text-white" style="font-size: 2.500rem" >6</span>
              </div>
            </v-card-text>
          </v-card>
        </v-col>
        <v-col cols="3" class="pl-0 pr-4">
          <v-card class="normal-box" elevation="10">
            <v-card-text class="pa-3">
              <h5 class="text-h5 text-white">Normal</h5>
              <div class="w-100vh d-flex justify-center py-5 pb-3">
                <span class="text-white" style="font-size: 2.500rem" >6</span>
              </div>
            </v-card-text>
          </v-card>
        </v-col>
        <v-col cols="3" class="pl-0 pr-4">
          <v-card class="major-box" elevation="10">
            <v-card-text class="pa-3">
              <h5 class="text-h5 text-white">Major</h5>
              <div class="w-100vh d-flex justify-center py-5 pb-3">
                <span class="text-white" style="font-size: 2.500rem" >6</span>
              </div>
            </v-card-text>
          </v-card>
        </v-col>
        <v-col cols="3" class="pl-0 pr-4">
          <v-card class="critical-box" elevation="10">
            <v-card-text class="pa-3">
              <h5 class="text-h5 text-white">Critical</h5>
              <div class="w-100vh d-flex justify-center py-5 pb-3">
                <span class="text-white" style="font-size: 2.500rem" >6</span>
              </div>
            </v-card-text>
          </v-card>
        </v-col>
      </v-row>
    </v-card-text>
  </VCard>
</template>

<style scoped lang="scss">

</style>
