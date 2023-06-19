<script setup>
import AnalyticsDatatable from "@/views/dashboards/analytics/AnalyticsDatatable.vue";
</script>

<template>
  <div>
    <p class="text-2xl mb-6">
      장비 정보 관리 화면
    </p>

  </div>

  <VRow>
    <!-- dark -->
    <VCol cols="12">
      <AnalyticsDatatable />
    </VCol>
  </VRow>
</template>
