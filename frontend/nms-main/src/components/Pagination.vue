<template>
  <v-pagination
          v-model="modelValue"
          :length="pageTotalCount"
          rounded="circle"
          :total-visible="pageCount"
          show-first-last-page
          density="compact"
          class="pa-0 ma-0"
      ></v-pagination>
</template>
<script setup>
import {ref, computed, defineProps, defineEmits } from 'vue'
const props = defineProps({
  pageNum: Number,
  pageCount: Number,
  pageRowCount: Number,
  pageTotalCount: Number
});

const emit = defineEmits(['update:pageNum'])

const modelValue = computed({
  get() {
    return props.pageNum;
  },
  set(value) {

    emit("update:pageNum", value);
  },
});

const rowCnt = computed({
  get() {
    return props.pageRowCount;
  },
  set(value) {
    emit("update:pageRowCount", value);
  },
});

</script>
<script>
export default {
  props: {
    pageCount: Number,
    pageNum: Number,
    pageRowCount: Number,
    pageTotalCount: Number
  },
  data: () => ({
    page: 0
  }),
}
</script>
