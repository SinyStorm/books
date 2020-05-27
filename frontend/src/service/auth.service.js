import API from './util';

class AuthService {
   login(user) {
      return API
         .post('/auth/signin', {
            login: user.login,
            password: user.password
         })
         .then(response => response.data)
   }
   logout() {
      return API.post('auth/logout').then(response => response.data, error => { console.log(error.response); return error })
   }
}

export default new AuthService();