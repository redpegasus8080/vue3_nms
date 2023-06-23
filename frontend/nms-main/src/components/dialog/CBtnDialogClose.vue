<script setup>

</script>

<template>
  <v-btn
    class="dialog-action-btn bg-secondary text-left"
    variant="text"
    width="100%"
    height="64"
    rounded="0"
    block=""
    v-bind="$attrs">
    <template v-slot:default>
      닫기
    </template>
    <template v-slot:append>
      <v-icon size="22" icon="mdi-close"></v-icon>
    </template>
  </v-btn>
</template>

<style scoped lang="scss">

</style>
