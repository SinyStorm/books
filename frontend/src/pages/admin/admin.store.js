import UserService from '@/service/user.service'

export default {
   namespaced: true,
   state: {
      addedUser: {
         login: '',
         password: ''
      }
   },
   actions: {
      addUser({ commit }, user) {
         return UserService.addUser(user).then(
            user => {
               return Promise.resolve(user)
            },
            error => Promise.reject(error)
         );
      }
   },
   mutations: {
      user(state, user) {
         state.user = user;
      }
   }
};