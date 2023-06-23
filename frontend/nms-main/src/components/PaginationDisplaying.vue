<script setup>
import {ref} from "vue";

const props = defineProps({
  firstNum: String,
  lastNum: String,
  totalNum: String,
});
const firstNum = ref(props.firstNum);
const lastNum = ref(props.lastNum);
const totalNum = ref(props.totalNum);
</script>
<template>
  <span style="font-size: 0.875rem">Displaying {{ firstNum }} - {{ lastNum }} of {{ totalNum }}</span>
</template>

