<script setup>
import { RouterLink } from 'vue-router';
import {HomeIcon} from "vue-tabler-icons";
// import Darklogo from '@/assets/images/logos/logolight.svg';
</script>
<template>
  <div class="logo">
    <RouterLink to="/">
<!--      <img :src="Darklogo" alt="home" />-->

      <span style="font-size: 28px">ONEVision NMS</span>
    </RouterLink>
  </div>
</template>
