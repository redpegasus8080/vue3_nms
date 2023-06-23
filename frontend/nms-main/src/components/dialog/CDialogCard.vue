<script setup>

import CInputCompact from "@/components/CInputCompact.vue";
import CBtnDialogClose from "@/components/dialog/CBtnDialogClose.vue";
import CBtnDialogPrimary from "@/components/dialog/CBtnDialogPrimary.vue";
const emit = defineEmits(['onClose'])

function onClose(){
  emit('onClose');
}


</script>

<template>
  <v-dialog class="dialog" v-bind="$attrs" persistent scrollable=""  width="750">
    <v-card rounded="0" flat style="background: #F0F0F0;">
      <v-card-title rounded="0" flat class="bg-black pr-0 pt-0">
        <v-toolbar color="black">
          <v-spacer></v-spacer>
          <v-toolbar-items>
            <v-btn variant="text" @click="onClose">
              <v-icon size="22" icon="mdi-window-close "></v-icon>
            </v-btn>
          </v-toolbar-items>
        </v-toolbar>
        <v-card rounded="0" flat  class="dialog-title bg-black pl-1 pt-11 pb-9">
          <v-card-title>
            <slot name="title-text"></slot>
          </v-card-title>
          <v-card-title v-if="this.$slots['subtitle-text']" class="dialog-subtitle py-0">
            <slot name="subtitle-text"></slot>
          </v-card-title>
        </v-card>
      </v-card-title>
      <v-divider class="dialog-top-divider"></v-divider>
      <v-card-text class="bg-transparent pa-0 ma-0 pb-10"  >
        <slot name="body">
        </slot>
      </v-card-text>
      <v-divider></v-divider>
      <v-card-actions class="bg-transparent pa-0 ma-0" >
        <slot name="action"></slot>
      </v-card-actions>
    </v-card>
  </v-dialog>
</template>

<style scoped lang="scss">

</style>
