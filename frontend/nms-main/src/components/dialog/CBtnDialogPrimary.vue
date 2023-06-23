<script setup>

</script>

<template>
  <v-btn
    color="primary"
    class="dialog-action-btn bg-primary"
    width="100%"
    height="64"
    rounded="0"
    block=""
    v-bind="$attrs">
    <slot></slot>
    <template v-slot:append>
      <v-icon size="22" icon="mdi-check"></v-icon>
    </template>
  </v-btn>
</template>

<style scoped lang="scss">

</style>
