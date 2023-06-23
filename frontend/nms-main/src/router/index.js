// Composables
// import { createRouter, createWebHistory } from 'vue-router'
//
// const routes = [
//   {
//     path: '/',
//     component: () => import('@/layouts/default/Default.vue'),
//     children: [
//       {
//         path: '',
//         name: 'Home',
//         // route level code-splitting
//         // this generates a separate chunk (about.[hash].js) for this route
//         // which is lazy-loaded when the route is visited.
//         component: () => import(/* webpackChunkName: "home" */ '@/views/Home.vue'),
//       },
//     ],
//   },
// ]
//
// const router = createRouter({
//   history: createWebHistory(process.env.BASE_URL),
//   routes,
// })

import { createRouter, createWebHistory } from 'vue-router';
import MainRoutes from './MainRoutes';
// import AuthRoutes from './AuthRoutes.ts_';
// import { useAuthStore } from '@/stores/auth';

export const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/:pathMatch(.*)*',
      component: () => import('@/views/authentication/Error.vue')
    },
    {
      name: 'ServiceChoiceMain',
      path: '/service-choice',
      component: () => import('@/views/service-choice/ServiceChoiceMain.vue'),
    },
    MainRoutes,
    // AuthRoutes
  ]
});

// router.beforeEach(async (to, from, next) => {
//   // redirect to login page if not logged in and trying to access a restricted page
//   const publicPages = ['/auth/login'];
//   const authRequired = !publicPages.includes(to.path);
//   const auth = useAuthStore();
//
//   if (to.matched.some((record) => record.meta.requiresAuth)) {
//     if (authRequired && !auth.user) {
//       auth.returnUrl = to.fullPath;
//       return next('/auth/login');
//     } else next();
//   } else {
//     next();
//   }
// });

export default router
