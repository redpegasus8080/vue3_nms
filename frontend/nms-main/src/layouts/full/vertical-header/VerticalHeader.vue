<script setup lang="ts">
import {ref, watch, computed} from 'vue';
import {HomeIcon, LanguageIcon, SearchIcon, Menu2Icon, BellFilledIcon, ShoppingCartIcon} from 'vue-tabler-icons';
import Logo from '../logo/Logo.vue';
// import LogoIcon from '../logo/LogoIcon.vue'

// const showSearch = ref(false);
// const appsdrawer = ref(false);


</script>

<template>
  <v-app-bar elevation="0" height="46" color="#161616" id="top" class="v-topbar shadow-none layoutHeader">
    <v-btn
      class="hidden-md-and-down "
      icon

    >
      <Menu2Icon size="25"/>
    </v-btn>
    <div class="d-sm-flex d-none">
      <Logo/>
    </div>
    <!--    <div class="pt-2 pr-2 d-sm-none d-flex">-->
    <!--            <LogoIcon />-->
    <!--    </div>-->

    <!--    <v-btn class="hidden-lg-and-up" icon variant="text" size="small">-->
    <!--      <Menu2Icon size="25"/>-->
    <!--    </v-btn>-->

    <!-- ---------------------------------------------- -->
    <!-- Search part -->
    <!-- ---------------------------------------------- -->

    <!--            <Searchbar />-->


    <!---/Search part -->

    <!-- ---------------------------------------------- -->
    <!-- Mega menu -->
    <!-- ---------------------------------------------- -->
    <!-- <div class="hidden-md-and-down">
        <Navigations />
    </div> -->
    <v-spacer/>
    <!-- ---------------------------------------------- -->
    <!---right part -->
    <!-- ---------------------------------------------- -->
    <!-- ---------------------------------------------- -->
    <!-- translate -->
    <!-- ---------------------------------------------- -->

    <!--        <LanguageDD />-->

    <!-- ---------------------------------------------- -->
    <!-- ShoppingCart -->
    <!-- ---------------------------------------------- -->
    <!--        <v-btn icon variant="text" color="primary" to="/ecommerce/checkout">-->
    <!--            <v-badge  color="error" >-->
    <!--                &lt;!&ndash; <ShoppingCartIcon stroke-width="1.5" size="22" /> &ndash;&gt;-->
    <!--                <v-icon size="22">mdi-cart</v-icon>-->
    <!--            </v-badge>-->
    <!--        </v-btn>-->


    <!-- ---------------------------------------------- -->
    <!-- Notification -->
    <!-- ---------------------------------------------- -->
    <!--        <NotificationDD />-->
    <!-- ---------------------------------------------- -->
    <!-- User Profile -->
    <!-- ---------------------------------------------- -->
    <div class="ml-2">
      <v-btn
        icon
      >
        <BellFilledIcon size="25"/>
      </v-btn>

    </div>
    <div class="ml-2">
      <v-btn
        append-icon="mdi-menu-down"
      >
        <span>관리자</span>
      </v-btn>

      <!--      <v-icon icon="mdi-menu-down"></v-icon>-->
    </div>
  </v-app-bar>

  <!-- ---------------------------------------------- -->
  <!-- Right Sidebar -->
  <!-- ---------------------------------------------- -->
  <!--    <v-navigation-drawer v-model="appsdrawer" location="right" temporary>-->
  <!--        <RightMobileSidebar />-->
  <!--    </v-navigation-drawer>-->
</template>
