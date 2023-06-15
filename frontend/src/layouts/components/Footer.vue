<template>
  <div class="w-100 h-100 d-flex align-center justify-space-between">
    <!-- 👉 Footer: left content -->
    <span class="d-flex align-center">
      &copy;
      {{ new Date().getFullYear() }}
      Made With
      By <a
        href="https://mobigen.atlassian.net/wiki/spaces/cloudsolution/pages/541655046/ONEVision+NMS+Solution"
        target="_blank"
        rel="noopener noreferrer"
        class="text-primary ms-1"
      >클라우드솔루션팀</a>
    </span>
    <!-- 👉 Footer: right content -->
    <span class="d-md-flex gap-x-4 text-primary d-none">
      <!-- <a
        href="https://themeselection.com/license/"
        target="noopener noreferrer"
      >License</a>
      <a
        href="https://themeselection.com/"
        target="noopener noreferrer"
      >More Themes</a>
      <a
        href="https://demos.themeselection.com/materio-vuetify-vuejs-admin-template/documentation/"
        target="noopener noreferrer"
      >Documentation</a> -->
      <a
        href="http://www.mobigen.com/"
        target="noopener noreferrer"
      >Mobigen</a>
    </span>
  </div>
</template>
<script setup lang="ts">
</script>
