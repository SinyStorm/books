import {User} from '../../model';
import AuthService from '@/service/auth.service'

const user = JSON.parse(localStorage.getItem('user'));
const initialState = user
   ? { status: { loggedIn: true }, user }
   : { status: { loggedIn: false }, user: null };


export default {
   namespaced: true,
   state: initialState,
   actions: {
      async login(context, authData) {
         const response = await AuthService.login(authData);
         const user = new User();
         user.login = response.login;
         user.role = response.authorities[0]?.authority;
         context.commit('auth_login', user)
      },
      async logout({dispatch, commit}) {
         await AuthService.logout();
         commit('auth_logout');
         await dispatch('clearUser', null, { root: true })
      }
   },
   mutations: {
      auth_login: (state, user) => {
         state.status.loggedIn = true;
         state.user = user;
         localStorage.setItem('user', JSON.stringify(user));
      },
      auth_logout: (state) => {
         state.status.loggedIn = false;
         state.user = null;
         localStorage.removeItem('user');

      }
   }
};
