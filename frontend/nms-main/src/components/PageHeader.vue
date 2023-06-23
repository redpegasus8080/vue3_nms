<script setup>
import BaseBreadcrumb from "@/components/shared/BaseBreadcrumb.vue";
import {ref} from "vue";

// const page = ref({title: "카탈로그 에디터"});
// const breadcrumbs = ref([
//   {
//     title: "카탈로그 관리",
//     disabled: false
//   },
//   {
//     title: "카탈로그 에디터",
//     disabled: true
//   },
// ])

const props = defineProps({
  title: String,
  pathList: Array,
});

const title = ref(props.title);
const breadcrumbs = ref([]);
if (props.pathList){
  for(let i=0;i<props.pathList.length;i++){
    let dis = true;
    if (i >= props.pathList.length-1){
      dis = false;
    }
    breadcrumbs.value.push({
      title: props.pathList[i],
      disabled: dis
    });
  }
}

</script>

<template>
  <v-card elevation="0" class="border-0 rounded-0 p-0 m-0">
    <v-card-item class="py-0 px-0">
      <v-row class="pa-0 ma-0">
        <v-col cols="12">
          <BaseBreadcrumb
            :title="title"
            :breadcrumbs="breadcrumbs"
          ></BaseBreadcrumb>
          <v-divider class="mt-2 pt-1"></v-divider>
          <div class="d-flex pt-2 pb-0">
            <slot name="button-area" >
            </slot>
          </div>
        </v-col>
      </v-row>
    </v-card-item>
  </v-card>
</template>

<style scoped lang="scss">

</style>
