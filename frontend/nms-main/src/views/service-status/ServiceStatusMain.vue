<script setup>
import PageHeader from "@/components/PageHeader.vue";
import DeviceStatus from "@/views/service-status/DeviceStatus.vue";
import EventTimeline from "@/views/service-status/EventTimeline.vue";
import ThingStatus from "@/views/service-status/ThingStatus.vue";
</script>

<template>
  <PageHeader title="Service Status" :path-list="['Home','서비스 현황']">
    <template v-slot:button-area>
      <CBtnWhite append-icon="mdi-refresh">새로고침</CBtnWhite>
    </template>
  </PageHeader>

  <v-row class="px-3 py-5 h-100vh service-status">
    <v-col cols="7">
      <v-row>
        <v-col cols="12">
          <ThingStatus></ThingStatus>
        </v-col>
        <v-col cols="12">
          <DeviceStatus></DeviceStatus>
        </v-col>
      </v-row>
    </v-col>
    <v-col cols="5">
      <EventTimeline></EventTimeline>
    </v-col>
  </v-row>

</template>

<style scoped lang="scss">

</style>
