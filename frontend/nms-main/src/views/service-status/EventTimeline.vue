<script setup>
import { getCurrentInstance, computed, ref, watch, watchEffect } from "vue";

const { proxy } = getCurrentInstance();
const cardHeight = computed(() => {
  return proxy.$vuetify.display.height - 256;
});
</script>

<template>
  <VCard elevation="0" :height="cardHeight" rounded="0">
    <v-card-text>
      <div class="d-sm-flex align-center">
        <div>
          <h3 class="title mb-1">이벤트 타임라인</h3>
        </div>
      </div>
    </v-card-text>
    <v-card-text>
      <v-timeline align="start" side="end">
        <v-timeline-item size="small">
          <template v-slot:icon>
            <v-avatar image="https://i.pravatar.cc/64"></v-avatar>
          </template>
          <template v-slot:opposite>
            <span class="headline">2023-06-05 10시</span>
          </template>
          <v-card class="elevation-2">
            <v-card-title class="text-h5">
              Lorem ipsum
            </v-card-title>
            <v-card-text>Lorem ipsum dolor sit amet, no nam oblique veritus. Commune scaevola imperdiet nec ut, sed euismod convenire principes at. Est et nobis iisque percipit, an vim zril disputando voluptatibus, vix an salutandi sententiae.</v-card-text>
          </v-card>
        </v-timeline-item>
        <v-timeline-item size="small">
          <template v-slot:icon>
            <v-avatar image="https://i.pravatar.cc/64"></v-avatar>
          </template>
          <template v-slot:opposite>
            <span class="headline">9시 30분</span>
          </template>
          <v-card class="elevation-2">
            <v-card-title class="text-h5">
              Lorem ipsum
            </v-card-title>
            <v-card-text>Lorem ipsum dolor sit amet, no nam oblique veritus. Commune scaevola imperdiet nec ut, sed euismod convenire principes at. Est et nobis iisque percipit, an vim zril disputando voluptatibus, vix an salutandi sententiae.</v-card-text>
          </v-card>
        </v-timeline-item>
        <v-timeline-item size="small">
          <template v-slot:icon>
            <v-avatar image="https://i.pravatar.cc/64"></v-avatar>
          </template>
          <template v-slot:opposite>
            <span class="headline">2023-06-05 9시</span>
          </template>
          <v-card class="elevation-2">
            <v-card-title class="text-h5">
              Lorem ipsum
            </v-card-title>
            <v-card-text>Lorem ipsum dolor sit amet, no nam oblique veritus. Commune scaevola imperdiet nec ut, sed euismod convenire principes at. Est et nobis iisque percipit, an vim zril disputando voluptatibus, vix an salutandi sententiae.</v-card-text>
          </v-card>
        </v-timeline-item>

      </v-timeline>
    </v-card-text>
  </VCard>
</template>

<style scoped lang="scss">

</style>
