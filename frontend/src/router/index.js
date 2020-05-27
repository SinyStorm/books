import Vue from 'vue'
import VueRouter from 'vue-router'
import store from '@/store'
import Order from '../pages/order/Order'

Vue.use(VueRouter);

const routes = [
  {
    path: '/',
    redirect: '/order'
  },
  {
    path: '/order/:id?',
    name: 'order',
    nav: true,
    component: Order
  },
  {
    path: '/shipping',
    name: 'shipping',
    nav: true,
    meta: {
      public: true,
    },
    component: () => import(/* webpackChunkName: "shipping" */ '../pages/shipping/Shipping')
  },
  {
    path: '/contacts',
    name: 'contacts',
    nav: true,
    meta: {
      public: true,
    },
    component: () => import(/* webpackChunkName: "contacts" */ '../pages/contacts/Contacts')
  },
  {
    path: '/login',
    name: 'login',
    meta: {
      public: true,
    },
    component: () => import(/* webpackChunkName: "auth" */ '../pages/auth/Login')
  },
  {
    path: '/cart',
    name: 'cart',
    nav: true,
    component: () => import(/* webpackChunkName: "cart" */ '../pages/cart/Cart')
  },
  {
    path: '/admin',
    name: 'admin',
    meta: {
      admin: true,
    },
    component: () => import(/* webpackChunkName: "admin" */ '../pages/admin/Admin')
  },

  {
    path: '*',
    component: () => import(/* webpackChunkName: "404" */ '../pages/util/404')
  }
];

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
});

router.beforeEach((to, from, next) => {
  if (!to.meta.public && !store.state.auth.status.loggedIn) next({ name: 'login' });
  else if (to.name === 'login' && store.state.auth.status.loggedIn) next({ path: '/' });
  else if (to.meta.admin && store.state.auth.user?.role !== 'ADMIN') next({ path: '/' });
  else next()
});

export default router
