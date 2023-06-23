const MainRoutes = {
  path: '/main',
  meta: {
    requiresAuth: true
  },
  redirect: '/main',
  component: () => import('@/layouts/full/FullLayout.vue'),
  children: [
    {
      path: '/',
      redirect: "/dashboards/analytical",
    },
    {
      name: 'Analytical',
      path: '/dashboards/analytical',
      component: () => import('@/views/dashboards/analytical/Analytical.vue'),
    },
    {
      name: 'Classic',
      path: '/dashboards/classic',
      component: () => import('@/views/dashboards/analytical/Analytical1.vue'),
    },


    {
      name: 'ServiceStatusMain',
      path: '/service-status',
      component: () => import('@/views/service-status/ServiceStatusMain.vue'),
    },
    {
      name: 'DataExplorerMain',
      path: '/data-explorer',
      component: () => import('@/views/data-explorer/DataExplorerMain.vue'),
    },
    {
      name: 'DashboardViewMain',
      path: '/dashboard-view',
      component: () => import('@/views/dashboard-view/DashboardViewMain.vue'),
    },
    {
      name: 'DashboardManageMain',
      path: '/dashboard-manage',
      component: () => import('@/views/dashboard-manage/DashboardManageMain.vue'),
    },
    {
      name: 'ThingManageMain',
      path: '/thing-manage',
      component: () => import('@/views/thing-manage/ThingManageMain.vue'),
    },
    {
      name: 'DeviceManageMain',
      path: '/device-manage',
      component: () => import('@/views/device-manage/DeviceManageMain.vue'),
    },
    {
      name: 'DeviceControlMain',
      path: '/device-control',
      component: () => import('@/views/device-control/DeviceControlMain.vue'),
    },
    {
      name: 'RuleEngineMain',
      path: '/rule-engine',
      component: () => import('@/views/rule-engine/RuleEngineMain.vue'),
    },
    {
      name: 'ServiceEditMain',
      path: '/service-edit',
      component: () => import('@/views/service-edit/ServiceEditMain.vue'),
    },
    {
      name: 'AuthTokenMain',
      path: '/auth-token',
      component: () => import('@/views/auth-token/AuthTokenMain.vue'),
    },
    {
      name: 'ServiceUserMain',
      path: '/service-user',
      component: () => import('@/views/service-user/ServiceUserMain.vue'),
    },
    {
      name: 'ServiceUserGroupMain',
      path: '/service-user-group',
      component: () => import('@/views/service-user-group/ServiceUserGroupMain.vue'),
    },
    {
      name: 'ServiceUserRoleMain',
      path: '/service-user-role',
      component: () => import('@/views/service-user-role/ServiceUserRoleMain.vue'),
    },


  ]
};

export default MainRoutes;
