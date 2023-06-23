<script setup>
const props = defineProps({ item: Object });
</script>

<template>
    <v-list-subheader
      class="smallCap mt-5 d-flex align-items-center"
    >
<!--        <span class="mini-icon"><DotsIcon size="16" stroke-width="1.5" class="iconClass" /></span>-->
<!--       <span class="mini-text">{{ props.item.header }}</span>-->
       <h3 class="text-white font-weight-medium">{{ props.item.header }}</h3>
    </v-list-subheader>
</template>
