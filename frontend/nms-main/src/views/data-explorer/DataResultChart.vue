<script setup>
import {computed, getCurrentInstance, ref} from "vue";
import {useTheme} from 'vuetify';

const {proxy} = getCurrentInstance();
const cardHeight = computed(() => {
  return proxy.$vuetify.display.height - 300;
});

const tab = ref('table');

const theme = useTheme();
const primary = theme.current.value.colors.primary;
const chartOptions = computed(() => {
  return {
    chart: {
      type: 'area',
      fontFamily: `inherit`,
      foreColor: '#adb0bb',
      toolbar: {
        show: false
      },
      sparkline: {
        enabled: true
      },
      group: 'sparklines'
    },
    colors: [primary],
    stroke: {
      curve: 'straight',
      width: 2
    },
    tooltip: {
      theme: 'dark',
      x: {
        format: 'dd/MM/yy HH:mm'
      }
    }
  };
});

const Chart = {
  series: [
    {
      name:'',
      data: [0, 150, 110, 240, 200, 200, 300, 200],
    }
  ]
};

</script>

<template>
  <v-card elevation="0" :height="cardHeight" class="px-3" >
    <apexchart class="mt-4" type="area" height="100%" :options="chartOptions" :series="Chart.series"> </apexchart>
  </v-card>

</template>

<style scoped lang="scss">

</style>
