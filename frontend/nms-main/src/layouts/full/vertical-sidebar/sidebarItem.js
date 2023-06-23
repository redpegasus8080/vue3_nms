export default [
  {header: "Manager"},

  {model:false, icon: "mdi-view-dashboard", title: "인프라 모니터링", to: "",
    children: [
      {icon: "mdi-server", title: "Server 모니터링", to: "",
        children: [
          {icon: "mdi-menu-right", title: "프로세스", to: "/dashboard-view",},
          {icon: "mdi-menu-right", title: "DB Query", to: "/dashboard-manage",},
          {icon: "mdi-menu-right", title: "HTTP Contents", to: "/service-status",},
        ]
      },
      {icon: "mdi-network-outline", title: "Network 모니터링", to: "/data-explorer",
        children: [
          {icon: "mdi-alpha-t-box-outline", title: "Topology Map", to: "/device-manage",
            children: [
              {icon: "mdi-menu-right", title: "장비 및 회선정보", to: "/thing-manage",},
              {icon: "mdi-menu-right", title: "고장알람 정보", to: "",},
              {icon: "mdi-menu-right", title: "Map Edit 기능", to: "",},
            ]
          },
        ]
      },
      {icon: "mdi-database-export-outline", title: "Service 모니터링", to: "",
        children: [
          {icon: "mdi-menu-right", title: "프로세스", to: "/thing-manage",},
          {icon: "mdi-menu-right", title: "DB Query", to: "",},
          {icon: "mdi-menu-right", title: "HTTP Contents", to: "/device-manage",},
        ]
      },
    ]
  },
  {model:false, icon: "mdi-devices", title: "구성관리", to: "",
    children: [
      {icon: "mdi-menu-right", title: "구성관리", to: "/device-control",},
    ]},
  {model:false, icon: "mdi-database-search", title: "수집관리", to: "",
    children: [
      {icon: "mdi-menu-right", title: "수집관리", to: "/rule-engine",},
    ]
  },
  {model:false, icon: "mdi-semantic-web", title: "장애관리", to: "",
    children: [
      {icon: "mdi-menu-right", title: "장애관리", to: "/service-edit",},
    ]
  },
  {model:false, icon: "mdi-television-guide", title: "성능관리", to: "",
    children: [
      {icon: "mdi-menu-right", title: "성능관리", to: "/auth-token",},
    ]
  },
  {model:false, icon: "mdi-alpha-p-box-outline", title: "포털", to: "",
    children: [
      {icon: "mdi-smart-card-outline", title: "회원관리", to: "/service-user",},
      {icon: "mdi-shape-plus-outline", title: "메뉴관리", to: "/service-user-group",},
      {icon: "mdi-pencil-ruler-outline", title: "권한관리", to: "/service-user-role",},
      {icon: "mdi-bulletin-board", title: "게시판관리", to: "",},
      {icon: "mdi-message-processing", title: "SMS 및 카카오톡 알림 서비스", to: "",},
    ]
  },

  // {
  //   icon: "mdi-television-guide",
  //   title: "서비스 현황",
  //   to: "/service-status",
  // },
  // {
  //   icon: "mdi-database-search",
  //   title: "데이터 탐색기",
  //   to: "/data-explorer"
  // },
  // {
  //   model: false,
  //   icon: "mdi-view-dashboard",
  //   title: "대시보드",
  //   children: [
  //     {
  //       icon: "mdi-menu-right",
  //       title: "대시보드 보기",
  //       to: "/dashboard-view",
  //     },
  //     {
  //       icon: "mdi-menu-right",
  //       title: "대시보드 관리",
  //       to: "/dashboard-manage",
  //     }
  //   ],
  // },
  // {
  //   model: false,
  //   icon: "mdi-devices",
  //   title: "자산 관리",
  //   children: [
  //     {
  //       icon: "mdi-menu-right",
  //       title: "시설 관리",
  //       to: "/thing-manage",
  //     },
  //     {
  //       icon: "mdi-menu-right",
  //       title: "디바이스 관리",
  //       to: "/device-manage",
  //     },
  //     {
  //       icon: "mdi-menu-right",
  //       title: "장비 제어",
  //       to: "/device-control",
  //     },
  //     {
  //       icon: "mdi-menu-right",
  //       title: "규칙 설정",
  //       to: "/rule-engine",
  //     }
  //   ],
  // },
  // {
  //   model: false,
  //   icon: "mdi-semantic-web",
  //   title: "서비스 관리",
  //   children: [
  //     {
  //       icon: "mdi-menu-right",
  //       title: "서비스 설정",
  //       to: "/service-edit",
  //     },
  //     {
  //       icon: "mdi-menu-right",
  //       title: "인증키 관리",
  //       to: "/auth-token",
  //     }
  //   ],
  // },
  // {
  //   model: false,
  //   icon: "mdi-smart-card-outline",
  //   title: "사용자 관리",
  //   children: [
  //     {
  //       icon: "mdi-menu-right",
  //       title: "서비스 사용자",
  //       to: "/service-user",
  //     },
  //     {
  //       icon: "mdi-menu-right",
  //       title: "사용자그룹",
  //       to: "/service-user-group",
  //     },
  //     {
  //       icon: "mdi-menu-right",
  //       title: "역활/권한",
  //       to: "/service-user-role",
  //     }
  //   ],
  // },
];
