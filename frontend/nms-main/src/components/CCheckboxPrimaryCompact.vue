<script setup>

</script>

<template>
  <v-checkbox density="compact" hide-details class="checkbox-primary-compact bg-transparent pa-0 ma-0" label="" v-bind="$attrs"></v-checkbox>
</template>

<style scoped lang="scss">
.checkbox-primary-compact{
  --v-input-control-height: 28px;
  .v-label{
    height: 28px;
  }
  .v-selection-control .v-selection-control--density-compact .v-checkbox-btn{
    height: 28px;
  }

}

</style>
