<script setup>
import { ref, shallowRef } from 'vue';

import sidebarItems from './sidebarItem.js';

import NavGroup from './NavGroup/index.vue';
import NavItem from './NavItem/index.vue';
import NavCollapse from './NavCollapse/NavCollapse.vue';
// import Logo from '../logo/Logo.vue';
import imageFile from '../../../assets/logo.png';

const sidebarMenu = shallowRef(sidebarItems);
// const sidebarMenu = shallowRef();

</script>

<template>
  <v-navigation-drawer  permanent
                        location="left">

    <!-- ---------------------------------------------- -->
    <!---Navigation -->
    <!-- ---------------------------------------------- -->
    <perfect-scrollbar class="scrollnavbar">
      <div class="profile">
        <div class="profile-pic profile-pic py-7 px-3">
          <v-avatar style="width:130px;height:45px;"> <!-- 45 -->
            <img :src="imageFile" width="100" alt="Julia" /> <!-- width="50"  -->
          </v-avatar>
        </div>
        <div class="profile-name d-flex align-center px-3">
          <h3 class="text-white font-weight-medium">(주)모비젠</h3>
          <div class="ml-auto profile-logout">
            <v-btn variant="text" icon rounded="md" color="white">
              <PowerIcon size="22"/>
              <v-tooltip activator="parent" location="top">Logout</v-tooltip>
            </v-btn>
          </div>
        </div>
      </div>
      <v-list class="py-3 px-0">
        <!---Menu Loop -->
        <template v-for="(item, i) in sidebarMenu">
          <!---Item Sub Header -->
          <NavGroup :item="item" v-if="item.header" :key="item.title" />
          <!---If Has Child -->
          <NavCollapse class="leftPadding" :item="item" :level="0" v-else-if="item.children" />
          <!---Single Item-->
          <NavItem :item="item" v-else class="leftPadding" />
          <!---End Single Item-->
        </template>
      </v-list>
    </perfect-scrollbar>
  </v-navigation-drawer>
</template>
