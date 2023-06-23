<script setup>
import {getCurrentInstance, computed, ref, watch, watchEffect} from "vue";

const {proxy} = getCurrentInstance();
const cardHeight = computed(() => {
  return proxy.$vuetify.display.height - 400;
});

const tab = ref('one');
</script>

<template>
  <VCard elevation="0"  rounded="0">
    <v-card-text class="pb-0">
      <div class="d-sm-flex align-center">
        <div>
          <h3 class="title mb-1">장치현황</h3>
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
                <span class="text-white" style="font-size: 2.500rem">6</span>
              </div>
            </v-card-text>
          </v-card>
        </v-col>
        <v-col cols="3" class="pl-0 pr-4">
          <v-card class="normal-box" elevation="10">
            <v-card-text class="pa-3">
              <h5 class="text-h5 text-white">Normal</h5>
              <div class="w-100vh d-flex justify-center py-5 pb-3">
                <span class="text-white" style="font-size: 2.500rem">6</span>
              </div>
            </v-card-text>
          </v-card>
        </v-col>
        <v-col cols="3" class="pl-0 pr-4">
          <v-card class="major-box" elevation="10">
            <v-card-text class="pa-3">
              <h5 class="text-h5 text-white">Major</h5>
              <div class="w-100vh d-flex justify-center py-5 pb-3">
                <span class="text-white" style="font-size: 2.500rem">6</span>
              </div>
            </v-card-text>
          </v-card>
        </v-col>
        <v-col cols="3" class="pl-0 pr-4">
          <v-card class="critical-box" elevation="10">
            <v-card-text class="pa-3">
              <h5 class="text-h5 text-white">Critical</h5>
              <div class="w-100vh d-flex justify-center py-5 pb-3">
                <span class="text-white" style="font-size: 2.500rem">6</span>
              </div>
            </v-card-text>
          </v-card>
        </v-col>
      </v-row>
    </v-card-text>
    <v-card-text class="pb-0">
      <v-tabs v-model="tab" density="compact">
        <v-tab value="one" class="text-capitalize">Major</v-tab>
        <v-tab value="two" class="text-capitalize">Critical</v-tab>
      </v-tabs>
      <v-window v-model="tab">
        <v-window-item value="one">
          <v-table class="topics pt-1" density="compact" hover="true" height="200px">
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
        <v-window-item value="two">
          <v-table density="compact" hover="true" height="200px">
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
      </v-window>


    </v-card-text>


  </VCard>
</template>

<style scoped lang="scss">

</style>
