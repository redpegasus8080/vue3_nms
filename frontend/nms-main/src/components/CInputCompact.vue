<script setup>

</script>

<template>
  <v-text-field
    solo
    class="input-compact pt-0 pb-0 ma-0 bg-white"
    variant="outlined"
    single-line
    hide-details
    density="compact"
    v-bind="$attrs"
  >
  <slot></slot>
  </v-text-field>
</template>

<style scoped lang="scss">

</style>
