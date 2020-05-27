import Vue from 'vue'
import Vuex from 'vuex'
import auth from '../pages/auth/auth.store';
import admin from '../pages/admin/admin.store';
import publisher from './publisher.store';
import book from './book.store';
import region from './region.store';
import UserService from '@/service/user.service'
import actions from './actions';

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    localized: false,
    user: null,
     orders: []
  },
  mutations: {
    user(state, user) {
      state.user = user
    },
     orders(state, orders) {
      state.orders = orders
    },
     setFormed(state, orderId) {
        (state.orders || []).find(item => item.id === orderId).formed = true
     }
  },
  actions: {
    loadUser({commit}, login) {
      return UserService.findUser(login).then(
         user => {
           commit('user', user);
           return Promise.resolve(user)
         },
         error => Promise.reject(error)
      );
    },

    updateUser({commit}, user) {
      return UserService.update(user.login, user.userInfo).then(
         _ => {
           commit('user', user);
           return Promise.resolve(user)
         },
         error => Promise.reject(error)
      )
    },

     clearUser({commit}) {
        commit('user', null)
     },

     ...actions
  },
   getters: {
     phone(state) {
        return state.user?.userInfo?.manager?.phone || '+7 (920) 924-31-17, (4922) 41-09-94'
     }
   },
   modules: {
      auth,
      admin,
      publisher,
      book,
      region
   }
})
